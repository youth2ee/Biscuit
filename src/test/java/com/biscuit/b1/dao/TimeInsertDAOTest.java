package com.biscuit.b1.dao;

import static org.junit.Assert.*;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.inject.Inject;
import javax.xml.crypto.Data;

import org.junit.Test;

import com.biscuit.b1.TestAbstractCase;
import com.biscuit.b1.model.ChoiceVO;
import com.biscuit.b1.model.CinemaVO;

public class TimeInsertDAOTest extends TestAbstractCase {
	
	@Inject
	private AdminDAO adminDAO;
	private int num = 1;
	private String date = "19/12/24";
	
	private int mnum1_1 = 270;
	private int mnum1_2 = 272;
	private int mnum1_3 = 1;
	
	private int mnum2_1 = 270;
	private int mnum2_2 = 272;
	private int mnum2_3 = 181;
	
	private int mnum3_1 = 270;
	private int mnum3_2 = 272;
	private int mnum3_3 = 181;
	
	private int mnum4_1 = 270;
	private int mnum4_2 = 272;
	private int mnum4_3 = 1;
	
	private int mnum5_1 = 270;
	private int mnum5_2 = 272;
	private int mnum5_3 = 1;
	
	private int mnum6_1 = 270;
	private int mnum6_2 = 272;
	private int mnum6_3 = 63;
	
	private int mnum7_1 = 270;
	private int mnum7_2 = 272;
	private int mnum7_3 = 63;
	
	private int mnum8_1 = 270;
	private int mnum8_2 = 272;
	private int mnum8_3 = 181;
	
	private int mnum9_1 = 270;
	private int mnum9_2 = 272;
	private int mnum9_3 = 1;
	
	private int mnum10_1 = 270;
	private int mnum10_2 = 272;
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
	private int mnum14_2 = 282;
	private int mnum14_3 = 181;
	
	private int mnum15_1 = 270;
	private int mnum15_2 = 282;
	private int mnum15_3 = 1;
	
	private int mnum16_1 = 270;
	private int mnum16_2 = 282;
	private int mnum16_3 = 181;
	
	private int mnum17_1 = 270;
	private int mnum17_2 = 282;
	private int mnum17_3 = 181;
	
	private int mnum18_1 = 270;
	private int mnum18_2 = 272;
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
	
	private int mnum29_1 = 270;
	private int mnum29_2 = 282;
	private int mnum29_3 = 192;
	
	private int mnum30_1 = 270;
	private int mnum30_2 = 1;
	private int mnum30_3 = 181;
	
	private int mnum31_1 = 270;
	private int mnum31_2 = 272;
	private int mnum31_3 = 7;
	
	private int mnum32_1 = 270;
	private int mnum32_2 = 272;
	private int mnum32_3 = 7;
	
	private int mnum33_1 = 270;
	private int mnum33_2 = 272;
	private int mnum33_3 = 7;
	
	private int mnum34_1 = 270;
	private int mnum34_2 = 272;
	private int mnum34_3 = 7;
	
	private int mnum35_1 = 270;
	private int mnum35_2 = 272;
	private int mnum35_3 = 7;
	
	private int mnum36_1 = 270;
	private int mnum36_2 = 272;
	private int mnum36_3 = 7;
	
	private int mnum37_1 = 270;
	private int mnum37_2 = 272;
	private int mnum37_3 = 7;
	
	private int mnum38_1 = 270;
	private int mnum38_2 = 272;
	private int mnum38_3 = 7;
	
	private int mnum39_1 = 270;
	private int mnum39_2 = 272;
	private int mnum39_3 = 7;
	
	private int mnum40_1 = 270;
	private int mnum40_2 = 272;
	private int mnum40_3 = 7;
	
	private int mnum41_1 = 270;
	private int mnum41_2 = 272;
	private int mnum41_3 = 7;
	

	@Test
	public void timeInfoInsert1() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num);
		choiceVO.setMovieInfo_num(mnum1_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+1);
			choiceVO.setMovieInfo_num(mnum1_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+2);
				choiceVO.setMovieInfo_num(mnum1_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	@Test
	public void timeInfoInsert2() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		
		choiceVO.setTheater_num(num+3);
		choiceVO.setMovieInfo_num(mnum2_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+4);
			choiceVO.setMovieInfo_num(mnum2_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+5);
				choiceVO.setMovieInfo_num(mnum2_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	
	@Test
	public void timeInfoInsert3() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+6);
		choiceVO.setMovieInfo_num(mnum3_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+7);
			choiceVO.setMovieInfo_num(mnum3_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+8);
				choiceVO.setMovieInfo_num(mnum3_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	
	@Test
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
	
	@Test
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
	
	@Test
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


	@Test
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
	
	@Test
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
	
	@Test
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
	
	@Test
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
	
	@Test
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
	
	
	@Test
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
	
	
	@Test
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
	
	
	@Test
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
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+43);
			choiceVO.setMovieInfo_num(mnum15_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+44);
				choiceVO.setMovieInfo_num(mnum15_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	
	@Test
	public void timeInfoInsert16() {
		adminDAO.seq_plus();
		ChoiceVO choiceVO = new ChoiceVO();

		choiceVO.setTheater_num(num+45);
		choiceVO.setMovieInfo_num(mnum16_1);
		choiceVO.setTimeInfo_date(date);
		int result =  adminDAO.timeInfoInsertA(choiceVO);
	
		if(result == 5) {
			adminDAO.seq_plus();
			choiceVO.setTheater_num(num+46);
			choiceVO.setMovieInfo_num(mnum16_2);
			choiceVO.setTimeInfo_date(date);
			result =  adminDAO.timeInfoInsertB(choiceVO);
			
			if(result == 5) {
				adminDAO.seq_plus();
				choiceVO.setTheater_num(num+47);
				choiceVO.setMovieInfo_num(mnum16_3);
				choiceVO.setTimeInfo_date(date);
				result =  adminDAO.timeInfoInsertC(choiceVO);
				
				assertEquals(result, 5);
			}
		}
	}
	
	
	@Test
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
	
	
	@Test
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
	
	
	@Test
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
	
	@Test
	public void timeInfoInsert20() {
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
	
}
