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
import com.chuyue.system.domain.CyFilterCols;
import com.chuyue.system.service.ICyFilterColsService;
import com.chuyue.common.core.controller.BaseController;
import com.chuyue.common.core.domain.AjaxResult;
import com.chuyue.common.utils.poi.ExcelUtil;
import com.chuyue.common.core.page.TableDataInfo;

/**
 * 报过滤条件配置Controller
 * 
 * @author chuyue
 * @date 2020-03-12
 */
@Controller
@RequestMapping("/reportsearch/queryfilter")
public class CyFilterColsController extends BaseController
{
    private String prefix = "reportsearch/queryfilter";

    @Autowired
    private ICyFilterColsService cyFilterColsService;

    @RequiresPermissions("reportsearch:queryfilter:view")
    @GetMapping()
    public String queryfilter()
    {
        return prefix + "/list";
    }

    /**
     * 查询报过滤条件配置列表
     */
    @RequiresPermissions("reportsearch:queryfilter:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(CyFilterCols cyFilterCols)
    {
        startPage();
        List<CyFilterCols> list = cyFilterColsService.selectCyFilterColsList(cyFilterCols);
        return getDataTable(list);
    }

    /**
     * 导出报过滤条件配置列表
     */
    @RequiresPermissions("reportsearch:queryfilter:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(CyFilterCols cyFilterCols)
    {
        List<CyFilterCols> list = cyFilterColsService.selectCyFilterColsList(cyFilterCols);
        ExcelUtil<CyFilterCols> util = new ExcelUtil<CyFilterCols>(CyFilterCols.class);
        return util.exportExcel(list, "list");
    }

    /**
     * 新增报过滤条件配置
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存报过滤条件配置
     */
    @RequiresPermissions("reportsearch:queryfilter:add")
    @Log(title = "报过滤条件配置", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(CyFilterCols cyFilterCols)
    {
        return toAjax(cyFilterColsService.insertCyFilterCols(cyFilterCols));
    }

    /**
     * 修改报过滤条件配置
     */
    @GetMapping("/edit/{fPkey}")
    public String edit(@PathVariable("fPkey") Long fPkey, ModelMap mmap)
    {
        CyFilterCols cyFilterCols = cyFilterColsService.selectCyFilterColsById(fPkey);
        mmap.put("cyFilterCols", cyFilterCols);
        return prefix + "/edit";
    }

    /**
     * 修改保存报过滤条件配置
     */
    @RequiresPermissions("reportsearch:queryfilter:edit")
    @Log(title = "报过滤条件配置", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(CyFilterCols cyFilterCols)
    {
        return toAjax(cyFilterColsService.updateCyFilterCols(cyFilterCols));
    }

    /**
     * 删除报过滤条件配置
     */
    @RequiresPermissions("reportsearch:queryfilter:remove")
    @Log(title = "报过滤条件配置", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(cyFilterColsService.deleteCyFilterColsByIds(ids));
    }
}
