package com.snail.common.session;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.List;

/**
 * @author ：lzq
 * @date ：2019/7/9
 * @desc ：session上下文
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class SessionContext {
    /**
     * 用户id
     */
    private Long userId;
    /**
     * 用户名
     */
    private String userName;
    /**
     * 公司id
     */
    private Long companyId;
    /**
     * 药店id
     */
    private Long storeId;
    /**
     * 当前时间
     */
    private Date now;
}