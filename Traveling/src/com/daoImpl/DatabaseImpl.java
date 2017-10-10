package com.daoImpl;

/**
 * 实现资料库接口
 * */
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.IDatabaseDAO;
import com.vo.Database;

import common.DatabaseManager;

public class DatabaseImpl implements IDatabaseDAO {
	DatabaseManager db = new DatabaseManager();
	List list = new ArrayList();

	public List select() {
		String sql = "select name,pop,information,time from database1";
		try {
			ResultSet rs = db.executeQuery(sql);
			while (rs.next()) {
				Database database = new Database();
				database.setName(rs.getString("name"));
				database.setPop(rs.getString("pop"));
				database.setInformaction(rs.getString("information"));
				database.setTime(rs.getString("time"));
				list.add(database);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close();
		}
		return list;
	}
}
