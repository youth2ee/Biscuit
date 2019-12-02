package com.biscuit.b1.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.biscuit.b1.dao.StoreDAO;

@Service
public class StoreService {

	@Inject
	private StoreDAO storeDAO;
}
