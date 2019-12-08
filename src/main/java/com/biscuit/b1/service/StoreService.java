package com.biscuit.b1.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.biscuit.b1.dao.StoreDAO;
import com.biscuit.b1.model.StoreVO;
import com.biscuit.b1.util.FileSaver;

@Service
public class StoreService {

	@Inject
	private StoreDAO storeDAO;
	
	@Inject
	private FileSaver fileSaver;
	
	public int storeDelete(StoreVO storeVO) throws Exception {
		return storeDAO.storeDelete(storeVO);
	}
	
	public int storeUpdate(StoreVO storeVO) throws Exception {
		return storeDAO.storeUpdate(storeVO);
	}
	
	public int storeWrite(StoreVO storeVO, MultipartFile file, HttpSession session) throws Exception {
		String realPath = session.getServletContext().getRealPath("resources/upload/store");

		if(file != null) {
			String fileName = fileSaver.save(realPath, file);
			storeVO.setStore_img(fileName);
			storeVO.setStore_thumbimg("th_"+fileName);
		}
		
		return storeDAO.storeWrite(storeVO);
	}
	
	public StoreVO storeSelect(StoreVO storeVO) throws Exception {
		return storeDAO.storeSelect(storeVO);
	}
	
	public List<StoreVO> storeList(StoreVO storeVO) throws Exception {
		return storeDAO.storeList(storeVO);
	}
}
