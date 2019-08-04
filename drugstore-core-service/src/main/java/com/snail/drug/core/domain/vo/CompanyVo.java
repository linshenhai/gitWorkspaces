package com.snail.drug.core.domain.vo;

import lombok.Data;

import java.util.Date;

/**
 * @author ：lzq
 * @date ：2019/8/4
 * @desc ：公司视图
 */
@Data
public class CompanyVo {
    /**
     * 营业执照号有效期
     */
    private Date businessLicenseValidity;

    /**
     * 营业执照号
     */
    private String businessLicenseNo;

    /**
     * 编码
     */
    private String code;

    /**
     * 联系人
     */
    private String contact;

    /**
     * 联系电话
     */
    private String contactTel;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 传真
     */
    private String fax;

    /**
     * 档案管理编号
     */
    private String fileNo;

    /**
     * GSP证号
     */
    private String gspNo;

    /**
     * GSP证有效期
     */
    private Date gspValidity;

    /**
     * id
     */
    private Long id;

    /**
     * 企业负责人
     */
    private String leader;

    /**
     * 法人
     */
    private String legalRepresentative;

    /**
     * 许可证号
     */
    private String licenseKey;

    /**
     * 许可证有效期
     */
    private Date licenseValidity;

    /**
     * 企业名称
     */
    private String name;

    /**
     * 药学技术人员
     */
    private String pharmacyPersonnel;

    /**
     * 质量负责人
     */
    private String qualityLeader;

    /**
     * 注册地址
     */
    private String registeredAddress;

    /**
     * 企业简称
     */
    private String shortName;

    /**
     * 状态 0锁定 1有效
     */
    private Integer status;

}
