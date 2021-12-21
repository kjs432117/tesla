package com.tesla.dao;

import java.util.ArrayList;
import java.util.List;

import com.tesla.vo.CarVO;

public class CarDAO extends DAO {

	//search all
	public List<CarVO> carList() {
		List<CarVO> list = new ArrayList<>();
		
		String sql = "select * from cars";
		connect();
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				CarVO vo = new CarVO();
				vo.setModel_name(rs.getString("model_name"));
				vo.setModel_pic1(rs.getString("model_pic1")); 
				vo.setModel_pic2(rs.getString("model_pic2")); 
				vo.setModel_pic3(rs.getString("model_pic3"));
				vo.setModel_pic4(rs.getString("model_pic4")); 
				vo.setModel_pic_color1(rs.getString("model_pic_color1")); 
				vo.setModel_pic_color2(rs.getString("model_pic_color2"));
				vo.setModel_pic_color3(rs.getString("model_pic_color3")); 
				vo.setModel_pic2_color1(rs.getString("model_pic2_color1")); 
				vo.setModel_pic2_color2(rs.getString("model_pic2_color2"));
				vo.setModel_pic2_color3(rs.getString("model_pic2_color3"));
				vo.setOption_price_color1(rs.getString("option_price_color1"));
				vo.setOption_price_color2(rs.getString("option_price_color2"));
				vo.setOption_price_color3(rs.getString("option_price_color3")); 
				vo.setDriving_system1(rs.getString("driving_system1")); 
				vo.setMax_range1(rs.getString("max_range1")); 
				vo.setTop_speed1(rs.getString("top_speed1")); 
				vo.setZerotosixty1(rs.getString("zerotosixty1")); 
				vo.setPrice1(rs.getString("price1")); 
				vo.setDriving_system2(rs.getString("driving_system2"));
				vo.setMax_range2(rs.getString("max_range2")); 
				vo.setTop_speed2(rs.getString("top_speed2")); 
				vo.setZerotosixty2(rs.getString("zerotosixty2"));
				vo.setPrice2(rs.getString("price2")); 
				vo.setFeature1(rs.getString("feature1")); 
				vo.setFeature_pic1(rs.getString("feature_pic1")); 
				vo.setFeature2(rs.getString("feature2")); 
				vo.setFeature_pic2(rs.getString("feature_pic2"));
				vo.setFeature3(rs.getString("feature3"));
				vo.setFeature_pic3(rs.getString("feature_pic3"));
				vo.setAdd_option1(rs.getString("add_option1"));
				vo.setAdd_price_option1(rs.getString("add_price_option1"));
				vo.setAdd_option2(rs.getString("add_option2"));
				vo.setAdd_price_option2(rs.getString("add_price_option2"));
				list.add(vo);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return list;
	}
	
	public CarVO carInput(CarVO vo) {
		String sql = "insert into cars values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		connect();
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getModel_name());
			psmt.setString(2, vo.getModel_pic1());
			psmt.setString(3, vo.getModel_pic2());
			psmt.setString(4, vo.getModel_pic3());
			psmt.setString(5, vo.getModel_pic4());
			psmt.setString(6, vo.getModel_pic_color1());
			psmt.setString(7, vo.getModel_pic_color2());
			psmt.setString(8, vo.getModel_pic_color3());
			psmt.setString(9, vo.getModel_pic2_color1());
			psmt.setString(10, vo.getModel_pic2_color2());
			psmt.setString(11, vo.getModel_pic2_color3());
			psmt.setString(12, vo.getOption_price_color1());
			psmt.setString(13, vo.getOption_price_color2());
			psmt.setString(14, vo.getOption_price_color3());
			psmt.setString(15, vo.getDriving_system1());
			psmt.setString(16, vo.getMax_range1());
			psmt.setString(17, vo.getTop_speed1());
			psmt.setString(18, vo.getZerotosixty1());
			psmt.setString(19, vo.getPrice1());
			psmt.setString(20, vo.getDriving_system2());
			psmt.setString(21, vo.getMax_range2());
			psmt.setString(22, vo.getTop_speed2());
			psmt.setString(23, vo.getZerotosixty2());
			psmt.setString(24, vo.getPrice2());
			psmt.setString(25, vo.getFeature1());
			psmt.setString(26, vo.getFeature_pic1());
			psmt.setString(27, vo.getFeature2());
			psmt.setString(28, vo.getFeature_pic2());
			psmt.setString(29, vo.getFeature3());
			psmt.setString(30, vo.getFeature_pic3());
			psmt.setString(31, vo.getAdd_option1());
			psmt.setString(32, vo.getAdd_price_option1());
			psmt.setString(33, vo.getAdd_option2());
			psmt.setString(34, vo.getAdd_price_option2());
			
			int r = psmt.executeUpdate();
			System.out.println(r + "건 입력.");

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return vo;
	}
	
	
	
}
