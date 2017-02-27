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
import com.peace.ostp.domain.BasicInfo;
import com.peace.ostp.service.IBasicInfo;

@Controller
public class NewsController {
	@Autowired
	private IBasicInfo basicInfoService;
	//
	int count = 1;
	@RequestMapping("/getNews")
	public @ResponseBody List<BasicInfo> LoadNews(int page){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("index", (page-1)*5);
		map.put("pageSize", 5);
		List<BasicInfo> basicInfoList = basicInfoService.getAll(map);
		return basicInfoList;
	}
	
	//新闻首页首次加载  加载显示5条数据
	@RequestMapping("/news")
	public String NewsIndex(Model model){
		int totalRecord = basicInfoService.getTotalRecord();
		int pages = (totalRecord%5)==0 ? totalRecord/5:(totalRecord/5)+1;
		model.addAttribute("pages", pages);
		return "pages/news";
	}
	
}
