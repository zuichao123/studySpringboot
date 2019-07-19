package com.example.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ProvinceDao {

    @Select("select count(*) from province")
    int selectProvinceCount();

    @Select("select pId from province ORDER by pId")
    List<String> selectAllProvincePId();

    @Select("select pName from province ORDER by pId")
    List<String> selectAllProvince();

    @Select("select pName from province where pId = #{pId}")
    String selectProvinceNameBypId(@Param("pId") String pId);
}
