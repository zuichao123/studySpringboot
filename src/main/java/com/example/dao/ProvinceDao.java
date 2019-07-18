package com.example.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ProvinceDao {

    @Select("select count(*) from province")
    int selectProvinceCount();

    @Select("select pName from province")
    List<String> selectAllProvince();

    @Select("select pName from province where pId = #{pId}")
    String selectProvinceNameBypId(@Param("pId") String pId);
}
