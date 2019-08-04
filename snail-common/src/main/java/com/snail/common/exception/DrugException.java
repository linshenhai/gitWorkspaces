package com.snail.common.exception;

/**
 * @author ：lzq
 * @date ：2019/8/4
 * @desc ：药店异常
 */
public class DrugException extends  RuntimeException {
    public DrugException(String msg){
        super(msg);
    }
}
