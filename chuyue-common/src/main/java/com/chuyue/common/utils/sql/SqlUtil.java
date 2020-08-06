package com.chuyue.common.utils.sql;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.chuyue.common.utils.StringUtils;

/**
 * sql操作工具类
 * 
 * @author chuyue
 */
public class SqlUtil
{
	private static final Logger log = LoggerFactory.getLogger(SqlUtil.class);

	/**
	 * 将传递的参数组装至sqltext中
	 * @param sqltext
	 * @param values
	 * @return
	 */
    public static String ChangeSql(String sqltext,String[] values)
    {
    	
    	try {
			if (values != null)
			{
			  sqltext = sqltext.replace("?", "[?]");
			  for (int i = 0; i < values.length; i++) {
				  sqltext = sqltext.replaceFirst("[?]", values[i]);
			  }
			  sqltext = sqltext.replace("[", "'").replace("]", "'");
			}
			log.info("查询SQL：【"+sqltext+"】");
		} catch (Exception e) {
			log.info("程序异常，请检查SQL语句是否正确：【"+sqltext+"】");
			e.printStackTrace();
		}
        return sqltext;
    }
    /**
     * 仅支持字母、数字、下划线、空格、逗号（支持多个字段排序）
     */
    public static String SQL_PATTERN = "[a-zA-Z0-9_\\ \\,]+";

    /**
     * 检查字符，防止注入绕过
     */
    public static String escapeOrderBySql(String value)
    {
        if (StringUtils.isNotEmpty(value) && !isValidOrderBySql(value))
        {
            return StringUtils.EMPTY;
        }
        return value;
    }

    /**
     * 验证 order by 语法是否符合规范
     */
    public static boolean isValidOrderBySql(String value)
    {
        return value.matches(SQL_PATTERN);
    }
}
