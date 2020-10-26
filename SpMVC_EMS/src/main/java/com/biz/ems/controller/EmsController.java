package com.biz.ems.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.ems.model.EmsVO;
import com.biz.ems.service.EmsService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value = "/ems")
public class EmsController {
	
	
	@Autowired
	@Qualifier("emsServiceV1")
	private  EmsService emsService;
	

	
	
	@RequestMapping(value = "/list", method=RequestMethod.GET)
	public String list(Model model) {
		
		List<EmsVO> emsList = emsService.selectAll();
		
		model.addAttribute("EMS_LIST",emsList);
		
		return "ems/list";
	}
}
