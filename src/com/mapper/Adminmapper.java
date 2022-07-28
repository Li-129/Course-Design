package com.mapper;

import com.vo.Admin;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface Adminmapper {
    @Select("select * from admin where `adminAccount`=#{a}")
    public Admin search(@Param("a") int adminAccount);
}
