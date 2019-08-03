package cc.mrbird.febs.drug.controller;

import cc.mrbird.febs.common.controller.BaseController;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import java.beans.PropertyEditorSupport;
import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;

/**
 * @author ：lzq
 * @date ：2019/8/3
 * @desc ：药店系统base控制器
 */
public class DrugBaseController extends BaseController {
    private static final DateTimeFormatter LOCAL_DATE_FORMAT = DateTimeFormatter.ofPattern("yyyy-MM-dd") ;
    @InitBinder
    public void initBinder(WebDataBinder binder) {  // 通过此绑定设置处理转换
        binder.registerCustomEditor(java.util.Date.class,new PropertyEditorSupport(){
            @Override
            public void setAsText(String text) throws IllegalArgumentException {
                LocalDate localDate = LocalDate.parse(text,LOCAL_DATE_FORMAT) ; // 设置本地日期实例
                ZoneId zoneId = ZoneId.systemDefault() ;
                Instant instant = localDate.atStartOfDay().atZone(zoneId).toInstant() ;
                super.setValue(java.util.Date.from(instant)); // 字符串与日期转换
            }
        });
    }
}
