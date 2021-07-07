package com.callor.gallery.persistence.ext;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.callor.gallery.model.FileDTO;
import com.callor.gallery.persistence.GenericDao;

public interface FileDao extends GenericDao<FileDTO, Long>{
	
	public int insertOrUpdate(FileDTO fileDTO);
	public int insertWithList(
			@Param("filesList")List<FileDTO> filesList);	 // 매개변수명 foreach 컬렉션명 

	public int insertOrUpdateWithList(
			@Param("filesList")List<FileDTO> filesList);
}
