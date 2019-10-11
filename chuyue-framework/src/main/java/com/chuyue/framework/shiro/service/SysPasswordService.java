package com.chuyue.framework.shiro.service;

import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.PostConstruct;
import org.apache.shiro.cache.Cache;
import org.apache.shiro.cache.CacheManager;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import com.chuyue.common.constant.Constants;
import com.chuyue.common.constant.ShiroConstants;
import com.chuyue.common.exception.user.UserPasswordNotMatchException;
import com.chuyue.common.exception.user.UserPasswordRetryLimitExceedException;
import com.chuyue.common.utils.MessageUtils;
import com.chuyue.framework.manager.AsyncManager;
import com.chuyue.framework.manager.factory.AsyncFactory;
import com.chuyue.system.domain.SysUser;

import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import cn.hutool.core.lang.Console;

/**
 * 登录密码方法
 * 
 * @author chuyue
 */
@Component
public class SysPasswordService
{
    public final static String CHUYUE_KEY = "$CHUYUE_KEY_9527$";

    @Autowired
    private CacheManager cacheManager;

    private Cache<String, AtomicInteger> loginRecordCache;

    @Value(value = "${user.password.maxRetryCount}")
    private String maxRetryCount;

    @PostConstruct
    public void init()
    {
        loginRecordCache = cacheManager.getCache(ShiroConstants.LOGINRECORDCACHE);
    }

    public void validate(SysUser user, String password)
    {
        String loginName = user.getLoginName();

        AtomicInteger retryCount = loginRecordCache.get(loginName);

        if (retryCount == null)
        {
            retryCount = new AtomicInteger(0);
            loginRecordCache.put(loginName, retryCount);
        }
        if (retryCount.incrementAndGet() > Integer.valueOf(maxRetryCount).intValue())
        {
            AsyncManager.me().execute(AsyncFactory.recordLogininfor(loginName, Constants.LOGIN_FAIL, MessageUtils.message("user.password.retry.limit.exceed", maxRetryCount)));
            throw new UserPasswordRetryLimitExceedException(Integer.valueOf(maxRetryCount).intValue());
        }

        if (!matches(user, password))
        {
            AsyncManager.me().execute(AsyncFactory.recordLogininfor(loginName, Constants.LOGIN_FAIL, MessageUtils.message("user.password.retry.limit.count", retryCount)));
            loginRecordCache.put(loginName, retryCount);
            throw new UserPasswordNotMatchException();
        }
        else
        {
            clearLoginRecordCache(loginName);
        }
    }

    public boolean matches(SysUser user, String newPassword)
    {
        return user.getPassword().equals(encryptAES(newPassword, CHUYUE_KEY));
    }

    public void clearLoginRecordCache(String username)
    {
        loginRecordCache.remove(username);
    }

    /**
     * MD5加密
     */
    /*public String encryptPassword(String username, String password, String salt)
    {
        return new Md5Hash(username + password + salt).toHex().toString();
    }*/



    /**
     * AES编码
     * @param encode
     * @param key
     * @return
     */
    public static String encryptAES(String encode,String key) {
        try {
            KeyGenerator kgen = KeyGenerator.getInstance("AES");
            SecureRandom secureRandom = SecureRandom.getInstance("SHA1PRNG" );
            secureRandom.setSeed(key.getBytes("UTF-8"));
            kgen.init(128, secureRandom);
            SecretKey secretKey = kgen.generateKey();
            byte[] encoded = secretKey.getEncoded();
            SecretKeySpec keySpec = new SecretKeySpec(encoded, "AES");

            Cipher cipher = Cipher.getInstance("AES");
            cipher.init(Cipher.ENCRYPT_MODE, keySpec);
            return bytesToHexString(cipher.doFinal(encode.getBytes("UTF-8")));
        } catch (Exception e) {
            Console.log("Can not encode the string " + encode + " to AES!", e);
            return null;
        }
    }

    /**
     * AES解码
     * @param decode
     * @param key
     * @return
     */
    public static String decryptAES(String decode,String key) {
        try {
            KeyGenerator kgen = KeyGenerator.getInstance("AES");
            SecureRandom secureRandom = SecureRandom.getInstance("SHA1PRNG" );
            secureRandom.setSeed(key.getBytes("UTF-8"));
            kgen.init(128, secureRandom);
            SecretKey secretKey = kgen.generateKey();
            byte[] encoded = secretKey.getEncoded();
            SecretKeySpec keySpec = new SecretKeySpec(encoded, "AES");

            Cipher cipher = Cipher.getInstance("AES");
            cipher.init(Cipher.DECRYPT_MODE, keySpec);

            return new String(cipher.doFinal(hexStringToBytes(decode)));
        } catch (Exception e) {
            Console.log("Can not decode the AES bytes to string!", e);
            return null;
        }
    }

    /**
     * 二进制Byte[]转十六进制字符串
     * @param bytes
     * @return
     */
    public static String bytesToHexString(byte[] bytes) {
        StringBuilder hexString = new StringBuilder(32);
        for (int i = 0; i < bytes.length; i++) {
            if (Integer.toHexString(0xFF & bytes[i]).length() == 1)
                hexString.append("0").append(Integer.toHexString(0xFF & bytes[i]));
            else
                hexString.append(Integer.toHexString(0xFF & bytes[i]));
        }
        return hexString.toString().toUpperCase();
    }

    /**
     * 十六进制字符串转二进制Byte[]
     * @param hexString
     * @return
     */
    public static byte[] hexStringToBytes(String hexString) {
        hexString = hexString.toUpperCase();
        int len = (hexString.length() / 2);
        byte[] result = new byte[len];

        char[] chars = hexString.toCharArray();
        for (int i = 0; i < len; i++) {
            int pos = i * 2;
            result[i] = (byte) (toByte(chars[pos]) << 4 | toByte(chars[pos + 1]));
        }
        return result;
    }

    /**
     * 字符转Byte
     * @param ch
     * @return
     */
    private static byte toByte(char ch) {
        return  (byte)"0123456789ABCDEF".indexOf(ch);
    }

    public static void main(String[] args) {
        String unserPass1 = SysPasswordService.decryptAES("AFF833A3581ADBE7B0DB07F3E6D0508F", CHUYUE_KEY);
        System.out.println(unserPass1);
        String unserPass2 = SysPasswordService.encryptAES("123456", CHUYUE_KEY);
        System.out.println(unserPass2);
    }

}
