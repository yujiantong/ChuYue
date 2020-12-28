package com.chuyue.quartz.task;

import com.chuyue.common.utils.spring.SpringUtils;
import com.chuyue.system.domain.SysLogininfor;
import com.chuyue.system.service.ISysLogininforService;
import com.chuyue.system.service.impl.SysLogininforServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.chuyue.common.utils.StringUtils;

/**
 * 定时任务调度测试
 * 
 * @author chuyue
 */
@Component("cyTask")
public class CyTask
{
    private static final Logger log = LoggerFactory.getLogger(CyTask.class);
    @Autowired
    private ISysLogininforService inforService;

    public void cyMultipleParams(String s, Boolean b, Long l, Double d, Integer i)
    {
        System.out.println(StringUtils.format("执行多参方法： 字符串类型{}，布尔类型{}，长整型{}，浮点型{}，整形{}", s, b, l, d, i));
    }

    public void cyParams(String params)
    {
        System.out.println("执行有参方法：" + params);
    }

    public void cyNoParams()
    {
        System.out.println("执行无参方法");
    }

    //往日志表中插入日志
    public void insertLog()
    {
        for (int i = 0; i < 800000; i++) {
            SysLogininfor sysLogininfor = new SysLogininfor();
            sysLogininfor.setLoginName("测试数据");
            sysLogininfor.setIpaddr("127.0.0.1");
            sysLogininfor.setLoginLocation("内网IP");
            sysLogininfor.setBrowser("Chrome");
            sysLogininfor.setOs("Windows 10");
            sysLogininfor.setStatus("0");
            sysLogininfor.setMsg("测试数据");
            log.debug("插入第"+i+"条");
            // 插入数据
            SpringUtils.getBean(SysLogininforServiceImpl.class).insertLogininfor(sysLogininfor);
        }

    }
}
