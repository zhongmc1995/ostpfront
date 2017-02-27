package com.peace.ostp.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.peace.ostp.domain.BasicInfo;
import com.peace.ostp.domain.TripTravelInfo;
import com.peace.ostp.service.ITripInfo;

@Controller
public class TripController {
	@Autowired
	private ITripInfo tripInfoService;
	//
	int count = 1;
	@RequestMapping("/getTrip")
	public @ResponseBody List<TripTravelInfo> LoadTutorial(int page){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("index", (page-1)*5);
		map.put("pageSize", 5);
		List<TripTravelInfo> tripInfoList = tripInfoService.getTripInfosList(map);
		return tripInfoList;
	}
	
	//新闻首页首次加载  加载显示5条数据
	@RequestMapping("/trip")
	public String TutorialIndex(Model model){
		count = 1;
		int totalRecord = tripInfoService.getTotalRecord();
		int pages = (totalRecord%5)==0 ? totalRecord/5:(totalRecord/5)+1;
		model.addAttribute("pages", pages);
		return "pages/trip";
	}
	
}
