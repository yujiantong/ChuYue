package com.chuyue.system.service;

import net.sf.json.JSONObject;

import java.util.List;
import java.util.Map;

/**
 * 服务层
 * 
 * @author chuyue
 */
public interface DBService
{

    /**
     * 查询
     *
     * @param sqltext 参数对象
     * @return 报表集合
     */
    public List<Map<String,Object>> QuerySql(String sqltext);

    /**
     * 更新
     * @param sqltext
     * @return
     */
    public void UpdateSql(String sqltext);


}
