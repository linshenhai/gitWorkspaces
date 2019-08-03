package com.snail.drug.core.costant;

/**
 * @author ：lzq
 * @date ：2019/7/27
 * @desc ：供应商性质
 */
public enum SupplierTypeEnum {
    None(0,"空"),
    Other(1,"其他"),
    Business(2,"商业"),
    Agent(3,"代理"),
    Manufacturer(4,"厂家");

    private int value;
    private String name;
    private SupplierTypeEnum(int value,String name){
      this.value=value;
      this.name=name;
    }

    public int getValue() {
        return value;
    }

    public String getName() {
        return name;
    }}
