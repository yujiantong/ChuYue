package com.chuyue.web.controller.reportsearch;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.chuyue.common.annotation.Log;
import com.chuyue.common.enums.BusinessType;
import com.chuyue.system.domain.CyQueryConf;
import com.chuyue.system.service.ICyQueryConfService;
import com.chuyue.common.core.controller.BaseController;
import com.chuyue.common.core.domain.AjaxResult;
import com.chuyue.common.utils.poi.ExcelUtil;
import com.chuyue.common.core.page.TableDataInfo;

/**
 * 报表配置实体Controller
 *
 * @author chuyue
 * @date 2019-10-28
 */
@Controller
@RequestMapping("/reportsearch/queryconf")
public class CyQueryConfController extends BaseController
{
    private String prefix = "reportsearch/queryconf";

    @Autowired
    private ICyQueryConfService cyQueryConfService;

    @RequiresPermissions("reportsearch:queryconf:view")
    @GetMapping()
    public String queryconf()
    {
        return prefix + "/queryconf";
    }

    /**
     * 查询报表配置实体列表
     */
    @RequiresPermissions("reportsearch:queryconf:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(CyQueryConf cyQueryConf)
    {
        startPage();
        List<CyQueryConf> list = cyQueryConfService.selectCyQueryConfList(cyQueryConf);
        return getDataTable(list);
    }

    /**
     * 导出报表配置实体列表
     */
    @RequiresPermissions("reportsearch:queryconf:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(CyQueryConf cyQueryConf)
    {
        List<CyQueryConf> list = cyQueryConfService.selectCyQueryConfList(cyQueryConf);
        ExcelUtil<CyQueryConf> util = new ExcelUtil<CyQueryConf>(CyQueryConf.class);
        return util.exportExcel(list, "queryconf");
    }

    /**
     * 新增报表配置实体
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存报表配置实体
     */
    @RequiresPermissions("reportsearch:queryconf:add")
    @Log(title = "报表配置实体", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(CyQueryConf cyQueryConf)
    {
        return toAjax(cyQueryConfService.insertCyQueryConf(cyQueryConf));
    }

    /**
     * 修改报表配置实体
     */
    @GetMapping("/edit/{reportId}")
    public String edit(@PathVariable("reportId") Long reportId, ModelMap mmap)
    {
        CyQueryConf cyQueryConf = cyQueryConfService.selectCyQueryConfById(reportId);
        mmap.put("cyQueryConf", cyQueryConf);
        return prefix + "/edit";
    }

    /**
     * 修改保存报表配置实体
     */
    @RequiresPermissions("reportsearch:queryconf:edit")
    @Log(title = "报表配置实体", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(CyQueryConf cyQueryConf)
    {
        return toAjax(cyQueryConfService.updateCyQueryConf(cyQueryConf));
    }

    /**
     * 删除报表配置实体
     */
    @RequiresPermissions("reportsearch:queryconf:remove")
    @Log(title = "报表配置实体", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(cyQueryConfService.deleteCyQueryConfByIds(ids));
    }
}
