package com.biz.ems.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;



public interface FileService {

	
	public String fileUp(MultipartFile file);

	public boolean fileDelete(String s_file);




	
}
