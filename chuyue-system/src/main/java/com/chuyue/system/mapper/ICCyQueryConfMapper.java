package com.chuyue.system.mapper;

import com.chuyue.system.domain.CyQueryConf;

import java.util.List;

/**
 * 报表配置信息 数据层
 *
 * @author chuyue
 */
public interface ICCyQueryConfMapper
{
    /**
     * 查询报表配置数据集合
     *
     * @param cyQueryConf 报表配置信息
     * @return 报表配置数据集合
     */
    public List<CyQueryConf> selectCyQueryConfList(CyQueryConf cyQueryConf);

    /**
     * 查询所有报表配置
     *
     * @return 报表配置列表
     */
    public List<CyQueryConf> selectCyQueryConfAll();

    /**
     * 根据主键ID查询报表配置
     *
     * @param fPkey 主键ID
     * @return 报表配置列表
     */
    public List<CyQueryConf> selectCyQueryConfsByfPkey(Long fPkey);

    /**
     * 通过报表配置ID查询报表配置信息
     *
     * @param cyQueryConfId 报表配置ID
     * @return 角色对象信息
     */
    public CyQueryConf selectCyQueryConfById(Long cyQueryConfId);

    /**
     * 批量删除报表配置信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteCyQueryConfByIds(Long[] ids);

    /**
     * 修改报表配置信息
     *
     * @param cyQueryConf 报表配置信息
     * @return 结果
     */
    public int updateCyQueryConf(CyQueryConf cyQueryConf);

    /**
     * 新增报表配置信息
     *
     * @param cyQueryConf 报表配置信息
     * @return 结果
     */
    public int insertCyQueryConf(CyQueryConf cyQueryConf);

    /**
     * 校验报表配置编码
     *
     * @param cyQueryConfCode 报表配置编码
     * @return 结果
     */
    public CyQueryConf checkCyQueryConfCodeUnique(String cyQueryConfCode);
}
