package com.biscuit.b1.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.biscuit.b1.model.CartListVO;
import com.biscuit.b1.model.CartVO;
import com.biscuit.b1.model.MyOrderVO;
import com.biscuit.b1.model.OrderDetailVO;
import com.biscuit.b1.model.StoreVO;

@Repository
public class StoreDAO {

	@Inject
	private SqlSession sqlSession;
	private final static String NAMESPACE = "storeMapper.";
	
	/* 주문 정보 */
	public int orderInsert(MyOrderVO myOrderVO) throws Exception {
		return sqlSession.insert(NAMESPACE+"orderInsert", myOrderVO);
	}
	
	/* 주문 상세 정보 */
	public int detailInsert(OrderDetailVO orderDetailVO) throws Exception {
		return sqlSession.insert(NAMESPACE+"detailInsert", orderDetailVO);
	}
	
	/* 카트 삭제 */
	public int cartDelete(CartVO cartVO) throws Exception {
		return sqlSession.delete(NAMESPACE+"cartDelete", cartVO);
	}
	
	/* 카트 수정 */
	public int cartUpdate(CartListVO cartListVO) throws Exception {
		return sqlSession.update(NAMESPACE+"cartUpdate", cartListVO);
	}
	
	/* 카트 리스트 */
	public List<CartListVO> cartList(CartListVO cartListVO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"cartList", cartListVO);
	}
	
	/* 카트 동일 상품 존재 여부 조회 */
	public CartVO cartSelect(CartVO cartVO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"cartSelect", cartVO);
	}
	
	/* 카트 담기 */
	public int cartInsert(CartVO cartVO) throws Exception {
		return sqlSession.insert(NAMESPACE+"cartInsert", cartVO);
	}
	
/////* 스토어 */////////////////////////////////////////////////////////
	public int storeDelete(StoreVO storeVO) throws Exception {
		return sqlSession.delete(NAMESPACE+"storeDelete", storeVO);
	}
	
	public int storeUpdate(StoreVO storeVO) throws Exception {
		return sqlSession.update(NAMESPACE+"storeUpdate", storeVO);
	}
	
	public int storeWrite(StoreVO storeVO) throws Exception {
		return sqlSession.insert(NAMESPACE+"storeWrite", storeVO);
	}
	
	public StoreVO storeSelect(StoreVO storeVO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"storeSelect", storeVO);
	}
	
	public List<StoreVO> storeList(StoreVO storeVO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"storeList", storeVO);
	}
}
