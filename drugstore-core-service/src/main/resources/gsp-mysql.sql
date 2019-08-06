

  --商品资质表
DROP TABLE IF EXISTS gsp_product_aptitude;
CREATE TABLE gsp_product_aptitude  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  product_id BIGINT(20) NOT NULL  COMMENT '产品id',
  registration_code varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '药品注册证编号',
  registration_validity datetime(0) null  COMMENT '药品注册证有效期',
  gmp_certificate_code varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT 'GMP证书编号',
  gmp_certificate_validity datetime(0) null  COMMENT 'GMP证书有效期',
  trademark_code varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '商标注册证编号',
  trademark_validity datetime(0) null  COMMENT '商标注册证有效期',
  professional_code varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '专业证书编号',
  professional_validity datetime(0) null  COMMENT '专业证书有效期',
  protect_code varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '药品保护证书编号',
  protect_code_validity datetime(0) null  COMMENT '药品保护证书有效期',
  licence_code varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '生产许可证证书编号',
  licence_code_validity datetime(0) null  COMMENT '生产许可证书有效期',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT  NULL COMMENT '修改人',
  index  index_product_id(product_id),
  index  index_create_time(create_time),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品资质表' ROW_FORMAT = Dynamic;

--首营品种审批记录
DROP TABLE IF EXISTS gsp_company_product_first;
CREATE TABLE gsp_company_product_first  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  company_id BIGINT(20) NOT NULL  COMMENT '公司id',
  product_id BIGINT(20) NOT NULL  COMMENT '产品id',
  form_status int  not  NULL  COMMENT '表单状态：0-None;1-Other;2-New[新建];3-WaitAudit[待审核];4-Audited[审核通过];];5-NoPass[审核不通过];6-NoPass[取消]',
  reviewer_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '复核员审批人',
  reviewer_time datetime(0) null COMMENT '复核时间',
  approves_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '采购经理审批人',
  approves_time datetime(0) null COMMENT '采购经理审核时间',
  approves_remark varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '采购经理审核说明',
  qc_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '质量经理审批人',
  qc_time datetime(0) null COMMENT '质量经理审批时间',
  qc_remark varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '质量经理审核说明',
  liaison_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '负责审批人',
  liaison_time datetime(0) null COMMENT '负责认审批时间',
  liaison_remark varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '负责人审核说明',
  remark varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '备注',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT  NULL COMMENT '修改人',
  index  index_company_id(company_id),
  index  index_product_id(product_id),
  index  index_create_time(create_time),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '首营品种审批记录' ROW_FORMAT = Dynamic;




  --供应商资质表
DROP TABLE IF EXISTS gsp_supplier_aptitude;
CREATE TABLE gsp_supplier_aptitude  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  supplier_id BIGINT(20) NOT NULL  COMMENT '供应商id',
  zip_code varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '邮编',
  web_site varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '网站',
  annual_sales  decimal(18,4) NULL  COMMENT '年销售额',
  bank varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '开户银行',
  account varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '银行账号',
  ein varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '税号',
  business_type varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '经营方式',
  business varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '经营范围',
  type int not null default 0 COMMENT '0-其他 1-生产企业 2-批发企业 3-零售企业 4-医疗机构',
  contact varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '联系人',
  contact_tel varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '联系人电话',
  quality_leader varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '质量负责人',
  quality_leader_tel varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '质量负责人电话',
  file_code varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '档案编号',
  city_code varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '所属市编码',
  city_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '所属市名称',
  county_code varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '所属县编码',
  county_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '所属县名称',
  production_license varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '经营许可证',
  production_license_validity datetime(0) null  COMMENT '经营许可证有效期',
  tax_registration_certificate varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '税务登记证',
  tax_registration_certificate_validity datetime(0) null  COMMENT '税务登记证有效期',
  legal_power_attorney varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '法人授权委托书',
  legal_power_attorney_validity datetime(0) null  COMMENT '法人授权委托书有效期',
  medical_instrument_license varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '医疗器械生产/经营许可证',
  medical_instrument_license_validity datetime(0) null  COMMENT '医疗器械生产/经营许可证有效期',
  food_license varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '食品流通许可证',
  food_license_validity datetime(0) null  COMMENT '食品流通许可证有效期',
  protein_or_peptides_license varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '蛋白同化制剂,肽类激素批发经营批准文件',
  protein_or_peptides_license_validity datetime(0) null  COMMENT '蛋白同化制剂,肽类激素批发经营批准文件有效期',
  gsp_gmp_license varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT 'GSP/GMP认证证书',
  gsp_gmp_license_validity datetime(0) null  COMMENT 'GSP/GMP认证证书有效期',
  business_license_no varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '营业执照号',
  business_license_no_validity datetime(0) null  COMMENT '营业执照号有效期',
  organization_certificate_code varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '组织机构代码证',
  organization_certificate_code_validity datetime(0) null  COMMENT '组织机构代码证有效期',
  quality_assurance_agreement varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '质量保证协议书',
  quality_assurance_agreement_validity datetime(0) null  COMMENT '质量保证协议书有效期',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT  NULL COMMENT '修改人',
  index  index_supplier_id(supplier_id),
  index  index_create_time(create_time),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '供应商资质表' ROW_FORMAT = Dynamic;

--供应商产品关系
DROP TABLE IF EXISTS gsp_supplier_product;
CREATE TABLE gsp_supplier_product  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  supplier_id BIGINT(20) NOT NULL  COMMENT '供应商id',
  product_id BIGINT(20) NOT NULL  COMMENT '商品id',
  index  index_supplier_id(supplier_id),
  index  index_product_id(product_id),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '供应商产品关系' ROW_FORMAT = Dynamic;


--首营供应商审批记录
DROP TABLE IF EXISTS gsp_company_supplier_first;
CREATE TABLE gsp_company_supplier_first  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  company_id BIGINT(20) NOT NULL  COMMENT '公司id',
  supplier_id BIGINT(20) NOT NULL  COMMENT '供应商id',
  form_status int  not  NULL  COMMENT '表单状态：0-None;1-Other;2-New[新建];3-WaitAudit[待审核];4-Audited[审核通过];];5-NoPass[审核不通过];6-NoPass[取消]',
  reviewer_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '复核员审批人',
  reviewer_time datetime(0) null COMMENT '复核时间',
  approves_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '采购经理审批人',
  approves_time datetime(0) null COMMENT '采购经理审核时间',
  approves_remark varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '采购经理审核说明',
  qc_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '质量经理审批人',
  qc_time datetime(0) null COMMENT '质量经理审批时间',
  qc_remark varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '质量经理审核说明',
  liaison_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '负责审批人',
  liaison_time datetime(0) null COMMENT '负责认审批时间',
  liaison_remark varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '负责人审核说明',
  remark varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '备注',
  sales_man varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '业务员',
  sales_man_tel varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '业务员联系方式',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT  NULL COMMENT '修改人',
  index  index_company_id(company_id),
  index  index_supplier_id(supplier_id),
  index  index_create_time(create_time),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '首营供应商审批记录' ROW_FORMAT = Dynamic;
