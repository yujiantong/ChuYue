package com.chuyue.system.service.impl;

import java.util.List;
import com.chuyue.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chuyue.system.mapper.CyQueryConfMapper;
import com.chuyue.system.domain.CyQueryConf;
import com.chuyue.system.service.ICyQueryConfService;
import com.chuyue.common.core.text.Convert;

/**
 * 报表配置实体Service业务层处理
 * 
 * @author chuyue
 * @date 2019-10-28
 */
@Service
public class CyQueryConfServiceImpl implements ICyQueryConfService 
{
    @Autowired
    private CyQueryConfMapper cyQueryConfMapper;

    /**
     * 查询报表配置实体
     * 
     * @param reportId 报表配置实体ID
     * @return 报表配置实体
     */
    @Override
    public CyQueryConf selectCyQueryConfById(Long reportId)
    {
        return cyQueryConfMapper.selectCyQueryConfById(reportId);
    }

    /**
     * 查询报表配置实体列表
     * 
     * @param cyQueryConf 报表配置实体
     * @return 报表配置实体
     */
    @Override
    public List<CyQueryConf> selectCyQueryConfList(CyQueryConf cyQueryConf)
    {
        return cyQueryConfMapper.selectCyQueryConfList(cyQueryConf);
    }

    /**
     * 新增报表配置实体
     * 
     * @param cyQueryConf 报表配置实体
     * @return 结果
     */
    @Override
    public int insertCyQueryConf(CyQueryConf cyQueryConf)
    {
        cyQueryConf.setCreateTime(DateUtils.getNowDate());
        return cyQueryConfMapper.insertCyQueryConf(cyQueryConf);
    }

    /**
     * 修改报表配置实体
     * 
     * @param cyQueryConf 报表配置实体
     * @return 结果
     */
    @Override
    public int updateCyQueryConf(CyQueryConf cyQueryConf)
    {
        cyQueryConf.setUpdateTime(DateUtils.getNowDate());
        return cyQueryConfMapper.updateCyQueryConf(cyQueryConf);
    }

    /**
     * 删除报表配置实体对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteCyQueryConfByIds(String ids)
    {
        return cyQueryConfMapper.deleteCyQueryConfByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除报表配置实体信息
     * 
     * @param reportId 报表配置实体ID
     * @return 结果
     */
    @Override
    public int deleteCyQueryConfById(Long reportId)
    {
        return cyQueryConfMapper.deleteCyQueryConfById(reportId);
    }
}
