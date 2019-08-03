package cc.mrbird.febs.common.configure;

import cc.mrbird.febs.system.entity.User;
import com.google.common.base.Splitter;
import com.snail.common.session.SessionContext;
import com.snail.common.session.SessionContextHolder;
import org.apache.shiro.SecurityUtils;
import org.springframework.context.annotation.Configuration;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;

/**
 * @author ：lzq
 * @date ：2019/8/3
 * @desc ：药店web拦截器
 */
@Configuration
public class DrugWebConfig  implements WebMvcConfigurer {
    @Override
    public void addInterceptors(InterceptorRegistry registry){
        registry.addInterceptor(new HandlerInterceptor(){
            @Override
            public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

                initSession(request);
                return true;
            }

            private void initSession(HttpServletRequest request){
                SessionContext sessionContext=new SessionContext();
                String storeId= request.getHeader("storeId");
                if(StringUtils.isEmpty(storeId)){
                    sessionContext.setStoreId(0L);
                }else{
                    sessionContext.setStoreId(Long.parseLong(storeId));
                }
                User user=(User)  SecurityUtils.getSubject().getPrincipal();
                sessionContext.setNow(new Date());
                sessionContext.setUserId(user.getUserId());
                sessionContext.setUserName(user.getUsername());
                SessionContextHolder.setSession(sessionContext);
            }

            @Override
            public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
                SessionContextHolder.remove();
            }
        })
                .addPathPatterns("/drug/**");
    }
}
