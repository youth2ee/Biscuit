package com.biscuit.b1.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.biscuit.b1.model.StoreVO;

@Repository
public class StoreDAO {

	@Inject
	private SqlSession sqlSession;
	private final static String NAMESPACE = "storeMapper.";
	
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
