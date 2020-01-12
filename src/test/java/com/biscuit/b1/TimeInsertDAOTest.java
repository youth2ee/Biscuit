
package com.biscuit.b1;

import static org.junit.Assert.*;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.inject.Inject;
import javax.xml.crypto.Data;

import org.junit.Test;

import com.biscuit.b1.dao.AdminDAO;
import com.biscuit.b1.model.ChoiceVO;
import com.biscuit.b1.model.CinemaVO;

public class TimeInsertDAOTest extends TestAbstractCase {
	
	@Inject
	private AdminDAO adminDAO;
	private int num = 1;
	private String date = "19/12/31";
	
	private int mnum1_1 = 1;
	private int mnum1_2 = 272;
	private int mnum1_3 = 1;
	
	private int mnum2_1 = 2;
	private int mnum2_2 = 272;
	private int mnum2_3 = 181;
	
	private int mnum3_1 = 3;
	private int mnum3_2 = 272;
	private int mnum3_3 = 181;
	
	private int mnum4_1 = 270;
	private int mnum4_2 = 7;
	private int mnum4_3 = 1;
	
	private int mnum5_1 = 270;
	private int mnum5_2 = 272;
	private int mnum5_3 = 1;
	
	private int mnum6_1 = 7;
	private int mnum6_2 = 272;
	private int mnum6_3 = 63;
	
	private int mnum7_1 = 270;
	private int mnum7_2 = 272;
	private int mnum7_3 = 63;
	
	private int mnum8_1 = 270;
	private int mnum8_2 = 7;
	private int mnum8_3 = 181;
	
	private int mnum9_1 = 270;
	private int mnum9_2 = 272;
	private int mnum9_3 = 1;
	
	private int mnum10_1 = 270;
	private int mnum10_2 = 7;
	private int mnum10_3 = 63;
	
	private int mnum11_1 = 270;
	private int mnum11_2 = 282;
	private int mnum11_3 = 102;
	
	private int mnum12_1 = 270;
	private int mnum12_2 = 282;
	private int mnum12_3 = 181;
	
	private int mnum13_1 = 270;
	private int mnum13_2 = 282;
	private int mnum13_3 = 102;
	
	private int mnum14_1 = 270;
	private int mnum14_2 = 7;
	private int mnum14_3 = 181;
	
	private int mnum15_1 = 4;
	private int mnum15_2 = 282;
	private int mnum15_3 = 1;
	
	private int mnum16_1 = 5;
	private int mnum16_2 = 282;
	private int mnum16_3 = 181;
	
	private int mnum17_1 = 270;
	private int mnum17_2 = 282;
	private int mnum17_3 = 181;
	
	private int mnum18_1 = 270;
	private int mnum18_2 = 7;
	private int mnum18_3 = 102;
	
	private int mnum19_1 = 270;
	private int mnum19_2 = 272;
	private int mnum19_3 = 102;
	
	private int mnum20_1 = 270;
	private int mnum20_2 = 14;
	private int mnum20_3 = 1;
	
	private int mnum21_1 = 270;
	private int mnum21_2 = 272;
	private int mnum21_3 = 181;
	
	private int mnum22_1 = 270;
	private int mnum22_2 = 272;
	private int mnum22_3 = 14;
	
	private int mnum23_1 = 270;
	private int mnum23_2 = 272;
	private int mnum23_3 = 14;
	
	private int mnum24_1 = 270;
	private int mnum24_2 = 272;
	private int mnum24_3 = 181;
	
	private int mnum25_1 = 270;
	private int mnum25_2 = 272;
	private int mnum25_3 = 181;
	
	private int mnum26_1 = 270;
	private int mnum26_2 = 282;
	private int mnum26_3 = 7;
	
	private int mnum27_1 = 270;
	private int mnum27_2 = 282;
	private int mnum27_3 = 7;
	
	private int mnum28_1 = 270;
	private int mnum28_2 = 282;
	private int mnum28_3 = 1;
	
	private int mnum29_1 =1;
	private int mnum29_2 = 282;
	private int mnum29_3 = 192;
	
	private int mnum30_1 = 270;
	private int mnum30_2 = 1;
	private int mnum30_3 = 181;
	
	private int mnum31_1 = 270;
	private int mnum31_2 = 272;
	private int mnum31_3 = 7;
	
	private int mnum32_1 = 270;
	private int mnum32_2 = 282;
	private int mnum32_3 = 7;
	
	private int mnum33_1 = 270;
	private int mnum33_2 = 1;
	private int mnum33_3 = 181;
	
	private int mnum34_1 = 2;
	private int mnum34_2 = 282;
	private int mnum34_3 = 102;
	
	private int mnum35_1 = 1;
	private int mnum35_2 = 272;
	private int mnum35_3 = 2;
	
	private int mnum36_1 = 282;
	private int mnum36_2 = 270;
	private int mnum36_3 = 181;
	
	private int mnum37_1 = 3;
	private int mnum37_2 = 181;
	private int mnum37_3 = 102;
	
	private int mnum38_1 = 270;
	private int mnum38_2 = 282;
	private int mnum38_3 = 2;
	
	private int mnum39_1 = 181;
	private int mnum39_2 = 272;
	private int mnum39_3 = 2;
	
	private int mnum40_1 = 282;
	private int mnum40_2 = 1;
	private int mnum40_3 = 7;
	
	private int mnum41_1 = 181;
	private int mnum41_2 = 181;
	private int mnum41_3 = 7;
	
	private int mnum42_1 =4;
	private int mnum42_2 = 282;
	private int mnum42_3 = 181;
	
	private int mnum43_1 = 1;
	private int mnum43_2 = 272;
	private int mnum43_3 = 63;
	
	private int mnum44_1 = 5;
	private int mnum44_2 = 282;
	private int mnum44_3 = 102;
	
	private int mnum45_1 = 270;
	private int mnum45_2 = 181;
	private int mnum45_3 = 7;
	
	private int mnum46_1 = 270;
	private int mnum46_2 = 63;
	private int mnum46_3 = 7;
	
	private int mnum47_1 = 181;
	private int mnum47_2 = 1;
	private int mnum47_3 = 102;
	
	private int mnum48_1 = 282;
	private int mnum48_2 = 272;
	private int mnum48_3 = 2;
	
	private int mnum49_1 = 1;
	private int mnum49_2 = 1;
	private int mnum49_3 = 63;
	
	private int mnum50_1 = 270;
	private int mnum50_2 = 272;
	private int mnum50_3 = 102;
	
	private int mnum51_1 = 282;
	private int mnum51_2 = 272;
	private int mnum51_3 = 7;
	
	private int mnum52_1 = 270;
	private int mnum52_2 = 63;
	private int mnum52_3 = 181;
	
	private int mnum53_1 = 2;
	private int mnum53_2 = 272;
	private int mnum53_3 = 181;
	
	private int mnum54_1 = 1;
	private int mnum54_2 = 282;
	private int mnum54_3 = 7;
	
	private int mnum55_1 = 270;
	private int mnum55_2 = 282;
	private int mnum55_3 = 102;
	
	private int mnum56_1 = 63;
	private int mnum56_2 = 272;
	private int mnum56_3 = 7;
	
	private int mnum57_1 = 181;
	private int mnum57_2 = 1;
	private int mnum57_3 = 7;
	
	private int mnum58_1 = 1;
	private int mnum58_2 = 282;
	private int mnum58_3 = 102;
	
	private int mnum59_1 = 270;
	private int mnum59_2 = 181;
	private int mnum59_3 = 7;
	
	

	@Test
	public void timeInfoInsert1() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num);
		choiceVO.setMovieInfo_num(mnum1_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		
		/*
		 * if(result == 5) { adminDAO.seq_plus(); choiceVO.setTheater_num(num+1);
		 * choiceVO.setMovieInfo_num(mnum1_2); choiceVO.setTimeInfo_date(date); result =
		 * adminDAO.timeInfoInsertB(choiceVO);
		 * 
		 * if(result == 5) { adminDAO.seq_plus(); choiceVO.setTheater_num(num+2);
		 * choiceVO.setMovieInfo_num(mnum1_3); choiceVO.setTimeInfo_date(date); result =
		 * adminDAO.timeInfoInsertC(choiceVO);
		 * 
		 * } }
		 */
		 
		  assertEquals(result, 5);
	}
	
	@Test
	public void timeInfoInsert2() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		
		choiceVO.setTheater_num(num+3);
		choiceVO.setMovieInfo_num(mnum2_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		/*
		 * if(result == 5) { adminDAO.seq_plus(); choiceVO.setTheater_num(num+4);
		 * choiceVO.setMovieInfo_num(mnum2_2); choiceVO.setTimeInfo_date(date); result =
		 * adminDAO.timeInfoInsertB(choiceVO);
		 * 
		 * if(result == 5) { adminDAO.seq_plus(); choiceVO.setTheater_num(num+5);
		 * choiceVO.setMovieInfo_num(mnum2_3); choiceVO.setTimeInfo_date(date); result =
		 * adminDAO.timeInfoInsertC(choiceVO);
		 * 
		 * assertEquals(result, 5); } }
		 */
		
		assertEquals(result, 5);
	}
	
	
	@Test
	public void timeInfoInsert3() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+6);
		choiceVO.setMovieInfo_num(mnum3_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		/*
		 * if(result == 5) { adminDAO.seq_plus(); choiceVO.setTheater_num(num+7);
		 * choiceVO.setMovieInfo_num(mnum3_2); choiceVO.setTimeInfo_date(date); result =
		 * adminDAO.timeInfoInsertB(choiceVO);
		 * 
		 * if(result == 5) { adminDAO.seq_plus(); choiceVO.setTheater_num(num+8);
		 * choiceVO.setMovieInfo_num(mnum3_3); choiceVO.setTimeInfo_date(date); result =
		 * adminDAO.timeInfoInsertC(choiceVO);
		 * 
		 * assertEquals(result, 5); } }
		 */
		
		assertEquals(result, 5);
	}
	
	
	//@Test
	public void timeInfoInsert4() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();
		
		choiceVO.setTheater_num(num+9);
		choiceVO.setMovieInfo_num(mnum4_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+10);
			choiceVO.setMovieInfo_num(mnum4_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+11);
				choiceVO.setMovieInfo_num(mnum4_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsert5() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+12);
		choiceVO.setMovieInfo_num(mnum5_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+13);
			choiceVO.setMovieInfo_num(mnum5_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+14);
				choiceVO.setMovieInfo_num(mnum5_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsert6() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+15);
		choiceVO.setMovieInfo_num(mnum6_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+16);
			choiceVO.setMovieInfo_num(mnum6_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+17);
				choiceVO.setMovieInfo_num(mnum6_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}


	//@Test
	public void timeInfoInsert7() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+18);
		choiceVO.setMovieInfo_num(mnum7_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+19);
			choiceVO.setMovieInfo_num(mnum7_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+20);
				choiceVO.setMovieInfo_num(mnum7_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsert8() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();
		
		choiceVO.setTheater_num(num+21);
		choiceVO.setMovieInfo_num(mnum8_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+22);
			choiceVO.setMovieInfo_num(mnum8_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+23);
				choiceVO.setMovieInfo_num(mnum8_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsert9() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		
		choiceVO.setTheater_num(num+24);
		choiceVO.setMovieInfo_num(mnum9_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+25);
			choiceVO.setMovieInfo_num(mnum9_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+26);
				choiceVO.setMovieInfo_num(mnum9_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsert10() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+27);
		choiceVO.setMovieInfo_num(mnum10_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+28);
			choiceVO.setMovieInfo_num(mnum10_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+29);
				choiceVO.setMovieInfo_num(mnum10_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsert11() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+30);
		choiceVO.setMovieInfo_num(mnum11_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+31);
			choiceVO.setMovieInfo_num(mnum11_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+32);
				choiceVO.setMovieInfo_num(mnum11_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	
	//@Test
	public void timeInfoInsert12() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+33);
		choiceVO.setMovieInfo_num(mnum12_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+34);
			choiceVO.setMovieInfo_num(mnum12_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+35);
				choiceVO.setMovieInfo_num(mnum12_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	
	//@Test
	public void timeInfoInsert13() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+36);
		choiceVO.setMovieInfo_num(mnum13_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+37);
			choiceVO.setMovieInfo_num(mnum13_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+38);
				choiceVO.setMovieInfo_num(mnum13_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	
	//@Test
	public void timeInfoInsert14() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+39);
		choiceVO.setMovieInfo_num(mnum14_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+40);
			choiceVO.setMovieInfo_num(mnum14_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+41);
				choiceVO.setMovieInfo_num(mnum14_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	
	@Test
	public void timeInfoInsert15() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+42);
		choiceVO.setMovieInfo_num(mnum15_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		/*
		 * if(result == 5) { adminDAO.seq_plus(); choiceVO.setTheater_num(num+43);
		 * choiceVO.setMovieInfo_num(mnum15_2); choiceVO.setTimeInfo_date(date); result
		 * = adminDAO.timeInfoInsertB(choiceVO);
		 * 
		 * if(result == 5) { adminDAO.seq_plus(); choiceVO.setTheater_num(num+44);
		 * choiceVO.setMovieInfo_num(mnum15_3); choiceVO.setTimeInfo_date(date); result
		 * = adminDAO.timeInfoInsertC(choiceVO);
		 * 
		 * assertEquals(result, 5); } }
		 */
		
		assertEquals(result, 5);
	}
	
	
	@Test
	public void timeInfoInsert16() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+45);
		choiceVO.setMovieInfo_num(mnum16_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		/*
		 * if(result == 5) { adminDAO.seq_plus(); choiceVO.setTheater_num(num+46);
		 * choiceVO.setMovieInfo_num(mnum16_2); choiceVO.setTimeInfo_date(date); result
		 * = adminDAO.timeInfoInsertB(choiceVO);
		 * 
		 * if(result == 5) { adminDAO.seq_plus(); choiceVO.setTheater_num(num+47);
		 * choiceVO.setMovieInfo_num(mnum16_3); choiceVO.setTimeInfo_date(date); result
		 * = adminDAO.timeInfoInsertC(choiceVO);
		 * 
		 * assertEquals(result, 5); } }
		 */
		assertEquals(result, 5);
	}
	
	
	//@Test
	public void timeInfoInsert17() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+48);
		choiceVO.setMovieInfo_num(mnum17_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+49);
			choiceVO.setMovieInfo_num(mnum17_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+50);
				choiceVO.setMovieInfo_num(mnum17_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	
	//@Test
	public void timeInfoInsert18() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+51);
		choiceVO.setMovieInfo_num(mnum18_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+52);
			choiceVO.setMovieInfo_num(mnum18_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+53);
				choiceVO.setMovieInfo_num(mnum18_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	
	//@Test
	public void timeInfoInsert19() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+54);
		choiceVO.setMovieInfo_num(mnum19_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+55);
			choiceVO.setMovieInfo_num(mnum19_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+56);
				choiceVO.setMovieInfo_num(mnum19_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsert20() throws Exception {
		
		Thread.sleep(1000);
		
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+57);
		choiceVO.setMovieInfo_num(mnum20_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+58);
			choiceVO.setMovieInfo_num(mnum20_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+59);
				choiceVO.setMovieInfo_num(mnum20_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	
	//@Test
	public void timeInfoInsert21() throws Exception {
		
		Thread.sleep(1000);
		
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+60);
		choiceVO.setMovieInfo_num(mnum21_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+61);
			choiceVO.setMovieInfo_num(mnum21_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+62);
				choiceVO.setMovieInfo_num(mnum21_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsert22() throws Exception {
		
		Thread.sleep(1000);
		
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+63);
		choiceVO.setMovieInfo_num(mnum22_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+64);
			choiceVO.setMovieInfo_num(mnum22_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+65);
				choiceVO.setMovieInfo_num(mnum22_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsert23() throws Exception {
		
		Thread.sleep(1000);
		
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+66);
		choiceVO.setMovieInfo_num(mnum23_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+67);
			choiceVO.setMovieInfo_num(mnum23_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+68);
				choiceVO.setMovieInfo_num(mnum23_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsert24() throws Exception {
		
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+69);
		choiceVO.setMovieInfo_num(mnum24_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+70);
			choiceVO.setMovieInfo_num(mnum24_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+71);
				choiceVO.setMovieInfo_num(mnum24_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsert25() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+72);
		choiceVO.setMovieInfo_num(mnum25_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+73);
			choiceVO.setMovieInfo_num(mnum25_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+74);
				choiceVO.setMovieInfo_num(mnum25_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsert26() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+75);
		choiceVO.setMovieInfo_num(mnum26_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+76);
			choiceVO.setMovieInfo_num(mnum26_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+77);
				choiceVO.setMovieInfo_num(mnum26_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsert27() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+78);
		choiceVO.setMovieInfo_num(mnum27_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+79);
			choiceVO.setMovieInfo_num(mnum27_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+80);
				choiceVO.setMovieInfo_num(mnum27_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsert28() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+81);
		choiceVO.setMovieInfo_num(mnum28_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+82);
			choiceVO.setMovieInfo_num(mnum28_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+83);
				choiceVO.setMovieInfo_num(mnum28_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	@Test
	public void timeInfoInsert29() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+84);
		choiceVO.setMovieInfo_num(mnum29_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		/*
		 * if(result == 5) { adminDAO.seq_plus(); choiceVO.setTheater_num(num+85);
		 * choiceVO.setMovieInfo_num(mnum29_2); choiceVO.setTimeInfo_date(date); result
		 * = adminDAO.timeInfoInsertB(choiceVO);
		 * 
		 * if(result == 5) { adminDAO.seq_plus(); choiceVO.setTheater_num(num+86);
		 * choiceVO.setMovieInfo_num(mnum29_3); choiceVO.setTimeInfo_date(date); result
		 * = adminDAO.timeInfoInsertC(choiceVO);
		 * 
		 * assertEquals(result, 5); } }
		 */
		
		assertEquals(result, 5);
	}
	
	//@Test
	public void timeInfoInsert30() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+87);
		choiceVO.setMovieInfo_num(mnum30_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+88);
			choiceVO.setMovieInfo_num(mnum30_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+89);
				choiceVO.setMovieInfo_num(mnum30_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsert31() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+90);
		choiceVO.setMovieInfo_num(mnum31_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+91);
			choiceVO.setMovieInfo_num(mnum31_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+92);
				choiceVO.setMovieInfo_num(mnum31_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}

	//@Test
	public void timeInfoInsert32() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+93);
		choiceVO.setMovieInfo_num(mnum32_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+94);
			choiceVO.setMovieInfo_num(mnum32_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+95);
				choiceVO.setMovieInfo_num(mnum32_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	//@Test
	public void timeInfoInsert33() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+96);
		choiceVO.setMovieInfo_num(mnum33_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+97);
			choiceVO.setMovieInfo_num(mnum33_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+98);
				choiceVO.setMovieInfo_num(mnum33_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	@Test
	public void timeInfoInsert34() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+99);
		choiceVO.setMovieInfo_num(mnum34_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		/*
		 * if(result == 5) { adminDAO.seq_plus(); choiceVO.setTheater_num(num+100);
		 * choiceVO.setMovieInfo_num(mnum34_2); choiceVO.setTimeInfo_date(date); result
		 * = adminDAO.timeInfoInsertB(choiceVO);
		 * 
		 * if(result == 5) { adminDAO.seq_plus(); choiceVO.setTheater_num(num+101);
		 * choiceVO.setMovieInfo_num(mnum34_3); choiceVO.setTimeInfo_date(date); result
		 * = adminDAO.timeInfoInsertC(choiceVO);
		 * 
		 * assertEquals(result, 5); } }
		 */
		
		assertEquals(result, 5);
	}
	//@Test
	public void timeInfoInsert35() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+102);
		choiceVO.setMovieInfo_num(mnum35_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+103);
			choiceVO.setMovieInfo_num(mnum35_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+104);
				choiceVO.setMovieInfo_num(mnum35_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	//@Test
	public void timeInfoInsert36() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+105);
		choiceVO.setMovieInfo_num(mnum36_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+106);
			choiceVO.setMovieInfo_num(mnum36_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+107);
				choiceVO.setMovieInfo_num(mnum36_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	@Test
	public void timeInfoInsert37() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+108);
		choiceVO.setMovieInfo_num(mnum37_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		/*
		 * if(result == 5) { adminDAO.seq_plus(); choiceVO.setTheater_num(num+109);
		 * choiceVO.setMovieInfo_num(mnum37_2); choiceVO.setTimeInfo_date(date); result
		 * = adminDAO.timeInfoInsertB(choiceVO);
		 * 
		 * if(result == 5) { adminDAO.seq_plus(); choiceVO.setTheater_num(num+110);
		 * choiceVO.setMovieInfo_num(mnum37_3); choiceVO.setTimeInfo_date(date); result
		 * = adminDAO.timeInfoInsertC(choiceVO);
		 * 
		 * assertEquals(result, 5); } }
		 */
		assertEquals(result, 5);
	}
	//@Test
	public void timeInfoInsert38() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+111);
		choiceVO.setMovieInfo_num(mnum38_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+112);
			choiceVO.setMovieInfo_num(mnum38_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+113);
				choiceVO.setMovieInfo_num(mnum38_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	//@Test
	public void timeInfoInsert39() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+114);
		choiceVO.setMovieInfo_num(mnum39_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+115);
			choiceVO.setMovieInfo_num(mnum39_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+116);
				choiceVO.setMovieInfo_num(mnum39_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	//@Test
	public void timeInfoInsert40() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+117);
		choiceVO.setMovieInfo_num(mnum40_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+118);
			choiceVO.setMovieInfo_num(mnum40_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+119);
				choiceVO.setMovieInfo_num(mnum40_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	//@Test
	public void timeInfoInsert41() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+120);
		choiceVO.setMovieInfo_num(mnum41_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+121);
			choiceVO.setMovieInfo_num(mnum41_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+122);
				choiceVO.setMovieInfo_num(mnum41_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//
	@Test
	public void timeInfoInsert42() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+123);
		choiceVO.setMovieInfo_num(mnum42_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		/*
		 * if(result == 5) { adminDAO.seq_plus(); choiceVO.setTheater_num(num+124);
		 * choiceVO.setMovieInfo_num(mnum42_2); choiceVO.setTimeInfo_date(date); result
		 * = adminDAO.timeInfoInsertB(choiceVO);
		 * 
		 * if(result == 5) { adminDAO.seq_plus(); choiceVO.setTheater_num(num+125);
		 * choiceVO.setMovieInfo_num(mnum42_3); choiceVO.setTimeInfo_date(date); result
		 * = adminDAO.timeInfoInsertC(choiceVO);
		 * 
		 * assertEquals(result, 5); } }
		 */
		
		assertEquals(result, 5);
	}
	
	//@Test
	public void timeInfoInsert43() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+126);
		choiceVO.setMovieInfo_num(mnum43_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+127);
			choiceVO.setMovieInfo_num(mnum43_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+128);
				choiceVO.setMovieInfo_num(mnum43_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	@Test
	public void timeInfoInsert44() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+129);
		choiceVO.setMovieInfo_num(mnum44_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		/*
		 * if(result == 5) { adminDAO.seq_plus(); choiceVO.setTheater_num(num+130);
		 * choiceVO.setMovieInfo_num(mnum44_2); choiceVO.setTimeInfo_date(date); result
		 * = adminDAO.timeInfoInsertB(choiceVO);
		 * 
		 * if(result == 5) { adminDAO.seq_plus(); choiceVO.setTheater_num(num+131);
		 * choiceVO.setMovieInfo_num(mnum44_3); choiceVO.setTimeInfo_date(date); result
		 * = adminDAO.timeInfoInsertC(choiceVO);
		 * 
		 * assertEquals(result, 5); } }
		 */
		
		assertEquals(result, 5);
	}
	
	//@Test
	public void timeInfoInsert45() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+132);
		choiceVO.setMovieInfo_num(mnum45_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+133);
			choiceVO.setMovieInfo_num(mnum45_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+134);
				choiceVO.setMovieInfo_num(mnum45_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsert46() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+135);
		choiceVO.setMovieInfo_num(mnum46_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+136);
			choiceVO.setMovieInfo_num(mnum46_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+137);
				choiceVO.setMovieInfo_num(mnum46_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsert47() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+138);
		choiceVO.setMovieInfo_num(mnum47_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+139);
			choiceVO.setMovieInfo_num(mnum47_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+140);
				choiceVO.setMovieInfo_num(mnum47_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsert48() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+141);
		choiceVO.setMovieInfo_num(mnum48_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+142);
			choiceVO.setMovieInfo_num(mnum48_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+143);
				choiceVO.setMovieInfo_num(mnum48_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	@Test
	public void timeInfoInsert49() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+144);
		choiceVO.setMovieInfo_num(mnum49_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		/*
		 * if(result == 5) { adminDAO.seq_plus(); choiceVO.setTheater_num(num+145);
		 * choiceVO.setMovieInfo_num(mnum49_2); choiceVO.setTimeInfo_date(date); result
		 * = adminDAO.timeInfoInsertB(choiceVO);
		 * 
		 * if(result == 5) { adminDAO.seq_plus(); choiceVO.setTheater_num(num+146);
		 * choiceVO.setMovieInfo_num(mnum49_3); choiceVO.setTimeInfo_date(date); result
		 * = adminDAO.timeInfoInsertC(choiceVO);
		 * 
		 * assertEquals(result, 5); } }
		 */
		assertEquals(result, 5);
	}
	
	//@Test
	public void timeInfoInsert50() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+147);
		choiceVO.setMovieInfo_num(mnum50_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+148);
			choiceVO.setMovieInfo_num(mnum50_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+149);
				choiceVO.setMovieInfo_num(mnum50_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//@Test
	public void timeInfoInsert51() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+150);
		choiceVO.setMovieInfo_num(mnum51_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+151);
			choiceVO.setMovieInfo_num(mnum51_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+152);
				choiceVO.setMovieInfo_num(mnum51_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	//
	//@Test
	public void timeInfoInsert52() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+153);
		choiceVO.setMovieInfo_num(mnum52_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+154);
			choiceVO.setMovieInfo_num(mnum52_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+155);
				choiceVO.setMovieInfo_num(mnum52_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	@Test
	public void timeInfoInsert53() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+156);
		choiceVO.setMovieInfo_num(mnum53_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		/*
		 * if(result == 5) { adminDAO.seq_plus(); choiceVO.setTheater_num(num+157);
		 * choiceVO.setMovieInfo_num(mnum53_2); choiceVO.setTimeInfo_date(date); result
		 * = adminDAO.timeInfoInsertB(choiceVO);
		 * 
		 * if(result == 5) { adminDAO.seq_plus(); choiceVO.setTheater_num(num+158);
		 * choiceVO.setMovieInfo_num(mnum53_3); choiceVO.setTimeInfo_date(date); result
		 * = adminDAO.timeInfoInsertC(choiceVO);
		 * 
		 * assertEquals(result, 5); } }
		 */
		
		assertEquals(result, 5);
	}
	//@Test
	public void timeInfoInsert54() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+159);
		choiceVO.setMovieInfo_num(mnum54_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+160);
			choiceVO.setMovieInfo_num(mnum54_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+161);
				choiceVO.setMovieInfo_num(mnum54_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	//@Test
	public void timeInfoInsert55() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+162);
		choiceVO.setMovieInfo_num(mnum55_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+163);
			choiceVO.setMovieInfo_num(mnum55_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+164);
				choiceVO.setMovieInfo_num(mnum55_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	//@Test
	public void timeInfoInsert56() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+165);
		choiceVO.setMovieInfo_num(mnum56_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+166);
			choiceVO.setMovieInfo_num(mnum56_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+167);
				choiceVO.setMovieInfo_num(mnum56_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	//@Test
	public void timeInfoInsert57() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+168);
		choiceVO.setMovieInfo_num(mnum57_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+169);
			choiceVO.setMovieInfo_num(mnum57_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+170);
				choiceVO.setMovieInfo_num(mnum57_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	//@Test
	public void timeInfoInsert58() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+171);
		choiceVO.setMovieInfo_num(mnum58_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+172);
			choiceVO.setMovieInfo_num(mnum58_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+173);
				choiceVO.setMovieInfo_num(mnum58_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	//@Test
	public void timeInfoInsert59() throws Exception {
		Thread.sleep(1000);
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+174);
		choiceVO.setMovieInfo_num(mnum59_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+175);
			choiceVO.setMovieInfo_num(mnum59_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+176);
				choiceVO.setMovieInfo_num(mnum59_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}

	
	
}