package com.chuyue.system.service;

import com.chuyue.system.domain.CyQueryConf;

import java.util.List;

/**
 * 报表查询 服务层
 * 
 * @author chuyue
 */
public interface ICCyQueryConfService
{

    /**
     * 查询报表配置信息集合
     *
     * @param cyQueryConf 报表配置信息
     * @return 报表配置信息集合
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
    public List<CyQueryConf> selectCyQueryConfByUserId(Long fPkey);

    /**
     * 通过报表配置ID查询报表配置信息
     *
     * @param fPkey 报表配置ID
     * @return 报表配置对象信息
     */
    public CyQueryConf selectCyQueryConfById(Long fPkey);

    /**
     * 批量删除报表配置信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     * @throws Exception 异常
     */
    public int deleteCyQueryConfByIds(String ids) throws Exception;

    /**
     * 新增保存报表配置信息
     *
     * @param cyQueryConf 报表配置信息
     * @return 结果
     */
    public int insertCyQueryConf(CyQueryConf cyQueryConf);

    /**
     * 修改保存报表配置信息
     *
     * @param cyQueryConf 报表配置信息
     * @return 结果
     */
    public int updateCyQueryConf(CyQueryConf cyQueryConf);

    /**
     * 通过报表配置ID查询报表配置使用数量
     *
     * @param fPkey 报表配置ID
     * @return 结果
     */
    public int countUserCyQueryConfById(Long fPkey);

    /**
     * 校验报表配置名称
     *
     * @param cyQueryConf 报表配置信息
     * @return 结果
     */
    public String checkCyQueryConfCodeUnique(CyQueryConf cyQueryConf);


}
