package com.snail.drug.core.domain.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.snail.common.session.SessionContextHolder;
import lombok.Data;

import java.util.Date;

/**
 * @author ：lzq
 * @date ：2019/8/3
 * @desc ：entity 基类
 */
@Data
public class BaseEntity {

    /**
     * 状态 0删除 1有效
     */
    @TableField("del")
    protected Integer del;

    /**
     * 创建人
     */
    @TableField("create_name")
    protected String createName;

    /**
     * 创建时间
     */
    @TableField("create_time")
    protected Date createTime;

    /**
     * 修改人
     */
    @TableField("modify_name")
    protected String modifyName;

    /**
     * 修改时间
     */
    @TableField("modify_time")
    protected Date modifyTime;


    /**
     * 修改审计，记录修改人和时间
     */
    public void recordUpdate() {
        Date now = SessionContextHolder.getSession().getNow();
        String name = SessionContextHolder.getSession().getUserName();
        this.setModifyName(name);
        this.setModifyTime(now);
    }

    /**
     * 添加审计，记录修改人和时间
     */
    public void recordInsert() {
        Date now = SessionContextHolder.getSession().getNow();
        String name = SessionContextHolder.getSession().getUserName();
        this.setModifyName(name);
        this.setCreateName(name);
        this.setModifyTime(now);
        this.setCreateTime(now);
        this.setDel(1);
    }

}
