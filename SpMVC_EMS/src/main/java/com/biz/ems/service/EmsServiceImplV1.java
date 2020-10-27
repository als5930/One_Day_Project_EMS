package com.biz.ems.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.biz.ems.mapper.EmsDao;

import com.biz.ems.model.EmsVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("emsServiceV1")
public class EmsServiceImplV1 implements EmsService {

	@Autowired
	protected EmsDao emsDao;

	@Autowired
	@Qualifier("fileServiceV1")
	protected FileService fileService;

	@Override
	public List<EmsVO> selectAll() {
		// TODO Auto-generated method stub
		return emsDao.selectAll();
	}

	@Override
	public void insert(EmsVO emsVO) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<String> insert(EmsVO emsVO, MultipartFile file) {

		String fileName1 = fileService.fileUp(file);
		String fileName2 = fileService.fileUp(file);

		emsVO.setS_file1(fileName1);
		emsVO.setS_file2(fileName2);

		emsDao.insert(emsVO);
		return null;

	}

	@Override
	public List<String> insert(EmsVO emsVO, MultipartHttpServletRequest files) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public EmsVO findBySeq(long long_id) {

		return emsDao.findBySeq(long_id);

	}

	@Override
	public int delete(long long_id) {
		EmsVO emsVO = emsDao.findBySeq(long_id);

		String s_file1 = emsVO.getS_file1();
		
		
		if (s_file1 != null) {

			fileService.fileDelete(emsVO.getS_file1());
		} 
	

		
		return emsDao.delete(long_id);
	}

}
