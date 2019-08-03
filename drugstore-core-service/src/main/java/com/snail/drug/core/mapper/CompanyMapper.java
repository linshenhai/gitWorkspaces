package com.snail.drug.core.mapper;

import com.snail.drug.core.domain.entity.Company;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 公司表 Mapper
 *
 * @author lqi
 * @date 2019-08-02 22:49:47
 */
public interface CompanyMapper extends BaseMapper<Company> {

    @Delete({
            "update p_company set del=0 where id=#{id}"
    })
    int deleteLogic(@Param("id") Long id);

    @Delete({
            "<script>",
            "update p_company set del=0 where",
            "id IN",
            "<foreach collection='ids' item='id' open='(' separator=',' close=')'>",
            "#{id}",
            "</foreach>",
            "</script>"
    })
    int deleteLogicBatch(@Param("ids")List<Long> ids);
}
