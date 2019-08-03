package com.snail.drug.core.service.impl;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.snail.common.session.SessionContextHolder;
import com.snail.drug.core.domain.entity.BaseEntity;

import java.util.Date;


/**
 * @author ：lzq
 * @date ：2019/8/3
 * @desc ：药店基本service
 */
public abstract class BaseService<M extends BaseMapper<T>,T> extends ServiceImpl<M,T> {
    /**
     * 获取当前时间
     * @return
     */
    protected Date getNow(){
        return  SessionContextHolder.getSession().getNow();
    }

    /**
     * 获取登录人姓名
     * @return
     */
    protected  String getLoginName(){
        return SessionContextHolder.getSession().getUserName();
    }

}
