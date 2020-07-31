package com.chuyue.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chuyue.system.mapper.CyShowColsMapper;
import com.chuyue.system.domain.CyShowCols;
import com.chuyue.system.service.ICyShowColsService;
import com.chuyue.common.core.text.Convert;

/**
 * 报显示字段配置Service业务层处理
 * 
 * @author chuyue
 * @date 2020-07-31
 */
@Service
public class CyShowColsServiceImpl implements ICyShowColsService 
{
    @Autowired
    private CyShowColsMapper cyShowColsMapper;

    /**
     * 查询报显示字段配置
     * 
     * @param id 报显示字段配置ID
     * @return 报显示字段配置
     */
    @Override
    public CyShowCols selectCyShowColsById(Long id)
    {
        return cyShowColsMapper.selectCyShowColsById(id);
    }

    /**
     * 查询报显示字段配置列表
     * 
     * @param cyShowCols 报显示字段配置
     * @return 报显示字段配置
     */
    @Override
    public List<CyShowCols> selectCyShowColsList(CyShowCols cyShowCols)
    {
        return cyShowColsMapper.selectCyShowColsList(cyShowCols);
    }

    /**
     * 新增报显示字段配置
     * 
     * @param cyShowCols 报显示字段配置
     * @return 结果
     */
    @Override
    public int insertCyShowCols(CyShowCols cyShowCols)
    {
        return cyShowColsMapper.insertCyShowCols(cyShowCols);
    }

    /**
     * 修改报显示字段配置
     * 
     * @param cyShowCols 报显示字段配置
     * @return 结果
     */
    @Override
    public int updateCyShowCols(CyShowCols cyShowCols)
    {
        return cyShowColsMapper.updateCyShowCols(cyShowCols);
    }

    /**
     * 删除报显示字段配置对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteCyShowColsByIds(String ids)
    {
        return cyShowColsMapper.deleteCyShowColsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除报显示字段配置信息
     * 
     * @param id 报显示字段配置ID
     * @return 结果
     */
    @Override
    public int deleteCyShowColsById(Long id)
    {
        return cyShowColsMapper.deleteCyShowColsById(id);
    }
}
