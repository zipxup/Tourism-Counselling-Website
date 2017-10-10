package com.daoImpl;

/**
 * 实现景点信息的借口
 * */

import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

import com.vo.SpotsManager;

import common.DatabaseManager;

public class ViewpointImpl implements com.dao.IViewpointDAO {
	DatabaseManager db = new DatabaseManager();
	List list = new ArrayList();

	public List selManager(int spots_Id) {// 景点信息的值查询
		String sql = "select spots_Id,image,spots_name,money,'type' from scenic_spots_information limit "
				+ spots_Id + ",4";
		ResultSet rs;
		try {
			rs = db.executeQuery(sql);
			while (rs.next()) {
				SpotsManager spotsManager = new SpotsManager();
				spotsManager.setSpots_Id(rs.getString("spots_Id"));
				spotsManager.setImage(rs.getString("image"));
				spotsManager.setSpots_name(rs.getString("spots_name"));
				spotsManager.setMoney(rs.getString("money"));
				spotsManager.setType(rs.getString("type"));
				list.add(spotsManager);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close();
		}
		return list;
	}

	public List xiangxi(int spots_Id) {// 景点信息详情查询
		String sql = "select usermanager.name,spots_Id,spots_name,money,trip,scenery,datatime,introduction_x,scenic_spots_information.name,time,company,v3,v4,type,scenic_spots_information.image,xingji,usermanager.PhoneNumber,number,numbermax,guide.name from scenic_spots_information,guide,usermanager where scenic_spots_information.style=usermanager.account and scenic_spots_information.name=guide.Id and scenic_spots_information.spots_Id='"
				+ spots_Id + "'";
		ResultSet rs;
		try {
			rs = db.executeQuery(sql);
			if (rs.next()) {
				SpotsManager spotsManager = new SpotsManager();
				spotsManager.setSpots_Id(rs.getString("spots_Id"));
				spotsManager.setSpots_name(rs.getString("spots_name"));
				spotsManager.setMoney(rs.getString("money"));
				spotsManager.setTrip(rs.getString("trip"));
				spotsManager.setScenery(rs.getString("scenery"));
				spotsManager.setDatatime(rs.getString("datatime"));
				spotsManager.setIntroduction_x(rs.getString("introduction_x"));
				spotsManager.setName(rs
						.getString("scenic_spots_information.name"));
				spotsManager.setTime(rs.getString("time"));
				spotsManager.setCompany(rs.getString("company"));
				spotsManager.setV3(rs.getString("v3"));
				spotsManager.setV4(rs.getString("v4"));
				spotsManager.setType(rs.getString("type"));
				spotsManager.setImage(rs
						.getString("scenic_spots_information.image"));
				spotsManager.setXingji(rs.getString("xingji"));
				spotsManager.setTel(rs.getString("usermanager.PhoneNumber"));
				spotsManager.setNumber(rs.getString("number"));
				spotsManager.setNumbermax(rs.getString("numbermax"));
				spotsManager.setStyle(rs.getString("usermanager.name"));
				spotsManager.setGuideID(rs
						.getString("scenic_spots_information.name"));
				spotsManager.setDaoyou(rs.getString("guide.name"));
				list.add(spotsManager);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close();
		}
		return list;
	}

	public String name(String spots_Id) {
		String sql = "select spots_name from scenic_spots_information where spots_Id='"
				+ spots_Id + "'";
		String name = "";
		try {
			ResultSet rs = db.executeQuery(sql);
			if (rs.next()) {
				name = rs.getString("");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close();
		}
		return name;
	}

}
