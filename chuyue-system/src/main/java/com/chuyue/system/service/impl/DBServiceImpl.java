package com.chuyue.system.service.impl;

import com.chuyue.system.mapper.DBMapper;
import com.chuyue.system.mapper.ICReportSearchMapper;
import com.chuyue.system.service.DBService;
import com.chuyue.system.service.ICReportSearchService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 服务层
 * 
 * @author chuyue
 */
@Service
public class DBServiceImpl implements DBService
{

    @Autowired
    private DBMapper dbMapper;
    /**
     * 查询
     *
     * @param sqltext 参数对象
     * @return 报表集合
     */
    @Override
    public List<Map<String,Object>> QuerySql(String sqltext){
        return dbMapper.QuerySql(sqltext);
    }

    /**
     * 更新
     * @param sqltext
     * @return
     */
    @Override
    public void UpdateSql(String sqltext) {
        dbMapper.UpdateSql(sqltext);
    }


}
