package com.peace.ostp.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.peace.ostp.domain.Course;
import com.peace.ostp.domain.Teacher;
import com.peace.ostp.service.ITeacher;
import com.peace.ostp.service.impl.TeacherService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class TeacherTest {
	@Autowired
	ITeacher teacherService;
	/*
	 * spring junit测试
	 * 同时注解加载配置文件*/
	@Test
	public void getTeacher(){
		Teacher teacher = teacherService.getTeacherWithCourseByID(1);
		System.out.print(teacher+" course:[");
		List<Course> courseList = teacher.getCourses();
		for (Course course : courseList) {
			System.out.print(course.getName()+",");
		}
		System.out.println("]");
	}
	/*
	 * main 方法测试
	 * 配置放在classpath下时 ApplicationContext applicationContext = new ClassPathXmlApplicationContext("springMVCForm-servlet.xml");
	 * 放在web-inf下是 ApplicationContext context = 
				new FileSystemXmlApplicationContext("src/main/webapp/WEB-INF/spring/root-context.xml");
		*/
	public static void main(String[] args) {
		ApplicationContext context = 
				new FileSystemXmlApplicationContext("src/main/webapp/WEB-INF/spring/root-context.xml");
		TeacherService teacherService1 = (TeacherService) context.getBean(ITeacher.class);
		Teacher teacher = teacherService1.getTeacherWithCourseByID(2);
		System.out.print(teacher+" course:{");
		List<Course> courseList = teacher.getCourses();
		for (Course course : courseList) {
			System.out.print(course.getName()+",");
		}
		System.out.println("}");
		System.out.println(context.getEnvironment().toString());
	}
}
