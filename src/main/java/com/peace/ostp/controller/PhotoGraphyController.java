package com.peace.ostp.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.peace.ostp.domain.PhotoPhotoGraphy;
import com.peace.ostp.service.IPhotoPhotoGraphy;


@Controller
public class PhotoGraphyController {
	
	@Autowired
	private IPhotoPhotoGraphy photoGraphyService;
	@RequestMapping(value="/photo")
	public String photo(Model model) {
		int totalPage = photoGraphyService.getTotalRecord()/12;
		model.addAttribute("totalPage", totalPage);
		return "pages/photo";
	}
	
	@RequestMapping(value="/getPhoto")
	@ResponseBody
	public List<PhotoPhotoGraphy> getData(Model model,int page) {
		List<PhotoPhotoGraphy> photoGraphieList = new ArrayList<PhotoPhotoGraphy>();
		photoGraphieList = photoGraphyService.selectPhotoGraphyByPage((page-1)*12,12);
		return photoGraphieList;
	}
	
	
}
