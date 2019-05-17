package com.example.dao;

import com.example.entry.Student;
import org.apache.ibatis.annotations.*;

import java.util.HashMap;
import java.util.List;

@Mapper
public interface StudentDao {
	@Select("select * from user where id=${id}")
	public Student searchById(@Param("id") String id);

	@Select("select * from user")
	public List<Student> allStudent();

	@Insert("insert into user values(#{id},#{name},#{age},#{gender},#{email},#{city})")
	public int insertStudent(Student student);

	@Delete("delete from user where id = #{id}")
	public int deleteStudent(@Param("id") String id);

	@Update("update user set id=#{id},name=#{name},age=#{age},gender=#{gender},email=#{email},city=#{city}")
	public int updateStudent(HashMap<String, Object> map);
}
