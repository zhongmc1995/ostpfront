package com.peace.ostp.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.peace.ostp.domain.Teacher;
import com.peace.ostp.persistence.TeacherMapper;
import com.peace.ostp.service.ITeacher;

@Service
public class TeacherService implements ITeacher {
	
	@Autowired TeacherMapper teacherMapper;
	@Override
	public Teacher getTeacherWithCourseByID(int ID) {
		// TODO Auto-generated method stub
		return teacherMapper.getTeacherWithCourseByID(ID);
	}

}
