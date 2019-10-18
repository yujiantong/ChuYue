package com.chuyue.web.controller.reportsearch;

import com.chuyue.common.annotation.Log;
import com.chuyue.common.core.controller.BaseController;
import com.chuyue.common.core.domain.AjaxResult;
import com.chuyue.common.core.page.TableDataInfo;
import com.chuyue.common.enums.BusinessType;
import com.chuyue.common.utils.poi.ExcelUtil;
import com.chuyue.system.domain.SysLogininfor;
import com.chuyue.system.domain.SysMenu;
import com.chuyue.system.service.ICReportSearchService;
import com.chuyue.system.service.ISysLogininforService;
import com.chuyue.system.service.ISysMenuService;
import net.sf.json.JSONObject;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;


/**
 * 系统访问记录
 *
 * @author chuyue
 */
@Controller
@RequestMapping("/reportsearch")
public class ICReportSearchController extends BaseController {
    private static final String QUERY_CONF     = "select * from cy_query_conf where f_report_code";//配置报表信息的信息表
    private static final String F_SQLTEXT      = "f_sqltext";//对应的sql字段
    private static final String SQL_VALUE      = "SQL_VALUE";//sql变量
    private static final String REPORT_CODE    = "REPORT_CODE";//前台传输过来的业务编码key
    private static final String REPORT_FILTER  = "REPORT_FILTER";//过滤参数key
    private String prefix = "";
    @Autowired
    private ICReportSearchService searchService;
    @Autowired
    private ISysMenuService menuService;

    @RequiresPermissions("reportsearch")
    @GetMapping()
    public String reportsearch(HttpServletRequest request) {
        String viewurl = "";
        String url = request.getParameter("url");
        prefix = url.substring(1, url.length());
        String businessCode = request.getParameter("code");
        if (!"".equals(businessCode)) {
            SysMenu sysMenu = menuService.selectPermsByCode(businessCode);
            viewurl = sysMenu.getBusinessCode();
        }

        return prefix + "/" + viewurl;
    }

    @RequiresPermissions("reportsearch")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(@RequestParam(name = "CONDITION") String CONDITION) {
        JSONObject jsonobject = JSONObject.fromObject(CONDITION);
        List<Map<String,Object>> list = null;
        //查询表 cy_query_conf 中业务编码对应的sqltext
        String code = jsonobject.getString(REPORT_CODE);
        String sqltext = QUERY_CONF+" = '"+code+"'";
        Map<String,Object> conf = searchService.selectQueryConf(sqltext);
        startPage();
        if(!"".equals(conf.get(F_SQLTEXT))){
            String report_sqltext = conf.get(F_SQLTEXT).toString()+" where 1=1 ";
            //处理过滤条件
            String filters = jsonobject.getString(REPORT_FILTER);
            String[] arr = filters.split(",");
            StringBuffer buffer = new StringBuffer();
            for(int i=0;i<arr.length-1;i++){
                String filterName = "";
                if(jsonobject.containsKey(arr[i])){
                    filterName = arr[i];
                }
                if(!"".equals(filterName)){
                    buffer.append("and").append(" ").append(filterName).append("=").append(""+jsonobject.getString(filterName)).append(" ");
                }
            }
            jsonobject.put(SQL_VALUE,report_sqltext+buffer);
            list = searchService.selectReportList(jsonobject);
        }
        return getDataTable(list);
    }

    @Log(title = "登陆日志", businessType = BusinessType.EXPORT)
    @RequiresPermissions("reportsearch")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(@RequestParam(name = "CONDITION") String CONDITION) {
        /*JSONObject jsonobject = JSONObject.fromObject(CONDITION);
        List<Object> list = searchService.selectReportList(jsonobject);
        ExcelUtil<Object> util = new ExcelUtil<Object>(Object.class);
        return util.exportExcel(list, "登陆日志");*/
        return null;
    }
}
