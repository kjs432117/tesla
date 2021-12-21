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

	public CarVO searchOne(String model_name) {
		return dao.carSearch(model_name);
	}
	
	public CarVO update(CarVO vo) {
		return dao.carUpdate(vo);
	}
	
}
