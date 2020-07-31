package com.chuyue.web.controller.tool;

import com.chuyue.system.service.DBService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;
import java.util.Map;

/**
 * 封装的执行sql工具
 * 
 * @author chuyue
 */
public class DBUtils
{
	private static final Logger log = LoggerFactory.getLogger(com.chuyue.web.controller.tool.DBUtils.class);

    public static String ChageSql(String sqltext,String[] values)
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
  
}
