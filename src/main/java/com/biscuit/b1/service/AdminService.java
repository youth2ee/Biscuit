package com.biscuit.b1.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.biscuit.b1.dao.AdminDAO;
import com.biscuit.b1.model.CinemaVO;

@Service
public class AdminService {
	
	@Inject
	private AdminDAO adminDAO;
	
	public List<CinemaVO> adminLocSelect(CinemaVO cinemaVO) {
		return adminDAO.adminLocSelect(cinemaVO);
	}
	
}
