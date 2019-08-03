package com.snail.drug.core.domain.entity;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

/**
 * 公司表 Entity
 *
 * @author lqi
 * @date 2019-08-02 22:49:47
 */
@Data
@TableName("p_company")
public class Company extends BaseEntity {

    /**
     * 营业执照号有效期
     */
    @TableField("business_license_validity")
    private Date businessLicenseValidity;

    /**
     * 营业执照号
     */
    @TableField("business_license_no")
    private String businessLicenseNo;

    /**
     * 编码
     */
    @TableField("code")
    private String code;

    /**
     * 联系人
     */
    @TableField("contact")
    private String contact;

    /**
     * 联系电话
     */
    @TableField("contact_tel")
    private String contactTel;

    /**
     * 邮箱
     */
    @TableField("email")
    private String email;

    /**
     * 传真
     */
    @TableField("fax")
    private String fax;

    /**
     * 档案管理编号
     */
    @TableField("file_no")
    private String fileNo;

    /**
     * GSP证号
     */
    @TableField("gsp_no")
    private String gspNo;

    /**
     * GSP证有效期
     */
    @TableField("gsp_validity")
    private Date gspValidity;

    /**
     * id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 企业负责人
     */
    @TableField("leader")
    private String leader;

    /**
     * 法人
     */
    @TableField("legal_representative")
    private String legalRepresentative;

    /**
     * 许可证号
     */
    @TableField("license_key")
    private String licenseKey;

    /**
     * 许可证有效期
     */
    @TableField("license_validity")
    private Date licenseValidity;

    /**
     * 企业名称
     */
    @TableField("name")
    private String name;

    /**
     * 药学技术人员
     */
    @TableField("pharmacy_personnel")
    private String pharmacyPersonnel;

    /**
     * 质量负责人
     */
    @TableField("quality_leader")
    private String qualityLeader;

    /**
     * 注册地址
     */
    @TableField("registered_address")
    private String registeredAddress;

    /**
     * 企业简称
     */
    @TableField("short_name")
    private String shortName;

    /**
     * 状态 0锁定 1有效
     */
    @TableField("status")
    private Integer status;

}