package com.chuyue.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chuyue.system.mapper.CyFilterColsMapper;
import com.chuyue.system.domain.CyFilterCols;
import com.chuyue.system.service.ICyFilterColsService;
import com.chuyue.common.core.text.Convert;

/**
 * 报过滤条件配置Service业务层处理
 * 
 * @author chuyue
 * @date 2020-03-12
 */
@Service
public class CyFilterColsServiceImpl implements ICyFilterColsService 
{
    @Autowired
    private CyFilterColsMapper cyFilterColsMapper;

    /**
     * 查询报过滤条件配置
     * 
     * @param fPkey 报过滤条件配置ID
     * @return 报过滤条件配置
     */
    @Override
    public CyFilterCols selectCyFilterColsById(Long fPkey)
    {
        return cyFilterColsMapper.selectCyFilterColsById(fPkey);
    }

    /**
     * 查询报过滤条件配置列表
     * 
     * @param cyFilterCols 报过滤条件配置
     * @return 报过滤条件配置
     */
    @Override
    public List<CyFilterCols> selectCyFilterColsList(CyFilterCols cyFilterCols)
    {
        return cyFilterColsMapper.selectCyFilterColsList(cyFilterCols);
    }

    /**
     * 新增报过滤条件配置
     * 
     * @param cyFilterCols 报过滤条件配置
     * @return 结果
     */
    @Override
    public int insertCyFilterCols(CyFilterCols cyFilterCols)
    {
        return cyFilterColsMapper.insertCyFilterCols(cyFilterCols);
    }

    /**
     * 修改报过滤条件配置
     * 
     * @param cyFilterCols 报过滤条件配置
     * @return 结果
     */
    @Override
    public int updateCyFilterCols(CyFilterCols cyFilterCols)
    {
        return cyFilterColsMapper.updateCyFilterCols(cyFilterCols);
    }

    /**
     * 删除报过滤条件配置对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteCyFilterColsByIds(String ids)
    {
        return cyFilterColsMapper.deleteCyFilterColsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除报过滤条件配置信息
     * 
     * @param fPkey 报过滤条件配置ID
     * @return 结果
     */
    @Override
    public int deleteCyFilterColsById(Long fPkey)
    {
        return cyFilterColsMapper.deleteCyFilterColsById(fPkey);
    }
}
