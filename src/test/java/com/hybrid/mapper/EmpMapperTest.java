package com.hybrid.mapper;

import java.util.List;

import org.springframework.boot.SpringApplication;
import org.springframework.context.ConfigurableApplicationContext;

import com.hybrid.MosaicWebApplication;
import com.hybrid.domain.Emp;

public class EmpMapperTest {

	public static void main(String[] args) {
		ConfigurableApplicationContext ctx = SpringApplication.run(MosaicWebApplication.class, args);
		
		try{
			EmpMapper mapper = ctx.getBean(EmpMapper.class);
			mapper.delete(8000);
			
			//Insert
			
			mapper.insert(new Emp(8000, "Sehan", "Developer", 7839, null, 2800, 0, 40));
			
			Emp e = mapper.selectByDeptno(8000);
			System.out.println("Insert ==> " + e);
			
			List<Emp> emps = mapper.selectAll();
			emps.forEach(emp -> {
				System.out.println(emp);
			});
			
			//Update
			
			mapper.update(new Emp(8000, "Sehan", "Ad Developer", 7839, null, 3000, 0, 40));
			e = mapper.selectByDeptno(8000);
			System.out.println("Update == > " + e);
			
			emps = mapper.selectAll();
			emps.forEach(emp -> {
				System.out.println(emp);
			});
			
			//Delete
			
			e = mapper.selectByDeptno(8000);
			System.out.println("Delete == > " + e);
			mapper.delete(8000);
			
			emps = mapper.selectAll();
			emps.forEach(emp -> {
				System.out.println(emp);
			});
		}finally{
			ctx.close();
		}

	}

}
