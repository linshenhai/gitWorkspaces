package com.snail.drug.core.service;

import com.snail.common.entity.QueryRequest;
import com.snail.drug.core.domain.entity.Company;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 公司表 Service接口
 *
 * @author lqi
 * @date 2019-08-02 22:49:47
 */
public interface CompanyService extends IService<Company> {


    /**
     * 根据编码查询公司
     * @param code
     * @return
     */
    Company getCompany(String code);

    /**
     * 查询（分页）
     *
     * @param request QueryRequest
     * @param company company
     * @return IPage<Company>
     */
    IPage<Company> findCompanys(QueryRequest request, Company company);

    /**
     * 查询（所有）
     *
     * @param company company
     * @return List<Company>
     */
    List<Company> findCompanys(Company company);

    /**
     * 新增
     *
     * @param company company
     */
    void createCompany(Company company);

    /**
     * 修改
     *
     * @param company company
     */
    void updateCompany(Company company);

    /**
     * 删除
     *
     * @param id
     */
    Boolean deleteCompany(Long id);

    /**
     * 批量删除
     * @param ids
     * @return
     */
    Boolean deleteCompany(List<Long> ids);
}
