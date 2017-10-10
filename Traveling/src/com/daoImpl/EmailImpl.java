package com.daoImpl;

import java.sql.ResultSet;

import com.dao.IEmailDAO;
import common.DatabaseManager;

public class EmailImpl implements IEmailDAO {
	DatabaseManager db = new DatabaseManager();

	public String emil(String account) {
		String sql = "select emil from usermanager where account='" + account
				+ "'";
		String emil = null;
		try {
			ResultSet rs = db.executeQuery(sql);
			if (rs.next()) {
				emil = rs.getString("emil");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close();
		}
		return emil;
	}

}
