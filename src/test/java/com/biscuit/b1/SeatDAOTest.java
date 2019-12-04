package com.biscuit.b1;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.junit.Test;

import com.biscuit.b1.dao.SeatDAO;
import com.biscuit.b1.model.SeatVO;

public class SeatDAOTest {

	@Inject
	private SeatDAO seatDAO;
	@Test
	public void test() throws Exception {
		SeatVO seatVO = new SeatVO();
		seatVO.setTheater_num(1);
		seatVO.setCinema_num(1);
		seatVO.setSeat_check(1);
		seatVO.setSeat_name("C9");
		System.out.println(seatVO.getCinema_num());
		System.out.println(seatVO.getTheater_num());
		System.out.println(seatVO.getSeat_name());
		System.out.println(seatVO.getSeat_check());
		int result = seatDAO.seatBooking(seatVO);
		assertEquals(1, result);
	}

}
