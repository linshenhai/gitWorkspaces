package com.snail.drug.core.service.impl;

import com.snail.common.entity.QueryRequest;
import com.snail.common.session.SessionContextHolder;
import com.snail.drug.core.domain.entity.Company;
import com.snail.drug.core.mapper.CompanyMapper;
import com.snail.drug.core.service.CompanyService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.beans.factory.annotation.Autowired;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.util.StringUtils;

import java.util.Date;
import java.util.List;

/**
 * 公司表 Service实现
 *
 * @author lqi
 * @date 2019-08-02 22:49:47
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class CompanyServiceImpl extends BaseService<CompanyMapper, Company> implements CompanyService {

    @Autowired
    private CompanyMapper companyMapper;

    @Override
    public IPage<Company> findCompanys(QueryRequest request, Company company) {
        LambdaQueryWrapper<Company> queryWrapper = new LambdaQueryWrapper<>();
        if (!StringUtils.isEmpty(company.getName())){
            queryWrapper.like(Company::getName,company.getName());
        }
        if (!StringUtils.isEmpty(company.getLegalRepresentative())){
            queryWrapper.like(Company::getLegalRepresentative,company.getLegalRepresentative());
        }
        queryWrapper.eq(Company::getDel,1);
        Page<Company> page = new Page<>(request.getPageNum(), request.getPageSize());
        return this.page(page, queryWrapper);
    }

    @Override
    public List<Company> findCompanys(Company company) {
	    LambdaQueryWrapper<Company> queryWrapper = new LambdaQueryWrapper<>();
		// TODO 设置查询条件
		return this.baseMapper.selectList(queryWrapper);
    }

    @Override
    @Transactional
    public void createCompany(Company company) {
        company.recordInsert();
        this.save(company);
    }

    @Override
    @Transactional
    public void updateCompany(Company company) {
        this.saveOrUpdate(company);
    }

    @Override
    @Transactional
    public Boolean deleteCompany(Long id) {
        return companyMapper.deleteLogic(id)>0;
	}

    @Override
    public Boolean deleteCompany(List<Long> ids) {
        return companyMapper.deleteLogicBatch(ids)>0;
    }
}
