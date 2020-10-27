package com.biz.ems.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;




@Service("fileServiceV1")
public class FileServiceImplV1 implements FileService{
	
	
	private final String rootFolder;
	
	public FileServiceImplV1() {
		rootFolder = "C:/bizwork/workspace/upload";
	}
	
	@Override
	public String fileUp(MultipartFile file) {
		
		if(file == null) {
			return null;
		}
		
		File dir = new File(rootFolder);
		
		
		if(!dir.exists()) {
			
			dir.mkdirs();
		}
		
	
		String originalFileName = file.getOriginalFilename();
		
		String strUUID = UUID.randomUUID().toString();
		String saveFileName = strUUID + originalFileName;
		
		File saveFile = new File(rootFolder,saveFileName);
		try {
			file.transferTo(saveFile);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return saveFileName;
	}
		
	

	@Override
	public boolean fileDelete(String s_file) {
		boolean ret = false;
		File deleteFile = new File(rootFolder,s_file);
		if(deleteFile.exists()) {
			
			ret = deleteFile.delete();
			
		}
		
		return ret;
	}
	
	
	
}
