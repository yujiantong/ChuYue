package com.chuyue.web.controller.reportsearch;

import com.chuyue.common.annotation.Log;
import com.chuyue.common.core.controller.BaseController;
import com.chuyue.common.core.domain.AjaxResult;
import com.chuyue.common.core.page.TableDataInfo;
import com.chuyue.common.enums.BusinessType;
import com.chuyue.common.utils.poi.ExcelUtil;
import com.chuyue.system.domain.SysLogininfor;
import com.chuyue.system.domain.SysMenu;
import com.chuyue.system.service.ISysLogininforService;
import com.chuyue.system.service.ISysMenuService;
import net.sf.json.JSONObject;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 系统访问记录
 *
 * @author chuyue
 */
@Controller
@RequestMapping("/reportsearch")
public class ICReportSearchController extends BaseController
{
    private String prefix = "";
    @Autowired
    private ISysLogininforService logininforService;
    @Autowired
    private ISysMenuService menuService;

    @RequiresPermissions("reportsearch")
    @GetMapping()
    public String reportsearch(HttpServletRequest request)
    {
        String viewurl = "";
        String url = request.getParameter("url");
        prefix = url.substring(1,url.length());
        String businessCode = request.getParameter("code");
        if(!"".equals(businessCode)){
            SysMenu sysMenu = menuService.selectPermsByCode(businessCode);
            viewurl = sysMenu.getBusinessCode();
        }

        return prefix + "/"+viewurl;
    }

    @RequiresPermissions("reportsearch")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(@RequestParam(name="CONDITION")String CONDITION)
    {
        JSONObject jsonobject = JSONObject.fromObject(CONDITION);
        startPage();
        SysLogininfor logininfor = new SysLogininfor();
        List<SysLogininfor> list = logininforService.selectLogininforList(logininfor);
        return getDataTable(list);
    }

    @Log(title = "登陆日志", businessType = BusinessType.EXPORT)
    @RequiresPermissions("reportsearch")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SysLogininfor logininfor)
    {
        List<SysLogininfor> list = logininforService.selectLogininforList(logininfor);
        ExcelUtil<SysLogininfor> util = new ExcelUtil<SysLogininfor>(SysLogininfor.class);
        return util.exportExcel(list, "登陆日志");
    }

    @RequiresPermissions("reportsearch")
    @Log(title = "登陆日志", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(logininforService.deleteLogininforByIds(ids));
    }

    @RequiresPermissions("reportsearch")
    @Log(title = "登陆日志", businessType = BusinessType.CLEAN)
    @PostMapping("/clean")
    @ResponseBody
    public AjaxResult clean()
    {
        logininforService.cleanLogininfor();
        return success();
    }
}
