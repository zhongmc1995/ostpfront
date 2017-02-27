package com.peace.ostp.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.peace.ostp.domain.BasicSportType;
import com.peace.ostp.domain.CourseInfo;
import com.peace.ostp.service.IBasicSportType;
import com.peace.ostp.service.ICourseInfoService;
import com.peace.ostp.util.Page;

@Controller
public class TutoriaController {
	@Autowired
	private ICourseInfoService courseInfoService;
	@Autowired
	private IBasicSportType iBasicSportType;
	//
	int count = 1;
	
	@RequestMapping("/getPages")
	public @ResponseBody Object LoadTutorialPages(String sporttypeid,Model model){
		/**
		 * 获取总页数并返回
		 */
		Map<String, Object> map = new HashMap<String, Object>();	
		map.put("sporttypeid", sporttypeid);	
		int totalRecord = courseInfoService.Counts(map);
		int pages = (totalRecord%12)==0 ? totalRecord/12:(totalRecord/12)+1;	
		return pages;
	}
	
	@RequestMapping("/getData")
	public @ResponseBody Object LoadTutorial(int page,String sporttypeid,Model model){
		Map<String, Object> map = new HashMap<String, Object>();	
		map.put("sporttypeid", sporttypeid);			
		/**
		 * 按照运动类型查找课程信息
		 */
		map.put("index", (page-1)*12);
		map.put("pageSize", 12);
		List<CourseInfo> courseList = courseInfoService.GetAllCourseInfo(map);
		return courseList;
	}
	
	
	
	//行程首页首次加载  加载显示12条数据
	@RequestMapping("/tutorial")
	public String TutorialIndex(Model model){
		/**
		 * 加载目录分类
		 */
		List<BasicSportType> sporttypelist = iBasicSportType.getAllSportType();
		model.addAttribute("sporttypelist", sporttypelist);
		/**
		 * 获取总页数并返回
		 */
		int totalRecord = courseInfoService.getTotalRecord();
		int pages = (totalRecord%12)==0 ? totalRecord/12:(totalRecord/12)+1;
		model.addAttribute("pages", pages);
		return "pages/tutorial";
	}
	
	//3级页面要获取实体对象
	@RequestMapping("/tutorial_detail")
	public String TutorialDetail(String courseid,Model model){
		CourseInfo courseInfo = courseInfoService.selectByPrimaryKey(courseid);
		model.addAttribute("courseInfo", courseInfo);
		return "pages/tutorial_datail";
	}
	
}
