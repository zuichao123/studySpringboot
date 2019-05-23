package com.example.dao;

import com.example.entry.Person;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface PersonDao {
	//insert into user(id,name,age,gender,email,city)values(int,'sjcustom',int,0,'chao@163.com','henancustom');

	@Insert("insert into person(name,age,gender,email,city) values(#{name},#{age},#{gender},#{email},#{city})")
	int addPerson(Person person);

	@Update("update person set status = -1 where id = #{id}")
	int delPerson(@Param("id") String id);

	@Update("update person set name = #{name},age = #{age},gender = #{gender},email = #{email},city = #{city} where id = #{id}")
	int updatePerson(Person person);

	@Select("select id,name,age,gender,email,city from person where name like #{keyWord} and status != -1 limit #{page}, #{limit}")
	List<Person> queryAllDataFromTable(@Param("page") int page, @Param("limit") int limit, @Param("keyWord") String keyWord);

	@Select("select count(*) from person where name like #{keyWord} and status != -1")
	int queryAllCount(String keyWord);

	@Select("select * from person where id = #{id}")
	Person selectById(String id);

	@Select("select count(#{name}) from person")
	int selectByName(@Param("name") String name);
}
