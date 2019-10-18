package com.chuyue.system.mapper;

import net.sf.json.JSONObject;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * 报表查询 数据层
 * 
 * @author chuyue
 */
public interface ICReportSearchMapper
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
    Map<String, Object> selectQueryConf(@Param("sqltext") String sqltext);
}
