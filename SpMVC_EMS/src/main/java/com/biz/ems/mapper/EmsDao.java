package com.biz.ems.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.UpdateProvider;

import com.biz.ems.model.EmsVO;

public interface EmsDao {

	@Select("SELECT * FROM tbl_ems ORDER BY id DESC")
	public List<EmsVO> selectAll();
	
	@Select("SELECT * FROM tbl_ems WHERE id =#{id}")
	public EmsVO findBySeq(long id);
	
	
	//@SelectKey(keyProperty = "id", statement = "SELECT SEQ_EMS.NEXTVAL FROM DUAL",resultType = Long.class,before = true)
	public int insert(EmsVO emsVO);
	
	
	public int update(EmsVO emsVO);
	

	public int delete(long seq);
	
}
