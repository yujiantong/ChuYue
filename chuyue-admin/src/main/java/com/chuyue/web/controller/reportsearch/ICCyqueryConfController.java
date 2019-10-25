package com.chuyue.web.controller.reportsearch;

import com.chuyue.common.annotation.Log;
import com.chuyue.common.constant.UserConstants;
import com.chuyue.common.core.controller.BaseController;
import com.chuyue.common.core.domain.AjaxResult;
import com.chuyue.common.core.page.TableDataInfo;
import com.chuyue.common.enums.BusinessType;
import com.chuyue.framework.util.ShiroUtils;
import com.chuyue.system.domain.CyQueryConf;
import com.chuyue.system.service.ICCyQueryConfService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 报表查询配置
 *
 * @author chuyue
 */
@Controller
@RequestMapping("/reportsearch/queryconf")
public class ICCyqueryConfController extends BaseController {
    private String prefix = "reportsearch/queryconf";

    @Autowired
    private ICCyQueryConfService confService;

    @RequiresPermissions("reportsearch:queryconf:view")
    @GetMapping()
    public String reportsearch()
    {
        return prefix + "/queryconf";
    }

    @RequiresPermissions("reportsearch:queryconf:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(CyQueryConf cyQueryConf)
    {
        startPage();
        List<CyQueryConf> list = confService.selectCyQueryConfList(cyQueryConf);
        return getDataTable(list);
    }

    @RequiresPermissions("reportsearch:queryconf:remove")
    @Log(title = "报表管理", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        try
        {
            return toAjax(confService.deleteCyQueryConfByIds(ids));
        }
        catch (Exception e)
        {
            return error(e.getMessage());
        }
    }

    /**
     * 新增
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存
     */
    @RequiresPermissions("reportsearch:queryconf:add")
    @Log(title = "报表管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@Validated CyQueryConf cyQueryConf)
    {
        if (UserConstants.REPORT_CODE_NOT_UNIQUE.equals(confService.checkCyQueryConfCodeUnique(cyQueryConf)))
        {
            return error("新增配置'" + cyQueryConf.getfReportCode() + "'失败，业务编码已存在");
        }
        cyQueryConf.setCreateBy(ShiroUtils.getLoginName());
        return toAjax(confService.insertCyQueryConf(cyQueryConf));
    }

    /**
     * 修改
     */
    @GetMapping("/edit/{fPkey}")
    public String edit(@PathVariable("fPkey") Long postId, ModelMap mmap)
    {
        mmap.put("post", confService.selectCyQueryConfById(postId));
        return prefix + "/edit";
    }

    /**
     * 修改保存
     */
    @RequiresPermissions("reportsearch:queryconf:edit")
    @Log(title = "报表管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(@Validated CyQueryConf cyQueryConf)
    {
        if (UserConstants.REPORT_CODE_NOT_UNIQUE.equals(confService.checkCyQueryConfCodeUnique(cyQueryConf)))
        {
            return error("修改配置'" + cyQueryConf.getfReportCode() + "'失败，业务编码已存在");
        }
        cyQueryConf.setCreateBy(ShiroUtils.getLoginName());
        return toAjax(confService.insertCyQueryConf(cyQueryConf));
    }

    /**
     * 校验业务编码
     */
    @PostMapping("/checkCyQueryConfCodeUnique")
    @ResponseBody
    public String checkCyQueryConfCodeUnique(CyQueryConf cyQueryConf)
    {
        return confService.checkCyQueryConfCodeUnique(cyQueryConf);
    }

}
