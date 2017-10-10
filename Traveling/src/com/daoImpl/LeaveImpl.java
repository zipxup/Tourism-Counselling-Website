package com.daoImpl;

/**
 * ʵ�ֲ�ѯ���ԵĽӿ�
 * */
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.ILeaveDAO;
import com.vo.Leave;

import common.DatabaseManager;

public class LeaveImpl implements ILeaveDAO {
	DatabaseManager db = new DatabaseManager();
	List<Leave> list = new ArrayList<Leave>();

	public boolean insert(Leave leave) {// ��Ӿ�����Ϣ������
		String sql = "insert into comment(spots_id,name,content,time) value('"
				+ leave.getSpots_id() + "','" + leave.getName() + "','"
				+ leave.getContent() + "','" + leave.getTime() + "') ";
		try {
			if (db.executeUpdate(sql) > 0) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close();
		}
		return false;
	}

	public int number(int spots_Id) {// ��ѯ��ǰ�����������
		int number = 0;
		String sql = "select COUNT(Id) from comment where spots_id='" + spots_Id
				+ "'";
		ResultSet rs;
		try {
			rs = db.executeQuery(sql);
			if (rs.next()) {
				number = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close();
		}
		return number;
	}

	public List select(int ID, int value) {// ��ѯ��ǰ��5����¼
		String sql = "select spots_id,name,content,time from comment where spots_id='"
				+ ID + "' limit " + value + ",5";
		ResultSet rs;
		try {
			rs = db.executeQuery(sql);
			while (rs.next()) {
				Leave leave = new Leave();
				leave.setSpots_id(rs.getString("spots_id"));
				leave.setName(rs.getString("name"));
				leave.setContent(rs.getString("content"));
				leave.setTime(rs.getString("time"));
				list.add(leave);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close();
		}
		return list;
	}

}
