package com.chuyue.system.mapper;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * 封装
 * 
 * @author chuyue
 */
public interface DBMapper
{
    /**
     * 查询
     *
     * @param sqltext 参数对象
     * @return 报表集合
     */
    public List<Map<String,Object>> QuerySql(@Param("sqltext") String sqltext);

    /**
     * 更新
     * @param sqltext
     * @return
     */
    public void UpdateSql(@Param("sqltext") String sqltext);
}
