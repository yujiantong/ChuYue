package com.chuyue.system.service.impl;

import com.chuyue.system.domain.CyQueryConf;
import com.chuyue.system.mapper.ICCyQueryConfMapper;
import com.chuyue.system.mapper.SysPostMapper;
import com.chuyue.system.mapper.SysUserPostMapper;
import com.chuyue.system.service.ICCyQueryConfService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
/**
 * 报表查询 服务层
 * 
 * @author chuyue
 */
@Service
public class ICCyQueryConfServiceImpl implements ICCyQueryConfService
{

    @Autowired
    private ICCyQueryConfMapper cyQueryConfMapper;

    @Autowired
    private SysUserPostMapper userPostMapper;

    @Override
    public List<CyQueryConf> selectCyQueryConfList(CyQueryConf cyQueryConf) {
        return cyQueryConfMapper.selectCyQueryConfList(cyQueryConf);
    }

    @Override
    public List<CyQueryConf> selectCyQueryConfAll() {
        return null;
    }

    @Override
    public List<CyQueryConf> selectCyQueryConfByUserId(Long fPkey) {
        return null;
    }

    @Override
    public CyQueryConf selectCyQueryConfById(Long fPkey) {
        return null;
    }

    @Override
    public int deleteCyQueryConfByIds(String ids) throws Exception {
        return 0;
    }

    @Override
    public int insertCyQueryConf(CyQueryConf cyQueryConf) {
        return 0;
    }

    @Override
    public int updateCyQueryConf(CyQueryConf cyQueryConf) {
        return 0;
    }

    @Override
    public int countUserCyQueryConfById(Long fPkey) {
        return 0;
    }

    @Override
    public String checkCyQueryConfCodeUnique(CyQueryConf cyQueryConf) {
        return null;
    }

}
