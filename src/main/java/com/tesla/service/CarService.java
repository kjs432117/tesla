package com.tesla.service;

import java.util.List;

import com.tesla.dao.CarDAO;
import com.tesla.vo.CarVO;

public class CarService {
	
	CarDAO dao = new CarDAO();
	
	public List<CarVO> searchAll() {
		return dao.carList();
	}
	
	public CarVO Input(CarVO vo) {
		return dao.carInput(vo);
	}

}
