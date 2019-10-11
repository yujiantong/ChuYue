package com.chuyue.common.exception.user;

import com.chuyue.common.exception.base.BaseException;

/**
 * 用户信息异常类
 * 
 * @author chuyue
 */
public class UserException extends BaseException
{
    private static final long serialVersionUID = 1L;

    public UserException(String code, Object[] args)
    {
        super("user", code, args, null);
    }
}
