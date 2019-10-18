package com.chuyue.system.service;

import net.sf.json.JSONObject;

import java.util.List;
import java.util.Map;

/**
 * 报表查询 服务层
 * 
 * @author chuyue
 */
public interface ICReportSearchService
{

    /**
     * 查询系统登录日志集合
     *
     * @param jsonobject 参数对象
     * @return 报表集合
     */
    public List<Map<String,Object>> selectReportList(JSONObject jsonobject);

    /**
     * 查询业务编码对应的sqltext
     * @param sqltext
     * @return
     */
    public Map<String,Object> selectQueryConf(String sqltext);


}
