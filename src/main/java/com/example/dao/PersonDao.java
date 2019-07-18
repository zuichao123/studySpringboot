package com.example.dao;

import com.example.entry.Person;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface PersonDao {
	//insert into user(id,name,age,gender,email,city)values(int,'sjcustom',int,0,'chao@163.com','henancustom');

	@Insert("insert into person(name,age,gender,email,province,city,createTime,updateTime,status) values(#{name},#{age},#{gender},#{email},#{city},#{createTime},#{createTime},1)")
	void addPerson(Person person);

	@Update("update person set status = -1, updateTime = #{time} where id = #{id}")
	void delPerson(@Param("id") String id, @Param("time") String time);

	@Update("update person set name = #{name},age = #{age},gender = #{gender},email = #{email},province = #{province},city = #{city},status = 1,updateTime = #{updateTime} where name = #{name}")
	void updatePerson(Person person);

	@Select("select id,name,age,gender,email,province,city,updateTime,comments from person where name like #{name} and status != -1 limit #{page}, #{limit}")
	List<Person> queryAllDataFromTable(@Param("page") int page, @Param("limit") int limit, @Param("name") String name);

	@Select("select count(*) from person where name like #{name} and status != -1")
	int queryAllCount(String name);

	@Select("select * from person where id = #{id}")
	Person selectById(String id);

	@Select("select * from person where name = #{name}")
	Person selectPersonByName(@Param("name")String name);

}
