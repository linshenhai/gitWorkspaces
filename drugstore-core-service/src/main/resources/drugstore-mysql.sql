--公司
DROP TABLE IF EXISTS p_company;
CREATE TABLE p_company  (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  code varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编码',
  name varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '企业名称',
  short_name varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '企业简称',
  legal_representative varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '法人',
  leader varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '企业负责人',
  quality_leader varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '质量负责人',
  pharmacy_personnel varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '药学技术人员',
  registered_address varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '注册地址',
  license_key varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '许可证号',
  license_validity  datetime(0) NULL COMMENT '许可证有效期',
   business_license_no varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '营业执照号',
   business_license_validity datetime(0) NULL COMMENT '营业执照号有效期',
   file_no varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '档案管理编号',
   gsp_no varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT 'GSP证号',
   gsp_validity  datetime(0) NULL COMMENT 'GSP证有效期',
   contact varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '联系人',
   contact_tel varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '联系电话',
   fax varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '传真',
  email varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '邮箱',
  status int  NOT NULL DEFAULT 0 COMMENT '状态 0锁定 1有效',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改人',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公司表' ROW_FORMAT = Dynamic;
--药店表
DROP TABLE IF EXISTS p_store;
CREATE TABLE p_store  (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT '药店ID',
  code varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '药店编码',
  name varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '药店名称',
  address varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '地址',
  contact varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '联系人',
  contact_tel varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '联系电话',
  company_id bigint(20)  NULL COMMENT '对于公司',
  status int  NOT NULL DEFAULT 0 COMMENT '状态 0锁定 1有效',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改人',
  index index_company_id(company_id),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '药店表' ROW_FORMAT = Dynamic;

--岗位表
DROP TABLE IF EXISTS p_duty;
CREATE TABLE p_duty  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  code varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL  COMMENT '编号',
  name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL  COMMENT '名称',
  status int  not  NULL  COMMENT '状态：0-失效 1-启用',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT  NULL COMMENT '修改人',
  UNIQUE (code),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位表' ROW_FORMAT = Dynamic;

--经营范围表
DROP TABLE IF EXISTS p_business_scope;
CREATE TABLE p_business_scope  (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  name varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  status int  NOT NULL DEFAULT 0 COMMENT '状态 0锁定 1有效',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改人',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '经营范围表' ROW_FORMAT = Dynamic;
--结算表
DROP TABLE IF EXISTS p_payment_type;
CREATE TABLE p_payment_type  (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  name varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '支付名称',
  status int  NOT NULL DEFAULT 0 COMMENT '状态 0锁定 1有效',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改人',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '结算表' ROW_FORMAT = Dynamic;
--产品类别表
DROP TABLE IF EXISTS p_product_type;
CREATE TABLE p_product_type  (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  name varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品类别',
  status int  NOT NULL DEFAULT 0 COMMENT '状态 0锁定 1有效',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改人',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品类别表' ROW_FORMAT = Dynamic;

--供应商资料表
DROP TABLE IF EXISTS p_supplier_base;
CREATE TABLE p_supplier_base  (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  code varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编码',
  name varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '供应商名称',
  short_name varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简称',
  address varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '地址',
  contact varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '联系人',
  contact_tel varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '联系电话',
  legal_representative varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '法人',
  mobile_phone varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '手机',
  fax varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '传真',
  email varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '邮箱',
  status int  NOT NULL DEFAULT 0 COMMENT '状态 0锁定 1有效',
  credit_amount decimal(18,4)  NULL COMMENT '信用金额',
  credit_number int NULL COMMENT '信用天数',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改人',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '供应商资料表' ROW_FORMAT = Dynamic;

--会员
DROP TABLE IF EXISTS p_vip;
CREATE TABLE p_vip  (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '会员名',
  sex int  NULL COMMENT '性别',
  birth_date datetime(0) NULL COMMENT '出生日期',
  id_card varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '会员卡号',
  registered_store_id bigint(20)  NULL COMMENT '注册门店',
  tel varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '电话号码',
  address varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '地址',
  discount decimal(10,2)   NULL COMMENT '折扣',
  total_point decimal(18,2)  NULL COMMENT '累计积分',
  use_point decimal(18,2)  NULL COMMENT '使用积分',
  effective_point decimal(18,2)   NULL COMMENT '有效积分',
  last_consume_time  datetime(0) NULL COMMENT '最后消费时间',
  remark  varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '备注',
  status int  NOT NULL DEFAULT 0 COMMENT '状态 0锁定 1有效',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改人',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员表' ROW_FORMAT = Dynamic;

--产品基础信息
DROP TABLE IF EXISTS p_product_base;
CREATE TABLE p_product_base  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  code varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品编码',
  name varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品名称',
  common_name varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT  '通用名称',
  packing varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci  Not NULL COMMENT '规格型号',
  manufacturer varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci Not NULL COMMENT '生产厂家',
  unit varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci  Not NULL COMMENT '单位',
  bar_code varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '国际条码',
  product_type_id bigint(20)  NULL COMMENT '商品类别',
  pinyin_code varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci   NULL COMMENT '拼音首字母',
  pinyin_full_code varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci   NULL COMMENT '拼音全部字母',
  qc_class bigint(20) NULL COMMENT '质检分类(商品类别 product_type_id)',
  storage_category int  NULL COMMENT '贮存类别',
  curing_way int  NULL COMMENT '养护方式',
  curing_period int NULL COMMENT '养护周期',
  medicinal_Parts varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci   NULL COMMENT '药用部位',
  packing_specification varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci   NULL COMMENT '包装规格',
  approval_number varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '批准文号',
  sfda_code varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '药监产品编码',
  standard_code varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '本位码',
  storage varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci   NULL COMMENT '储存条件',
  formulation varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci   NULL COMMENT '剂型',
  mass_day int   NULL COMMENT '有效天数',
  prescription_type int null COMMENT '药品处方类型',
  composition varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci null COMMENT '药品成分',
  quality_standard varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci null COMMENT '质量标准',
  applicable_symptoms varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci null COMMENT '适用症状',
  herbal_medicine TINYINT(1)   NULL COMMENT '是否中药饮片',
  essential TINYINT(1)   NULL COMMENT '是否基本药品',
  imported TINYINT(1)   NULL COMMENT '是否进口药',
  ephedrine TINYINT(1)   NULL COMMENT '是否麻黄碱类',
  doping TINYINT(1)   NULL COMMENT '是否兴奋剂',
  regulation TINYINT(1)   NULL COMMENT '是否电子监管',
  special_management_drug TINYINT(1)   NULL COMMENT '是否特殊管理药品',
  external_use TINYINT(1)   NULL COMMENT '是否外用药品',
  special_make TINYINT(1)   NULL COMMENT '是否含特制剂',
  sports_limit TINYINT(1)   NULL COMMENT '是否运动员慎用药品',
  grouped TINYINT(1)   NULL COMMENT '是否组装产品',
  split TINYINT(1)   NULL COMMENT '是否拆零产品',
  control TINYINT(1)   NULL COMMENT '是否控制销售',
  control_number int   NULL COMMENT '控制销售数量',
  origin varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci null COMMENT '产地',
  status int  NOT NULL DEFAULT 0 COMMENT '状态 0锁定 1有效',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改人',
  UNIQUE (code),
  index  index_product_type_id(product_type_id),
  index  index_qc_class(qc_class),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品基础资料表' ROW_FORMAT = Dynamic;

--产品组装
DROP TABLE IF EXISTS p_product_group;
CREATE TABLE p_product_group  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  master_product_base_id  BIGINT(20) NOT NULL COMMENT '主产品id',
  product_base_id  BIGINT(20) NOT NULL COMMENT '副产品id',
  quantity int not null default 0 COMMENT '副产品组合数量',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '修改人',
  index  index_master_product_base_id(master_product_base_id),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品组装' ROW_FORMAT = Dynamic;

--产品拆零
DROP TABLE IF EXISTS p_product_split;
CREATE TABLE p_product_split  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  product_base_id  BIGINT(20) NOT NULL COMMENT '主产品id',
  split_product_base_id  BIGINT(20) NOT NULL COMMENT '副产品id',
  quantity int not null default 0 COMMENT '副产品组合数量',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '修改人',
  index  index_product_base_id(product_base_id),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品拆零' ROW_FORMAT = Dynamic;

--产品价格信息
DROP TABLE IF EXISTS p_product_price;
CREATE TABLE p_product_price  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  product_base_id  BIGINT(20) NOT NULL COMMENT '产品id',
  store_id  BIGINT(20) NOT NULL COMMENT '药店id',
  market_price decimal(18,4) not null  default 0 COMMENT '市场价格',
  cost_price decimal(18,4) not null  default 0 COMMENT '成本价格',
  sell_price decimal(18,4) not null  default 0 COMMENT '零售价格',
  vip_price decimal(18,4) not null  default 0 COMMENT '会员价格',
  profit_rate decimal(18,4) not null  default 0 COMMENT '毛利',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改人',
  index  index_product_base_id(product_base_id),
  index  index_store_id(store_id),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品价格信息' ROW_FORMAT = Dynamic;

--产品操作日记表
DROP TABLE IF EXISTS p_product_log;
CREATE TABLE p_product_log  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  product_base_id  BIGINT(20) NOT NULL COMMENT '产品id',
  product_code varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci Not NULL COMMENT '产品编码',
  product_name varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品名称',
  operate_type int not null  default 0 COMMENT '操作类型',
  description text  NOT NULL COMMENT '操作描述',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  operate_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT  NULL COMMENT '创建人',
  index  index_product_base_id(product_base_id),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品操作日记表' ROW_FORMAT = Dynamic;

--采购安全库存
DROP TABLE IF EXISTS p_purchase_safe_stock;
CREATE TABLE p_purchase_safe_stock  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  store_id BIGINT(20) NOT NULL  COMMENT '药店id',
  product_base_id  BIGINT(20) NOT NULL COMMENT '产品id',
  up_day int   NULL  COMMENT '库存上限天数',
  up_stock int   NULL  COMMENT '库存上限',
  down_day int   NULL  COMMENT '库存下限天数',
  down_stock int   NULL  COMMENT '库存下限',
  sale_day int   NULL  COMMENT '需要计算销售天数',
  day_avg_sale int   NULL  COMMENT '平均天销售数量',
  last_quanity int   NULL  COMMENT '上一次计算数量',
  status int not null default 0 COMMENT '状态 0 ：关闭， 1 启用',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改人',
  index  index_product_base_id(product_base_id),
  index  index_store_id(store_id),
  index index_create_time(create_time),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '采购安全库存' ROW_FORMAT = Dynamic;

--采购计划单
DROP TABLE IF EXISTS p_purchase_plan_form;
CREATE TABLE p_purchase_plan_form  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  store_id BIGINT(20) NOT NULL  COMMENT '药店id',
  number  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL  COMMENT '计划采购单号',
  form_status int  not  NULL  COMMENT '表单状态',
  type int   not null DEFAULT 0  COMMENT '采购类型',
  reason varchar(20)   NULL  COMMENT '原因',
  reviewer_name  varchar(20)  CHARACTER SET utf8 COLLATE utf8_general_ci    NULL  COMMENT '审批人',
  reviewer_time  datetime(0)   NULL  COMMENT '审批时间',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT  NULL COMMENT '修改人',
  UNIQUE (number),
  index  index_store_id(store_id),
  index index_create_time(create_time),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '采购计划单' ROW_FORMAT = Dynamic;

--采购计划单明细
DROP TABLE IF EXISTS p_purchase_plan_list;
CREATE TABLE p_purchase_plan_list  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  form_id  BIGINT(20)  NOT NULL COMMENT '采购计划单id',
  product_base_id  BIGINT(20) NOT NULL COMMENT '产品id',
  plan_quantity int not null DEFAULT 0 COMMENT '计划量',
  confirm_quantity int not null DEFAULT 0 COMMENT '确认量',
  supplier_id  BIGINT(20) NOT NULL COMMENT '供应商id',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '修改人',
  index  index_form_id(form_id),
  index  index_product_base_id(product_base_id),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '采购计划单明细' ROW_FORMAT = Dynamic;

--采购订单
DROP TABLE IF EXISTS p_purchase_order_form;
CREATE TABLE p_purchase_order_form  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  store_id BIGINT(20) NOT NULL  COMMENT '药店id',
  type int  not NULL default 0 COMMENT '采购类型：0-空 2-其他 3-自定义 4-计划',
  number  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL  COMMENT '采购单号',
  supplier_id BIGINT(20) NOT NULL  COMMENT '供应商id',
  closed int not null DEFAULT 0 COMMENT '关闭类型:0-空 1-其他 2-自动 3-过期 4-手动',
  level int not null default 0 COMMENT '紧急程度:0-空 1-其他 2-普通 3-中等 4-紧急',
  rebate int not null DEFAULT 0 COMMENT '是否返利单: 0-否 1-是',
  form_status int  not  NULL  COMMENT '表单状态：0-空 1-其他 2-新建 3-待审批 4-已审批 5-采购中 6-入库中 7-审批不通过 9-完成 10-中止 11-部分到货 12-全部到货',
  reviewer_name  varchar(20)  CHARACTER SET utf8 COLLATE utf8_general_ci    NULL  COMMENT '审批人',
  reviewer_time  datetime(0)   NULL  COMMENT '审批时间',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT  NULL COMMENT '修改人',
  UNIQUE (number),
  index  index_store_id(store_id),
  index  index_supplier_id(supplier_id),
  index index_create_time(create_time),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '采购订单' ROW_FORMAT = Dynamic;

--采购单明细
DROP TABLE IF EXISTS p_purchase_order_list;
CREATE TABLE p_purchase_order_list  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  form_id   BIGINT(20) NOT NULL COMMENT '采购单id',
  product_base_id  BIGINT(20) NOT NULL COMMENT '产品id',
  quantity int not null default 0 COMMENT '采购量',
  price decimal(18,4) not null  default 0 COMMENT '采购价格',
  storage_quantity int not null default 0 COMMENT '入库量',
  form_status int  not  NULL  COMMENT 'None;1-Other;2-New[新建];3-Audited[已审批];4-Building[生成中];5-Storing[入库中];6-Finish[已完成];7-Cancel[已取消])',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '修改人',
  index  index_form_id(form_id),
  index  index_product_base_id(product_base_id),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '采购单明细' ROW_FORMAT = Dynamic;

  --采购操作日记表
DROP TABLE IF EXISTS p_purchase_order_log;
CREATE TABLE p_purchase_order_log  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  purchase_order_form_id  BIGINT(20) NOT NULL COMMENT '采购单id',
  number varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci Not NULL COMMENT '采购单号',
  operate_type int not null  default 0 COMMENT '操作类型',
  description text  NOT NULL COMMENT '操作描述',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  operate_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT  NULL COMMENT '创建人',
  index  index_purchase_order_form_id(purchase_order_form_id),
  index  index_number(number),
  index index_create_time(create_time),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '采购操作日记表' ROW_FORMAT = Dynamic;

--入库订单
DROP TABLE IF EXISTS p_storage_form;
CREATE TABLE p_storage_form  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  store_id BIGINT(20) NOT NULL  COMMENT '药店id',
  type int not null default 0 COMMENT '0-空;1-其他;2-业务采购单入库;3-退货入库单（退货至供应商）',
  purchase_order_form_id BIGINT(20) NOT NULL COMMENT '采购订单id',
  supplier_id BIGINT(20) NOT NULL  COMMENT '供应商id',
  number  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL  COMMENT '入库单号',
  delivery_number  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL  COMMENT '送货单号',
  arrival_time datetime(0) null COMMENT '到货时间',
  acceptance_time datetime(0) null COMMENT '验收时间',
  storage_time datetime(0) null COMMENT '入库时间',
  amount decimal(18,4) not null default 0 COMMENT '总金额',
  arrivaled_temperature_status int null COMMENT '到货温度：0-不合格 1-合格',
  transport_machine  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL  COMMENT '运输工具',
  exit_return int  not null default 0 COMMENT '是否退货,0-非退货 ，1-退货',
  form_status int  not  NULL  COMMENT '表单状态：0-None;1-Other;2-New[收货];3-Acceptance[验收];4-Audited[入库完成];];5-NoPass[拒收]',
  check_name  varchar(20)  CHARACTER SET utf8 COLLATE utf8_general_ci    NULL  COMMENT '验收员',
  reviewer_name  varchar(20)  CHARACTER SET utf8 COLLATE utf8_general_ci    NULL  COMMENT '入库员',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT  NULL COMMENT '修改人',
  UNIQUE (number),
  UNIQUE(delivery_number),
  index  index_store_id(store_id),
  index  index_purchase_order_form_id(purchase_order_form_id),
  index  index_arrival_time(arrival_time),
  index  index_acceptance_time(acceptance_time),
  index  index_storage_time(storage_time),
  index  index_create_time(create_time),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '入库订单' ROW_FORMAT = Dynamic;

--入库单明细
DROP TABLE IF EXISTS p_storage_list;
CREATE TABLE p_storage_list  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  form_id   BIGINT(20) NOT NULL COMMENT '入库单id',
  product_base_id  BIGINT(20) NOT NULL COMMENT '产品id',
  quantity int not null default 0 COMMENT '入库量',
  return_number int null  COMMENT '退货数量',
  price decimal(18,4) not null  default 0 COMMENT '进货价格',
  quality_status int not null default 3 COMMENT '默认1-合格 2-不合格 3-待验',
  arrivaled_temperature decimal(5,2)  null COMMENT '到货',
  reason varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '原因',
  measures varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '处理措施',
  remark varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '备注',
  inventory_id BIGINT(20) null   COMMENT '库存id',
  lot_id BIGINT(20)  null COMMENT '批号id',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '修改人',
  index  index_form_id(form_id),
  index  index_product_base_id(product_base_id),
  index index_lot_id(lot_id),
  index index_inventory_id(inventory_id),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '入库单明细' ROW_FORMAT = Dynamic;

    --入库操作日记表
DROP TABLE IF EXISTS p_storage_form_log;
CREATE TABLE p_storage_form_log  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  storage_form_id  BIGINT(20) NOT NULL COMMENT '入库单id',
  number varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci Not NULL COMMENT '入库单号',
  operate_type int not null  default 0 COMMENT '操作类型',
  description text  NOT NULL COMMENT '操作描述',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  operate_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT  NULL COMMENT '创建人',
  UNIQUE(storage_form_id),
  UNIQUE(number),
  index index_create_time(create_time),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '入库操作日记表' ROW_FORMAT = Dynamic;

--退货单
DROP TABLE IF EXISTS p_return_form;
CREATE TABLE p_return_form  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  store_id BIGINT(20) NOT NULL  COMMENT '药店id',
  type int not null default 0 COMMENT '0-空;1-其他;2-入库退货;3-供应商退货',
  storage_form_id BIGINT(20) NOT NULL COMMENT '入库单id',
  number  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL  COMMENT '退货单号',
  delivery_number  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL  COMMENT '退货快递单号',
  check_time datetime(0) null COMMENT '验收时间',
  check_name  varchar(20)  CHARACTER SET utf8 COLLATE utf8_general_ci    NULL  COMMENT '验收员',
  reviewer_time datetime(0) null COMMENT '复核时间',
  reviewer_name  varchar(20)  CHARACTER SET utf8 COLLATE utf8_general_ci    NULL  COMMENT '复核员',
  amount decimal(18,4) not null default 0 COMMENT '总金额',
  form_status int  not  NULL  COMMENT '表单状态：枚举(0新建 80待审核 90审批通过 99中止)',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT  NULL COMMENT '修改人',
  UNIQUE (number),
  UNIQUE(delivery_number),
  index  index_store_id(store_id),
  index  index_check_time(check_time),
  index  index_reviewer_time(reviewer_time),
  index  index_create_time(create_time),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '退货单' ROW_FORMAT = Dynamic;

--退货单明细
DROP TABLE IF EXISTS p_return_list;
CREATE TABLE p_return_list  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  form_id  BIGINT(20) NOT NULL  COMMENT '退货单id',
  product_base_id  BIGINT(20) NOT NULL COMMENT '产品id',
  quantity int not null default 0 COMMENT '退货量',
  price decimal(18,4) not null  default 0 COMMENT '退货价格',
  type int not null default 3 COMMENT '退货类型（1-其它； 2-包装污染/破损/残缺 3-产品滞销 4-库存积压 5-老批号 6-近效期 7-送错品种 8-送错规格 9-送错厂家 10-送错批号 11-送错数量 12-开错价格 13-质量不合格 14供应商召回 15-供应商要求）',
  remark varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '备注',
  inventory_id BIGINT(20) null   COMMENT '库存id',
  lot_id  BIGINT(20) null COMMENT '批号id',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '修改人',
  index  index_form_id(form_id),
  index  index_product_base_id(product_base_id),
  index  index_inventory_id(inventory_id),
  index  index_lot_id(lot_id),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '退货单明细' ROW_FORMAT = Dynamic;

--退货操作日记表
DROP TABLE IF EXISTS p_return_form_log;
CREATE TABLE p_return_form_log  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  return_form_id  BIGINT(20) NOT NULL COMMENT '退货单id',
  number varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci Not NULL COMMENT '退货单号',
  operate_type int not null  default 0 COMMENT '操作类型',
  description text  NOT NULL COMMENT '操作描述',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  operate_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT  NULL COMMENT '创建人',
  index  storage_form_id(return_form_id),
  index  index_number(number),
  index index_create_time(create_time),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '退货操作日记表' ROW_FORMAT = Dynamic;

--库存流水表
DROP TABLE IF EXISTS p_inventory;
CREATE TABLE p_inventory  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  store_id  BIGINT(20) NOT NULL COMMENT '药店id',
  product_base_id  BIGINT(20) NOT NULL COMMENT '产品id',
  location_id  BIGINT(20) NOT NULL default 0 COMMENT '货架位',
  lot_id  BIGINT(20) NOT NULL COMMENT '产品id',
  base_qty int not null default 0 COMMENT '库存量',
  pack_qty int not null  default 0 COMMENT '包装量',
  pack int not null default 0  COMMENT '包装数',
  lock_qty int not null  default 0 COMMENT '锁定库存量',
  pack_name varchar(10) null   COMMENT '包装数',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '修改人',
  index  index_store_id(store_id),
  index  index_product_base_id(product_base_id),
  index  index_lot_id(lot_id),
  index  index_location_id(location_id),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '库存流水表' ROW_FORMAT = Dynamic;


--批号流水表
DROP TABLE IF EXISTS p_lot;
CREATE TABLE p_lot  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  store_id  BIGINT(20) NOT NULL COMMENT '药店id',
  supplier_id BIGINT(20) NOT NULL COMMENT '供应商id',
  product_base_id  BIGINT(20) NOT NULL COMMENT '产品id',
  code  varchar(10) NOT NULL COMMENT '批号编号',
  qc_date datetime(0) null  COMMENT '验收日期',
  received_date datetime(0) null  COMMENT '收货日期',
  expire_date datetime(0) null  COMMENT '过去日期',
  product_date datetime(0)  null COMMENT '生产日期',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '修改人',
  index  index_store_id(store_id),
  index  index_product_base_id(product_base_id),
  index  index_code(code),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '批号流水表' ROW_FORMAT = Dynamic;


--库存帐页
DROP TABLE IF EXISTS p_stock_account_page;
CREATE TABLE p_stock_account_page  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  store_id  BIGINT(20) NOT NULL COMMENT '药店id',
  inventory_id  BIGINT(20) NOT NULL COMMENT '库存流水id',
  business_id  BIGINT(20) NOT NULL COMMENT '业务id',
  business_code  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '业务单号',
  type int not null default 0 COMMENT '操作类型',
  storage_quantity int not null default 0 COMMENT '入库量',
  storage_price decimal(18,4) not null default 0 COMMENT '入库价格',
  storage_amount decimal(18,4) not null default 0 COMMENT '入库总额',
  export_quantity int not null  default 0 COMMENT '出库量',
  export_price decimal(18,4) not null default 0 COMMENT '出库价格',
  export_amount decimal(18,4) not null default 0 COMMENT '出库总额',
  cost_price decimal(18,4) not null default 0 COMMENT '成本',
  maori decimal(18,4) not null default 0 COMMENT '毛利',
  remark  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '备注',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '修改人',
  index  index_store_id(store_id),
  index  index_business_id(business_id),
  index  index_business_code(business_code),
  index  index_create_time(create_time),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '库存帐页' ROW_FORMAT = Dynamic;


--出库单
DROP TABLE IF EXISTS p_stock_out_form;
CREATE TABLE p_stock_out_form  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  store_id BIGINT(20) NOT NULL  COMMENT '药店id',
  type int not null default 0 COMMENT '0-空;1-其他;2-销售;3-调拨',
  number  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL  COMMENT '出库单号',
  order_code  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL  COMMENT '订单单号',
  order_time  datetime(0)  NULL  COMMENT '下单时间',
  consignee_id BIGINT(20) NOT NULL DEFAULT 0 COMMENT '收货人id',
  consignee_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '收货人',
  consignee_address varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '收货地址',
  consignee_phone varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '收货电话',
  quantity int not null default 0 COMMENT '销售数量',
  cost decimal(18,4)  not null default 0 COMMENT '总成本',
  amount decimal(18,4) not null default 0 COMMENT '总金额',
  maori decimal(18,4) not null default 0 COMMENT '总毛利',
  payment_type_id BIGINT(20) Not NULL COMMENT '支付方式',
  sale_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '销售员',
  reviewer_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '复核员',
  reviewer_time datetime(0) null COMMENT '复核时间',
  exit_return int  not null default 0 COMMENT '是否退货,0-非退货 ，1-退货',
  form_status int  not  NULL  COMMENT '表单状态：0-None;1-Other;2-New[新建];3-WaitAudit[待审核];4-Audited[审核通过];];5-NoPass[审核不通过];6-NoPass[取消]',
  recipe_form_id  BIGINT(20) NULL COMMENT '处方单id',
  remark varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '备注',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT  NULL COMMENT '修改人',
  UNIQUE (number),
  UNIQUE (order_code),
  index  index_store_id(store_id),
  index  index_recipe_form_id(recipe_form_id),
  index  index_consignee_id(consignee_id),
  index  index_payment_type_id(payment_type_id),
  index  index_order_time(order_time),
  index  index_create_time(create_time),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '出库单' ROW_FORMAT = Dynamic;

--出库单明细
DROP TABLE IF EXISTS p_stock_out_list;
CREATE TABLE p_stock_out_list  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  form_id   BIGINT(20) NOT NULL COMMENT '出库单id',
  product_base_id  BIGINT(20) NOT NULL COMMENT '产品id',
  quantity int not null default 0 COMMENT '出库量',
  cost decimal(18,4) not null  default 0 COMMENT '成本价格',
  price decimal(18,4) not null  default 0 COMMENT '出库价格',
  maori decimal(18,4) not null default 0 COMMENT '毛利',
  inventory_id  BIGINT(20) NULL COMMENT '库存流水id',
  lot_id BIGINT(20)  null COMMENT '批号id',
  lot_code varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '批次',
  return_number int null  COMMENT '退货数量',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '修改人',
  index  index_form_id(form_id),
  index  index_product_base_id(product_base_id),
  index index_lot_id(lot_id),
  index index_inventory_id(inventory_id),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '出库单明细' ROW_FORMAT = Dynamic;

    --出库操作日记表
DROP TABLE IF EXISTS p_stock_out_log;
CREATE TABLE p_stock_out_log  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  stock_out_form_id  BIGINT(20) NOT NULL COMMENT '出库单id',
  number varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci Not NULL COMMENT '出库单号',
  operate_type int not null  default 0 COMMENT '操作类型',
  description text  NOT NULL COMMENT '操作描述',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  operate_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT  NULL COMMENT '创建人',
  UNIQUE(stock_out_form_id),
  UNIQUE(number),
  index index_create_time(create_time),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '出库操作日记表' ROW_FORMAT = Dynamic;

--销售退货单
DROP TABLE IF EXISTS p_sale_return_form;
CREATE TABLE p_sale_return_form  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  store_id BIGINT(20) NOT NULL  COMMENT '药店id',
  type int not null default 0 COMMENT '0-空;1-其他;2-销售退货;',
  stock_out_id BIGINT(20) NOT NULL  COMMENT '出库id',
  number  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL  COMMENT '退货单号',
  order_code  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL  COMMENT '订单单号',
  quantity int not null default 0 COMMENT '销售数量',
  cost decimal(18,4)  not null default 0 COMMENT '总成本',
  amount decimal(18,4) not null default 0 COMMENT '总金额',
  maori decimal(18,4) not null default 0 COMMENT '总毛利',
  reviewer_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '复核员',
  reviewer_time datetime(0) null COMMENT '复核时间',
  form_status int  not  NULL  COMMENT '表单状态：0-None;1-Other;2-New[新建];3-WaitAudit[待审核];4-Audited[审核通过];];5-NoPass[审核不通过];6-NoPass[取消]',
  remark varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '备注',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT  NULL COMMENT '修改人',
  UNIQUE (number),
  index  index_order_code (order_code),
  index  index_store_id(store_id),
  index  index_stock_out_id(stock_out_id),
  index  index_create_time(create_time),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '出库单' ROW_FORMAT = Dynamic;

--退货单明细
DROP TABLE IF EXISTS p_sale_return_list;
CREATE TABLE p_sale_return_list  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  form_id   BIGINT(20) NOT NULL COMMENT '退货单id',
  product_base_id  BIGINT(20) NOT NULL COMMENT '产品id',
  quantity int not null default 0 COMMENT '出库量',
  cost decimal(18,4) not null  default 0 COMMENT '成本价格',
  price decimal(18,4) not null  default 0 COMMENT '出库价格',
  maori decimal(18,4) not null default 0 COMMENT '毛利',
  inventory_id  BIGINT(20) NULL COMMENT '库存流水id',
  lot_code varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '批次',
  lot_id BIGINT(20)  null COMMENT '批号id',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '修改人',
  index  index_form_id(form_id),
  index  index_product_base_id(product_base_id),
  index index_lot_id(lot_id),
  index index_inventory_id(inventory_id),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '退货单明细' ROW_FORMAT = Dynamic;


--处方单
DROP TABLE IF EXISTS p_recipe_form;
CREATE TABLE p_recipe_form  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  store_id BIGINT(20) NOT NULL  COMMENT '药店id',
  number  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL  COMMENT '处方单号',
  order_date datetime(0) null COMMENT '开方日期',
  customer_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL  COMMENT '客户名',
  recipe_doctor varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL  COMMENT '处方医师',
  audit_doctor varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL  COMMENT '审方药师',
  audit_date  datetime(0) null COMMENT '审方日期',
  audit_remark varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL  COMMENT '药师批注',
  deploy_personnel varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL  COMMENT '调配人员',
  recipe_source varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL  COMMENT '处方来源',
  recipe_type varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL  COMMENT '处方类型',
  form_status int  not  NULL  COMMENT '表单状态：0-None;1-Other;2-New[新建];3-WaitAudit[待审核];4-Audited[审核通过];];5-NoPass[审核不通过];6-NoPass[取消]',
  tp_is_ys int not null default 0 COMMENT '药品调剂人是否药师',
  sf_is_ys int not null default 0 COMMENT '药品审方人是否药师',
  exit_gz int not null default 0 COMMENT '定点医疗机构是否加盖公章',
  adjust_doctor_type int not null default 0 COMMENT '药品调剂人药师类型',
  review_doctor_type int not null default 0 COMMENT '药品审方人药师类型',
  stock_out_id BIGINT(20) NOT NULL  COMMENT '出库单id',
  floating_ratio int null Comment '上浮比例',
  permanent_recipe int not null default 0 COMMENT '是否永久处方',
  diagnose_result varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL  COMMENT '诊断结果',
  remark varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '备注',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT  NULL COMMENT '修改人',
  UNIQUE (number),
  index  index_store_id(store_id),
  index  index_stock_out_id(stock_out_id),
  index  index_create_time(create_time),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '处方单' ROW_FORMAT = Dynamic;

--处方单明细
DROP TABLE IF EXISTS p_recipe_list;
CREATE TABLE p_recipe_list  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  form_id   BIGINT(20) NOT NULL COMMENT '处方单id',
  product_base_id  BIGINT(20) NOT NULL COMMENT '产品id',
  quantity int not null default 0 COMMENT '出库量',
  usage_and_dosage varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '用法用量',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '修改人',
  index  index_form_id(form_id),
  index  index_product_base_id(product_base_id),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '处方单明细' ROW_FORMAT = Dynamic;


--处方单
DROP TABLE IF EXISTS p_recipe_form;
CREATE TABLE p_recipe_form  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  store_id BIGINT(20) NOT NULL  COMMENT '药店id',
  number  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL  COMMENT '处方单号',
  order_date datetime(0) null COMMENT '开方日期',
  customer_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL  COMMENT '客户名',
  recipe_doctor varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL  COMMENT '处方医师',
  audit_doctor varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL  COMMENT '审方药师',
  audit_date  datetime(0) null COMMENT '审方日期',
  audit_remark varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL  COMMENT '药师批注',
  deploy_personnel varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL  COMMENT '调配人员',
  recipe_source varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL  COMMENT '处方来源',
  recipe_type varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL  COMMENT '处方类型',
  form_status int  not  NULL  COMMENT '表单状态：0-None;1-Other;2-New[新建];3-WaitAudit[待审核];4-Audited[审核通过];];5-NoPass[审核不通过];6-NoPass[取消]',
  tp_is_ys int not null default 0 COMMENT '药品调剂人是否药师',
  sf_is_ys int not null default 0 COMMENT '药品审方人是否药师',
  exit_gz int not null default 0 COMMENT '定点医疗机构是否加盖公章',
  adjust_doctor_type int not null default 0 COMMENT '药品调剂人药师类型',
  review_doctor_type int not null default 0 COMMENT '药品审方人药师类型',
  stock_out_id BIGINT(20) NOT NULL  COMMENT '出库单id',
  floating_ratio int null Comment '上浮比例',
  permanent_recipe int not null default 0 COMMENT '是否永久处方',
  diagnose_result varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL  COMMENT '诊断结果',
  remark varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '备注',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT  NULL COMMENT '修改人',
  UNIQUE (number),
  index  index_store_id(store_id),
  index  index_stock_out_id(stock_out_id),
  index  index_create_time(create_time),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '处方单' ROW_FORMAT = Dynamic;

--处方单明细
DROP TABLE IF EXISTS p_recipe_list;
CREATE TABLE p_recipe_list  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  form_id   BIGINT(20) NOT NULL COMMENT '处方单id',
  product_base_id  BIGINT(20) NOT NULL COMMENT '产品id',
  quantity int not null default 0 COMMENT '出库量',
  usage_and_dosage varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '用法用量',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '修改人',
  index  index_form_id(form_id),
  index  index_product_base_id(product_base_id),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '处方单明细' ROW_FORMAT = Dynamic;


--调拨单
DROP TABLE IF EXISTS p_transfer_form;
CREATE TABLE p_transfer_form  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  to_store_id BIGINT(20) NOT NULL  COMMENT 'to药店id',
  from_store_id BIGINT(20) NOT NULL  COMMENT 'from药店id',
  number  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL  COMMENT '出库单号',
  quantity int not null default 0 COMMENT '调拨数量',
  cost decimal(18,4)  not null default 0 COMMENT '总成本',
  amount decimal(18,4) not null default 0 COMMENT '总金额',
  reviewer_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '复核员',
  reviewer_time datetime(0) null COMMENT '复核时间',
  form_status int  not  NULL  COMMENT '表单状态：0-None;1-Other;2-New[新建];3-WaitAudit[待审核];4-Audited[审核通过];];5-NoPass[审核不通过];6-NoPass[取消]',
  remark varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '备注',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT  NULL COMMENT '修改人',
  UNIQUE (number),
  index  index_to_store_id(to_store_id),
  index  index_from_store_id(from_store_id),
  index  index_create_time(create_time),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '调拨单' ROW_FORMAT = Dynamic;

--调拨单明细
DROP TABLE IF EXISTS p_transfer_list;
CREATE TABLE p_transfer_list  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  form_id   BIGINT(20) NOT NULL COMMENT '调拨单id',
  product_base_id  BIGINT(20) NOT NULL COMMENT '产品id',
  inventory_id  BIGINT(20)  NULL COMMENT '库存流水id',
  lot_id BIGINT(20)  null COMMENT '批号id',
  lot_code varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '批次',
  quantity int not null default 0 COMMENT '调拨量',
  real_quantity int not null default 0 COMMENT '实际量',
  cost decimal(18,4) not null  default 0 COMMENT '成本价格',
  price decimal(18,4) not null  default 0 COMMENT '出库价格',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '修改人',
  index  index_form_id(form_id),
  index  index_product_base_id(product_base_id),
  index index_lot_id(lot_id),
  index index_inventory_id(inventory_id),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '调拨单明细' ROW_FORMAT = Dynamic;

--库存拆零单
DROP TABLE IF EXISTS p_stock_split_form;
CREATE TABLE p_stock_split_form  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  store_id BIGINT(20) NOT NULL  COMMENT '药店id',
  number  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL  COMMENT '拆零单号',
  split_product_id BIGINT(20) NOT NULL  COMMENT '拆零产品id',
  storage_id BIGINT(20)  NULL  COMMENT '入库id',
  stock_out_id BIGINT(20)  NULL  COMMENT '出库id',
  reviewer_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '复核员',
  reviewer_time datetime(0) null COMMENT '复核时间',
  form_status int  not  NULL  COMMENT '表单状态：0-None;1-Other;2-New[新建];3-WaitAudit[待审核];4-Audited[审核通过];];5-NoPass[审核不通过];6-NoPass[取消]',
  remark varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '备注',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT  NULL COMMENT '修改人',
  UNIQUE (number),
  index  index_split_product_id(split_product_id),
  index  index_storage_id(storage_id),
  index  index_stock_out_id(stock_out_id),
  index  index_create_time(create_time),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '库存拆零单' ROW_FORMAT = Dynamic;


--库存组装单
DROP TABLE IF EXISTS p_stock_group_form;
CREATE TABLE p_stock_group_form  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  store_id BIGINT(20) NOT NULL  COMMENT '药店id',
  number  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL  COMMENT '组装单号',
  group_product_id BIGINT(20) NOT NULL  COMMENT '组合产品id',
  storage_id BIGINT(20)  NULL  COMMENT '入库id',
  stock_out_id BIGINT(20)  NULL  COMMENT '出库id',
  reviewer_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '复核员',
  reviewer_time datetime(0) null COMMENT '复核时间',
  form_status int  not  NULL  COMMENT '表单状态：0-None;1-Other;2-New[新建];3-WaitAudit[待审核];4-Audited[审核通过];];5-NoPass[审核不通过];6-NoPass[取消]',
  remark varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '备注',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT  NULL COMMENT '修改人',
  UNIQUE (number),
  index  index_group_product_id(group_product_id),
  index  index_storage_id(storage_id),
  index  index_stock_out_id(stock_out_id),
  index  index_create_time(create_time),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '库存组装单' ROW_FORMAT = Dynamic;


--盘点单
DROP TABLE IF EXISTS p_stock_count_form;
CREATE TABLE p_stock_count_form  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  store_id BIGINT(20) NOT NULL  COMMENT '药店id',
  number  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL  COMMENT '盘点单号',
  quantity int null COMMENT '数量',
  cost decimal(18,4)  not null default 0 COMMENT '总成本',
  amount decimal(18,4) not null default 0 COMMENT '总金额',
  reviewer_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '复核员',
  reviewer_time datetime(0) null COMMENT '复核时间',
  form_status int  not  NULL  COMMENT '表单状态：0-None;1-Other;2-New[新建];3-WaitAudit[待审核];4-Audited[审核通过];];5-NoPass[审核不通过];6-NoPass[取消]',
  remark varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '备注',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT  NULL COMMENT '修改人',
  UNIQUE (number),
  index  index_store_id(store_id),
  index  index_create_time(create_time),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '盘点单' ROW_FORMAT = Dynamic;

--盘点单明细
DROP TABLE IF EXISTS p_stock_count_list;
CREATE TABLE p_stock_count_list  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  form_id   BIGINT(20) NOT NULL COMMENT '盘点单id',
  product_base_id  BIGINT(20) NOT NULL COMMENT '产品id',
  inventory_id  BIGINT(20) not  NULL COMMENT '库存流水id',
  lot_id BIGINT(20)  null COMMENT '批号id',
  lot_code varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '批次',
  system_quantity int not null default 0 COMMENT '系统库存量',
  real_quantity int not null default 0 COMMENT '实际量',
  cost decimal(18,4)  null  default 0 COMMENT '成本价格',
  price decimal(18,4)  null  default 0 COMMENT '出库价格',
  type  int null default 0 COMMENT '盘点盈亏状态: 0-空 1-其他 2-盘盈 3-盘亏',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '修改人',
  index  index_form_id(form_id),
  index  index_product_base_id(product_base_id),
  index index_lot_id(lot_id),
  index index_inventory_id(inventory_id),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '盘点单明细' ROW_FORMAT = Dynamic;


--库存调整单
DROP TABLE IF EXISTS p_stock_adjust_form;
CREATE TABLE p_stock_adjust_form  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  store_id BIGINT(20) NOT NULL  COMMENT '药店id',
  type int not null default 0  COMMENT '类型: 0-空 1-其他 2-药品报损 3-药品报溢 4-盘点报损 5-盘点报溢',
  number  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL  COMMENT '库存调整单号',
  quantity int null COMMENT '数量',
  cost decimal(18,4)  not null default 0 COMMENT '总成本',
  amount decimal(18,4) not null default 0 COMMENT '总金额',
  reviewer_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL  COMMENT '复核员',
  reviewer_time datetime(0) null COMMENT '复核时间',
  form_status int  not  NULL  COMMENT '表单状态：0-None;1-Other;2-New[新建];3-WaitAudit[待审核];4-Audited[审核通过];];5-NoPass[审核不通过];6-NoPass[取消]',
  remark varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '备注',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT  NULL COMMENT '修改人',
  UNIQUE (number),
  index  index_store_id(store_id),
  index  index_create_time(create_time),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '库存调整单' ROW_FORMAT = Dynamic;

--库存调整单明细
DROP TABLE IF EXISTS p_stock_adjust_list;
CREATE TABLE p_stock_adjust_list  (
  id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  form_id   BIGINT(20) NOT NULL COMMENT '库存调整单id',
  product_base_id  BIGINT(20) NOT NULL COMMENT '产品id',
  inventory_id  BIGINT(20) not  NULL COMMENT '库存流水id',
  lot_id BIGINT(20)  null COMMENT '批号id',
  lot_code varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '批次',
  quantity int not null default 0 COMMENT '数量',
  cost decimal(18,4)  null  default 0 COMMENT '成本价格',
  amount decimal(18,4)  null  default 0 COMMENT '总价格',
  reason varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '原因',
  del int  NOT NULL DEFAULT 1 COMMENT '状态 0删除 1有效',
  create_time datetime(0) NOT NULL DEFAULT now() COMMENT '创建时间',
  modify_time  datetime(0) NOT NULL DEFAULT now() COMMENT '修改时间',
  create_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '创建人',
  modify_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL COMMENT '修改人',
  index  index_form_id(form_id),
  index  index_product_base_id(product_base_id),
  index index_lot_id(lot_id),
  index index_inventory_id(inventory_id),
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '库存调整单明细' ROW_FORMAT = Dynamic;




























