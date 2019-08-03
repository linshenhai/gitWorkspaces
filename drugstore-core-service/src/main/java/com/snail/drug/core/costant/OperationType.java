package com.snail.drug.core.costant;

/**
 * @Author: Chase、Lou
 * @Description:操作类型（业务日志中使用）
 * @Date: Created in 17:49 2018/11/28
 * @ModifiedBy:
 */
public class OperationType  {
    public static final int Null = 0;
    public static final String NullString ="空";
    public static final int Other = 1;
    public static final String OtherString = "其他";
    public static final int Add = 2;
    public static final String AddString = "新增";
    public static final int Update = 3;
    public static final String UpdateString = "修改";
    public static final int Delete = 4;
    public static final String DeleteString = "删除";


    public static String getEnumString(int i){
        switch (i)
        {
            case Other:
                return OtherString;
            case Add:
                return AddString;
            case Update:
                return UpdateString;
            case Delete:
                return DeleteString;
            default:
            case Null:
                return NullString;
        }
    }

    public static String getDesc(int value) {
        return getEnumString(value);
    }
}
