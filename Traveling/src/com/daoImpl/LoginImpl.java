package com.daoImpl;
/**
 *用户登录接口类 
 */
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;

import com.dao.ILoginDAO;
import com.vo.UserManager;

import common.DatabaseManager;

public class LoginImpl implements ILoginDAO {
	DatabaseManager db = new DatabaseManager();
	List list = new ArrayList();

	public boolean select(String account, String password) {// 查询是否登录成功
		String sql = "select account,name from usermanager where account='"
				+ account + "' and password='" + password + "'";
		try {
			if (db.executeQuery(sql).next()) {
				return true;
			}else
			{}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close();
		}
		return false;
	}

	public List login(String account, String password) {// 程序登录
		String sql = "select account,name from usermanager where account='"
				+ account + "' and password='" + password + "'";
		ResultSet rs;
		try {
			rs = db.executeQuery(sql);
			if (rs.next()) {
				UserManager login = new UserManager();
				login.setAccount(rs.getString("account"));
				login.setName(rs.getString("name"));
				list.add(login);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close();
		}
		return list;
	}

	public List user(String account) {// 用户信息查询
		String sql = "select name,account,sex,birthday,emil,PhoneNumber,Password,image from usermanager where Id='"
				+ account + "'";
		ResultSet rs;
		try {
			rs = db.executeQuery(sql);
			if (rs.next()) {
				UserManager login = new UserManager();
				login.setName(rs.getString("name"));
				login.setAccount(rs.getString("account"));
				login.setSex(rs.getString("sex"));
				login.setBirthday(rs.getString("birthday"));
				login.setEmail(rs.getString("emil"));
				login.setPhoneNumber(rs.getString("PhoneNumber"));
				login.setPassword(rs.getString("Password"));
				login.setImage(rs.getString("image"));
				list.add(login);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close();
		}
		return list;
	}

	public List emil(String account) {
		String sql = "select name,emil from usermanager where account='"
				+ account + "'";
		ResultSet rs;
		try {
			rs = db.executeQuery(sql);
			if (rs.next()) {
				UserManager login = new UserManager();
				login.setName(rs.getString("name"));
				login.setAccount(rs.getString("account"));
				login.setSex(rs.getString("sex"));
				login.setBirthday(rs.getString("birthday"));
				login.setEmail(rs.getString("emil"));
				login.setPhoneNumber(rs.getString("PhoneNumber"));
				login.setPassword(rs.getString("Password"));
				login.setImage(rs.getString("image"));
				list.add(login);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close();
		}
		return list;
	}

}
