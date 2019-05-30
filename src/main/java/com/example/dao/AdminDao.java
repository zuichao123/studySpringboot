package com.example.dao;

import com.example.entry.Admin;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface AdminDao {
    @Select("select name,password from admin where name=#{name}")
	Admin loginCheck(@Param("name") String name);

    //insert into admin(id,name,password,xingming,beizhu,status)values(int,'sjcustom','sjcustom','sjcustom','henancustom',int);

    @Insert("insert into admin(name,password,xingming,beizhu,createTime,status) values(#{name},#{password},#{xingming},#{beizhu},#{createTime},1)")
    void addAdmin(Admin admin);

    @Update("update admin set status = -1,updateTime = #{time} where id = #{id}")
    void delAdmin(@Param("id") String id, @Param("time") String time);

    @Update("update admin set name = #{name},xingming = #{xingming},beizhu = #{beizhu},status=1,updateTime = #{updateTime} where name = #{name}")
    void updateAdmin(Admin admin);

    @Select("select id,name,password,xingming,beizhu from admin where name like #{name} and status != -1 limit #{page}, #{limit}")
    List<Admin> queryAllDataFromTable(@Param("page") int page, @Param("limit") int limit, @Param("name") String name);

    @Select("select count(*) from admin where name like #{name} and status != -1")
    int queryAllCount(String name);

    @Select("select * from admin where id = #{id}")
    Admin selectAdminById(String id);

    @Select("select * from admin where name = #{name}")
    Admin selectAdminByName(@Param("name")String name);

    @Update("update admin set password = #{password} where id = #{id}")
    int updatePassword(@Param("id") String id, @Param("password")String password);

}