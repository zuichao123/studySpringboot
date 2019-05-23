package com.example.dao;

import org.apache.ibatis.annotations.Mapper;

import com.example.entry.Admin;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface AdminDao {
    @Select("select * from admin where name=#{name}")
	public Admin loginCheck(@Param("name") String name);
}