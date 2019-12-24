package com.biscuit.b1.service;

import java.io.File;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.biscuit.b1.dao.StoreDAO;
import com.biscuit.b1.model.CartListVO;
import com.biscuit.b1.model.CartVO;
import com.biscuit.b1.model.MyOrderVO;
import com.biscuit.b1.model.OrderDetailVO;
import com.biscuit.b1.model.StoreVO;
import com.biscuit.b1.util.FileSaver;

@Service
public class StoreService {

	@Inject
	private StoreDAO storeDAO;
	
	@Inject
	private FileSaver fileSaver;
	
	/* 주문 정보 */
	public int orderInsert(MyOrderVO myOrderVO) throws Exception {
		return storeDAO.orderInsert(myOrderVO);
	}
	
	/* 주문 상세 정보 */
	public int detailInsert(OrderDetailVO orderDetailVO) throws Exception {
		return storeDAO.detailInsert(orderDetailVO);
	}
	
	/* 카트 삭제 */
	public int cartDelete(CartVO cartVO) throws Exception {
		return storeDAO.cartDelete(cartVO);
	}
	
	/* 카트 수정 */
	public int cartUpdate(CartListVO cartListVO) throws Exception {
		return storeDAO.cartUpdate(cartListVO);
	}
	
	/* 카트 리스트 */
	public List<CartListVO> cartList(CartListVO cartListVO) throws Exception {
		return storeDAO.cartList(cartListVO);
	}
	
	/* 카트 동일 상품 존재 여부 조회 */
	public CartVO cartSelect(CartVO cartVO) throws Exception {
		return storeDAO.cartSelect(cartVO);
	}
	
	/* 카트 담기 */
	public int cartInsert(CartVO cartVO) throws Exception {
		return storeDAO.cartInsert(cartVO);
	}
	
/////* 스토어 */////////////////////////////////////////////////
	public int storeDelete(StoreVO storeVO, HttpServletRequest request) throws Exception {
		String realPath = request.getSession().getServletContext().getRealPath("resources/upload/store");
		StoreVO storeVO2 = storeDAO.storeSelect(storeVO);
		
		fileSaver.fileDelete(realPath, storeVO2.getStore_img());
		//fileSaver.fileDelete(realPath, storeVO2.getStore_thumbimg());

		return storeDAO.storeDelete(storeVO);
	}
	
	public int storeUpdate(StoreVO storeVO, MultipartFile file, HttpServletRequest request) throws Exception {
		String realPath = request.getSession().getServletContext().getRealPath("resources/upload/store");
		
		//System.out.println(request.getParameter("store_img"));
		
		//새로운 파일이 등록되었는지 확인
		if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			
			//기존 파일을 삭제
			fileSaver.fileDelete(realPath, request.getParameter("store_img"));
			//fileSaver.fileDelete(realPath, request.getParameter("store_thumbimg"));
			
			//new File(realPath + request.getParameter("store_img")).delete();
			//new File(realPath + request.getParameter("store_thumbimg")).delete();
		
			//새로 첨부한 파일을 등록
			String fileName = fileSaver.save(realPath, file);
			
			storeVO.setStore_img(fileName);
			storeVO.setStore_thumbimg("th_"+fileName);
		}else { //새로운 파일이 등록되지 않았다면
			//기존 이미지를 그대로 사용
			//System.out.println(request.getParameter("store_img"));
			storeVO.setStore_img(request.getParameter("store_img"));
			storeVO.setStore_thumbimg(request.getParameter("store_thumbimg"));
		}
		
		return storeDAO.storeUpdate(storeVO);
	}
	
	public int storeWrite(StoreVO storeVO, MultipartFile file, HttpSession session) throws Exception {
		String realPath = session.getServletContext().getRealPath("resources/upload/store");
		String fileName = null;
		
		if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			fileName = fileSaver.save(realPath, file);
		} else {
			fileName = realPath + File.separator + "images" + File.separator + "none.png";
		}
		storeVO.setStore_img(fileName);
		storeVO.setStore_thumbimg("th_"+fileName);
		
		return storeDAO.storeWrite(storeVO);
	}
	
	public StoreVO storeSelect(StoreVO storeVO) throws Exception {
		return storeDAO.storeSelect(storeVO);
	}
	
	public List<StoreVO> storeList(StoreVO storeVO) throws Exception {
		return storeDAO.storeList(storeVO);
	}
}
