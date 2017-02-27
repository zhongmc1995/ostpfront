package com.peace.ostp.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.peace.ostp.domain.BasicInfo;
import com.peace.ostp.domain.Carousel;
import com.peace.ostp.domain.PhotoPhotoGraphy;
import com.peace.ostp.domain.TripTravelInfo;
import com.peace.ostp.exception.CustomException;
import com.peace.ostp.service.IBasicInfo;
import com.peace.ostp.service.ICarousel;
import com.peace.ostp.service.IPhotoPhotoGraphy;
import com.peace.ostp.service.ITripInfo;

/**
 * @classname IndexController
 * @author ZMC
 * @time 2016-12-29
 * 
 */
@Controller
public class IndexController {
	@Autowired
	private ICarousel carouselService;

	@Autowired
	private IPhotoPhotoGraphy photoGraphyService;

	@Autowired
	private ITripInfo itripInfo;

	@Autowired
	private IBasicInfo basicInfoService;
	//localhost:8080/ostp/
	@RequestMapping("/")
	public String index(Model model) {
		// 轮播图
		List<Carousel> carouselList = carouselService.getAllCarousel();
		model.addAttribute("carouselList", carouselList);

		// 新闻
		List<BasicInfo> infoList = basicInfoService.getAllBasicInfo();
		model.addAttribute("infoList", infoList);
		model.addAttribute("infoSize", infoList.size());
		//摄影
		List<PhotoPhotoGraphy> photoGraphieList = new ArrayList<PhotoPhotoGraphy>();
		Map<String, List<PhotoPhotoGraphy>> photoGraphieMap = new HashMap<String, List<PhotoPhotoGraphy>>();
		for (int i = 0; i < 3; i++) {
			photoGraphieList = photoGraphyService.getGroupPhotoGraphie(i * 4);
			photoGraphieMap.put("map" + i, photoGraphieList);
		}
		model.addAttribute("photoGraphieMap", photoGraphieMap);
		
		//攻略
		List<TripTravelInfo> tripTravelInfoList = itripInfo.getTripInfosList();
		model.addAttribute("TripTravelInfoList", tripTravelInfoList);
		
		return "index";
	}
	
	/**
	 * @throws Exception
	 * 全局异常处理测试
	 */
	/*@RequestMapping("/test")
	public void test() throws Exception{
		 throw new CustomException("商品的修改信息不存在!");
	}*/
}
