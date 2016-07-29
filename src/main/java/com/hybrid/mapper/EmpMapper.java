package com.hybrid.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.hybrid.domain.Emp;

@Mapper
public interface EmpMapper {
	@Select("select * from emp")
	List<Emp> selectAll();
	
	@Select("select * from emp where empno=#{empno}")
	Emp selectByDeptno(int empno);
	
	@Insert("insert into emp values(#{empno}, #{ename}, #{job}, #{mgr}, #{hiredate}, #{sal}, #{comm}, #{deptno})")
	int insert(Emp emp);
	
	@Update("update emp set ename=#{ename}, job=#{job}, mgr=#{mgr}, hiredate=#{hiredate}, sal=#{sal}, comm=#{comm}, deptno=#{deptno} where empno=#{empno}")
	int update(Emp emp);
//	@Update("update dept "
//	         + "   set dname=#{dname}, "
//	         + "loc=#{loc} "
//	         + "where deptno=#{deptno}")
//	int update(Dept dept);
	
	@Delete("delete from emp where empno=#{empno}")
	int delete(int empno);
}
