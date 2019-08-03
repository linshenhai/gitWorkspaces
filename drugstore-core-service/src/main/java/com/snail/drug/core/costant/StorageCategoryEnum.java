package com.snail.drug.core.costant;

/**
 * @author ：lzq
 * @date ：2019/7/27
 * @desc ：存储类别
 */
public enum StorageCategoryEnum {

    Refrigeration(1, "冷藏"),

    Cool(2, "阴凉"),

    ChineseMedicine(3, "中药库"),

    NormalTemp(4, "常温"),

    Instrument(5, "器械");

    private int value;
    private String name;

    StorageCategoryEnum(int value, String name) {
        this.value = value;
        this.name = name;
    }

    public int getValue() {
        return value;
    }

    public String getName() {
        return name;
    }}
