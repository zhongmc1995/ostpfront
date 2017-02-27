package com.peace.ostp.persistence;

import com.peace.ostp.domain.Teacher;

public interface TeacherMapper {
	public Teacher getTeacherWithCourseByID(int ID);
}
