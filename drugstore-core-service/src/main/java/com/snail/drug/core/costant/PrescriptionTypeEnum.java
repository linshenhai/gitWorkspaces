package com.snail.drug.core.costant;

/**
 * @author ：lzq
 * @date ：2019/7/27
 * @desc ：药品处方类型
 */
public enum  PrescriptionTypeEnum {
    Null(0, "空"),
    Other(1, "其他"),
    RedOTC(2, "非处方（红OTC）"),
    GreenOTC(3, "非处方（绿OTC）"),
    RxDrug(4, "处方药"),
    ControlledDrugs(5, "管制处方药"),
    NonMedicine(5, "非药品");

    private int value;
    private String name;

    PrescriptionTypeEnum(int value, String name) {
        this.value = value;
        this.name = name;
    }

    public int getValue() {
        return value;
    }

    public String getName() {
        return name;
    }
}
