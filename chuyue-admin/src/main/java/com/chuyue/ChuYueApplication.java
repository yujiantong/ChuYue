package com.chuyue;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * 启动程序
 * 
 * @author chuyue
 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
public class ChuYueApplication
{
    public static void main(String[] args)
    {
        // System.setProperty("spring.devtools.restart.enabled", "false");
        SpringApplication.run(ChuYueApplication.class, args);
        System.out.println("(♥◠‿◠)ﾉﾞ  启动成功========》》》》》》》   ლ(´ڡ`ლ)ﾞ  \n");
    }
}