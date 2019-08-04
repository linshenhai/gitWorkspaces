package cc.mrbird.febs.drug.controller;
import cc.mrbird.febs.common.annotation.Log;
import cc.mrbird.febs.common.utils.FebsUtil;
import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.exception.FebsException;
import cc.mrbird.febs.system.entity.User;
import com.google.common.base.Splitter;
import com.snail.common.entity.QueryRequest;
import com.snail.drug.core.domain.entity.Company;
import com.snail.drug.core.domain.vo.CompanyVo;
import com.snail.drug.core.service.CompanyService;
import com.wuwenze.poi.ExcelKit;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import javax.websocket.server.PathParam;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * 公司表 Controller
 *
 * @author lqi
 * @date 2019-08-02 23:33:02
 */
@Slf4j
@Validated
@Controller
public class CompanyController extends DrugBaseController {

    @Autowired
    private CompanyService companyService;

    @GetMapping(FebsConstant.VIEW_PREFIX + "drug/company")
    public String company(){
        return FebsUtil.view("drug/company/company");
    }
    @GetMapping(FebsConstant.VIEW_PREFIX + "drug/company/add")
    public String companyAdd(){
        return FebsUtil.view("drug/company/companyAdd");
    }
    @GetMapping(FebsConstant.VIEW_PREFIX + "drug/company/detail/{id}")
    public String companyDetail(@PathVariable("id") Long id, Model model){
        Company company = companyService.getById(id);
        CompanyVo v=new CompanyVo();
        BeanUtils.copyProperties(company,v);
        model.addAttribute("company", v);
        return FebsUtil.view("drug/company/companyDetail");
    }
    @GetMapping(FebsConstant.VIEW_PREFIX + "drug/company/update")
    public String companyUpdate(){
        return FebsUtil.view("drug/company/companyUpdate");
    }

    @GetMapping("/drug/company")
    @ResponseBody
    @RequiresPermissions("company:view")
    public FebsResponse getAllCompanys(Company company) {
        return new FebsResponse().success().data(companyService.findCompanys(company));
    }

    @GetMapping("/drug/company/list")
    @ResponseBody
    @RequiresPermissions("company:view")
    public FebsResponse companyList(QueryRequest request, Company company) {
        Map<String, Object> dataTable = getDataTable(this.companyService.findCompanys(request, company));
        return new FebsResponse().success().data(dataTable);
    }

    @Log("新增Company")
    @PostMapping("/drug/company")
    @ResponseBody
    @RequiresPermissions("company:add")
    public FebsResponse addCompany(@Valid Company company) throws FebsException {
        try {
            this.companyService.createCompany(company);
            return new FebsResponse().success();
        } catch (Exception e) {
            String message = "新增Company失败:"+e.getMessage();
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("删除Company")
    @GetMapping("/drug/company/delete")
    @ResponseBody
    @RequiresPermissions("company:delete")
    public FebsResponse deleteCompany(@RequestParam("ids") String idText) throws FebsException {
        try {
            List<Long> ids= Splitter.on(",").splitToList(idText).stream().map(Long::parseLong)
                    .collect(Collectors.toList());
            this.companyService.deleteCompany(ids);
            return new FebsResponse().success();
        } catch (Exception e) {
            String message = "删除Company失败:"+e.getMessage();
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("修改Company")
    @PostMapping("/drug/company/update")
    @ResponseBody
    @RequiresPermissions("company:update")
    public FebsResponse updateCompany(Company company) throws FebsException {
        try {
            this.companyService.updateCompany(company);
            return new FebsResponse().success();
        } catch (Exception e) {
            String message = "修改Company失败:"+e.getMessage();
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @GetMapping("drug/company/excel")
    @ResponseBody
    @RequiresPermissions("company:export")
    public void export(QueryRequest queryRequest, Company company, HttpServletResponse response) throws FebsException {
        try {
            List<Company> companys = this.companyService.findCompanys(queryRequest, company).getRecords();
            ExcelKit.$Export(Company.class, response).downXlsx(companys, false);
        } catch (Exception e) {
            String message = "导出Excel失败:"+e.getMessage();
            log.error(message, e);
            throw new FebsException(message);
        }
    }
}
