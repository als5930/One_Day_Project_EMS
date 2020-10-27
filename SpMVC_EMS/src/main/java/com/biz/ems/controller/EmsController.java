package com.biz.ems.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.biz.ems.model.EmsVO;
import com.biz.ems.service.EmsService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value = "/ems")
public class EmsController {

	@Autowired
	@Qualifier("emsServiceV1")
	private EmsService emsService;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) {

		List<EmsVO> emsList = emsService.selectAll();

		model.addAttribute("EMS_LIST", emsList);

		return "ems/list";
	}

	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String write() {

		return "ems/write";
	}

	
	@RequestMapping(value = "/write", method=RequestMethod.POST)
	public String write(EmsVO emsVO,@RequestParam(name="file",required=false) MultipartFile file) {
	
		log.debug("업로드 파일 {}",file.getOriginalFilename());
	
		List<String> fileName1 = emsService.insert(emsVO, file);
		List<String> fileName2 = emsService.insert(emsVO, file);
		
		
		return "redirect:/ems/list";
	}
	
	@RequestMapping(value="/detail/{id}",method=RequestMethod.GET)
	public String detail(@PathVariable("id") String id,Model model) {
		
		long long_id = Long.valueOf(id);
		EmsVO emsVO = emsService.findBySeq(long_id);
		
		model.addAttribute("EMSVO",emsVO);
		return "ems/detail";
	}
	
	@RequestMapping(value = "/{id}/delete", method=RequestMethod.GET)
	public String delete(@PathVariable("id") String id) {
		
		long long_id = Long.valueOf(id);
		emsService.delete(long_id);
		return "redirect:/ems/list";
	}
	
}
