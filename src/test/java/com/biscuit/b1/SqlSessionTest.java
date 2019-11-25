package com.biscuit.b1;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.biscuit.b1.TestAbstractCase;

public class SqlSessionTest extends TestAbstractCase {

	@Inject
	private SqlSession sqlSession;
	
	@Test
	public void test() {
		assertNotNull(sqlSession);
	}

}
