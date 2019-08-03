package com.snail.common.session;

/**
 * @author ：lzq
 * @date ：2019/7/9
 * @desc ：获取session上下文
 */
public class SessionContextHolder {
    private static ThreadLocal<SessionContext> authorizationThreadLocal = new ThreadLocal<>();

    /**
     * 设值
     * @param session
     */
    public static void setSession(SessionContext session) {
        authorizationThreadLocal.set(session);
    }

    /**
     * 获取值
     * @return
     */
    public static SessionContext getSession(){
        return authorizationThreadLocal.get();
    }

    /**
     * 删除值
     */
    public static void remove() {
        authorizationThreadLocal.remove();
    }
}
