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
import com.chuyue.system.domain.CyShowCols;
import com.chuyue.system.service.ICyShowColsService;
import com.chuyue.common.core.controller.BaseController;
import com.chuyue.common.core.domain.AjaxResult;
import com.chuyue.common.utils.poi.ExcelUtil;
import com.chuyue.common.core.page.TableDataInfo;

/**
 * 报显示字段配置Controller
 * 
 * @author chuyue
 * @date 2020-07-31
 */
@Controller
@RequestMapping("/reportsearch/queryshow")
public class CyShowColsController extends BaseController
{
    private String prefix = "reportsearch/queryshow";

    @Autowired
    private ICyShowColsService cyShowColsService;

    @RequiresPermissions("reportsearch:queryshow:view")
    @GetMapping()
    public String cols()
    {
        return prefix + "/list";
    }

    /**
     * 查询报显示字段配置列表
     */
    @RequiresPermissions("reportsearch:queryshow:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(CyShowCols cyShowCols)
    {
        startPage();
        List<CyShowCols> list = cyShowColsService.selectCyShowColsList(cyShowCols);
        return getDataTable(list);
    }

    /**
     * 导出报显示字段配置列表
     */
    @RequiresPermissions("reportsearch:queryshow:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(CyShowCols cyShowCols)
    {
        List<CyShowCols> list = cyShowColsService.selectCyShowColsList(cyShowCols);
        ExcelUtil<CyShowCols> util = new ExcelUtil<CyShowCols>(CyShowCols.class);
        return util.exportExcel(list, "list");
    }

    /**
     * 新增报显示字段配置
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存报显示字段配置
     */
    @RequiresPermissions("reportsearch:queryshow:add")
    @Log(title = "报显示字段配置", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(CyShowCols cyShowCols)
    {
        return toAjax(cyShowColsService.insertCyShowCols(cyShowCols));
    }

    /**
     * 修改报显示字段配置
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        CyShowCols cyShowCols = cyShowColsService.selectCyShowColsById(id);
        mmap.put("cyShowCols", cyShowCols);
        return prefix + "/edit";
    }

    /**
     * 修改保存报显示字段配置
     */
    @RequiresPermissions("reportsearch:queryshow:edit")
    @Log(title = "报显示字段配置", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(CyShowCols cyShowCols)
    {
        return toAjax(cyShowColsService.updateCyShowCols(cyShowCols));
    }

    /**
     * 删除报显示字段配置
     */
    @RequiresPermissions("reportsearch:queryshow:remove")
    @Log(title = "报显示字段配置", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(cyShowColsService.deleteCyShowColsByIds(ids));
    }
}
