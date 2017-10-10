package com.daoImpl;

/**
 * 实现景点信息接口类
 * */
import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.IIndexSelectDAO;
import com.vo.SpotsManager;

import common.DatabaseManager;

public class IndexSelectImpl implements IIndexSelectDAO {
	DatabaseManager db = new DatabaseManager();
	List list = new ArrayList();

	public List index_select(int spots_Id) {// 首页查询的一条景点信息//
		String sql = "select usermanager.name,scenic_spots_information.name,spots_Id,spots_name,money,datatime,scenic_spots_information.image,xingji,introduction_j,usermanager.PhoneNumber,number,guide.name,numbermax from scenic_spots_information,guide,usermanager where scenic_spots_information.name=guide.Id and scenic_spots_information.spots_Id='"
				+ spots_Id + "'";
		ResultSet rs;
		try {
			rs = db.executeQuery(sql);
			while (rs.next()) {
				SpotsManager like = new SpotsManager();
				like.setSpots_Id(rs.getString("spots_Id"));
				like.setSpots_name(rs.getString("spots_name"));
				like.setMoney(rs.getString("money"));
				like.setDatatime(rs.getString("datatime"));
				like.setImage(rs.getString("image"));
				like.setXingji(rs.getString("xingji"));
				like.setIntroduction_j(rs.getString("introduction_j"));
				like.setTel(rs.getString("usermanager.PhoneNumber"));
				like.setNumber(rs.getString("number"));
				like.setNumbermax(rs.getString("numbermax"));
				like.setName(rs.getString("guide.name"));
				like.setStyle(rs.getString("usermanager.name"));
				like.setGuideID(rs.getString("scenic_spots_information.name"));
				list.add(like);
			}
		} catch (Exception e1) {
			e1.printStackTrace();
		} finally {
			db.close();
		}
		return list;
	}
}
