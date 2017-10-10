package com.daoImpl;

/**
 * 公告信息业务处理类
 * */
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.IAnnouncementDAO;
import com.vo.Announcement;

import common.DatabaseManager;

public class AnnouncementImpl implements IAnnouncementDAO {
	DatabaseManager db = new DatabaseManager();
	List list = new ArrayList();

	public List select() {
		String sql = "select name,title,content,time from announcement";
		try {
			ResultSet rs = db.executeQuery(sql);
			while (rs.next()) {
				Announcement announcement = new Announcement();
				announcement.setName(rs.getString("name"));
				announcement.setTitle(rs.getString("title"));
				announcement.setContent(rs.getString("content"));
				announcement.setTime(rs.getString("time"));
				list.add(announcement);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close();
		}
		return list;
	}

	public boolean rester(String name, String title, String content) {
		boolean b = false;
		String time = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
				.format(new java.util.Date());
		String sql = "insert into announcement(name,title,content,time) value('"
				+ name + "','" + title + "','" + content + "','" + time + "')";
		System.out.println("sql===============" + sql);
		try {
			if (db.executeUpdate(sql) > 0) {
				b = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close();
		}
		return b;
	}
}
