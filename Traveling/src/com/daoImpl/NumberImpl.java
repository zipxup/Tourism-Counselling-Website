package com.daoImpl;

/**
 * 实现查询所有记录的总数的借口
 * */
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.INumberDAO;
import com.vo.SpotsManager;

import common.DatabaseManager;

public class NumberImpl implements INumberDAO {
	DatabaseManager db = new DatabaseManager();
	List list = new ArrayList();

	public int number() {// 查询景点信息的总条数
		int i = 0;
		String sql = "select count(Id) from scenic_spots_information";
		ResultSet rs;
		try {
			rs = db.executeQuery(sql);
			if (rs.next()) {
				i = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close();
		}
		return i;
	}

	public List select(String i) {//条形柱状图的查询值
		String sql = "select spots_name,number,numbermax from scenic_spots_information limit "
				+ i + ",8";
		ResultSet rs;
		try {
			rs = db.executeQuery(sql);
			while (rs.next()) {
				SpotsManager spotsManager = new SpotsManager();
				spotsManager.setSpots_name(rs.getString("spots_name"));
				spotsManager.setNumber(rs.getString("number"));
				spotsManager.setNumbermax(rs.getString("numbermax"));
				list.add(spotsManager);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close();
		}
		return list;
	}

	public List shanxing() {//扇形图的查询值
		String sql = "select spots_name,number from scenic_spots_information";
		ResultSet rs;
		try {
			rs = db.executeQuery(sql);
			while (rs.next()) {
				SpotsManager spotsManager = new SpotsManager();
				spotsManager.setSpots_name(rs.getString("spots_name"));
				spotsManager.setNumber(rs.getString("number"));
				list.add(spotsManager);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close();
		}
		return list;
	}
}
