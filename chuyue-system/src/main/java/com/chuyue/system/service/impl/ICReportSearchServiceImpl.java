package com.chuyue.system.service.impl;

import com.chuyue.system.mapper.ICReportSearchMapper;
import com.chuyue.system.mapper.SysLogininforMapper;
import com.chuyue.system.service.ICReportSearchService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 报表查询 服务层
 * 
 * @author chuyue
 */
@Service
public class ICReportSearchServiceImpl implements ICReportSearchService
{

    @Autowired
    private ICReportSearchMapper searchMapper;
    /**
     * 查询系统登录日志集合
     *
     * @param jsonobject 参数对象
     * @return 报表集合
     */
    public List<Map<String,Object>> selectReportList(JSONObject jsonobject){
        return searchMapper.selectReportList(jsonobject);
    }

    /**
     * 查询业务编码对应的sqltext
     * @param sqltext
     * @return
     */
    @Override
    public Map<String, Object> selectQueryConf(String sqltext) {
        return searchMapper.selectQueryConf(sqltext);
    }


}
