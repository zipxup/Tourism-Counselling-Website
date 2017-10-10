package com.daoImpl;

/**
 * 景点已报名人数查询
 * */
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.INameDAO;
import com.vo.Image;
import com.vo.Name;

import common.DatabaseManager;

public class NameImpl implements INameDAO {
	DatabaseManager db = new DatabaseManager();
	List<Name> list = new ArrayList<Name>();
	Name name = new Name();

	public List<Name> select(String spots_Id) {// 景点的已报名人数查询
		String sql = "select scenic_spots_information.spots_Id,scenic_spots_information.spots_name,usermanager.name,usermanager.account from number,scenic_spots_information,usermanager where usermanager.account=number.account and scenic_spots_information.spots_Id=number.spots_Id and number.spots_Id='"
				+ spots_Id + "' and number.type='1'";
		ResultSet rs;
		try {
			rs = db.executeQuery(sql);
			while (rs.next()) {
				Name number = new Name();
				number.setSpots_Id(rs.getString("scenic_spots_information.spots_Id"));
				number.setSpots_name(rs.getString("spots_name"));
				number.setAccount(rs.getString("usermanager.account"));
				number.setName(rs.getString("usermanager.name"));
				list.add(number);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close();
		}
		return list;
	}


}
