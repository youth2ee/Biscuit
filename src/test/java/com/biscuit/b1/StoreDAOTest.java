package com.biscuit.b1;

import static org.junit.Assert.*;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;

import com.biscuit.b1.dao.StoreDAO;
import com.biscuit.b1.model.StoreVO;

public class StoreDAOTest extends TestAbstractCase {
 
	@Inject
	private StoreDAO storeDAO;
	
	//@Test
	public void deleteTest() throws Exception {
		StoreVO storeVO = new StoreVO();
		storeVO.setStore_num(20);
		
		int result = storeDAO.storeDelete(storeVO);
		
		assertEquals(1, result);
	}
	
	//@Test
	public void updateTest() throws Exception {
		StoreVO storeVO = new StoreVO();
		storeVO.setStore_name("나쵸");
		storeVO.setStore_price(2000);
		storeVO.setStore_note("나쵸얌");
		storeVO.setStore_package(2);
		storeVO.setStore_img("store_img2");
		storeVO.setStore_thumbimg("store_thumimg2");
		storeVO.setStore_num(20);
		
		int result = storeDAO.storeUpdate(storeVO);
		
		assertEquals(1, result);
	}
	
	//@Test
	public void writeTest() throws Exception {
		StoreVO storeVO = new StoreVO();
		storeVO.setStore_name("치즈");
		storeVO.setStore_price(1000);
		storeVO.setStore_note("치즈얌");
		storeVO.setStore_package(1);
		storeVO.setStore_img("store_img");
		storeVO.setStore_thumbimg("store_thumimg");
		
		int result = storeDAO.storeWrite(storeVO);
		
		assertEquals(1, result);
	}
	
	//@Test
	public void selectTest() throws Exception {
		StoreVO storeVO = new StoreVO();
		storeVO.setStore_num(1);
		
		storeVO = storeDAO.storeSelect(storeVO);
		
		assertNotNull(storeVO);
	}
	
	//@Test
	public void listTest() throws Exception {
		StoreVO storeVO = new StoreVO();
		storeVO.setStore_package(1);
		
		List<StoreVO> ar = storeDAO.storeList(storeVO);
		
		assertNotEquals(0, ar.size());
	}

}
