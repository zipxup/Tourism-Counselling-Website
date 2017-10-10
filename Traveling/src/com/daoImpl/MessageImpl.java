package com.daoImpl;

/**
 * 用户提交意见接口类
 * */
import com.dao.IMessageDAO;

import com.vo.Message;

import common.DatabaseManager;

public class MessageImpl implements IMessageDAO {
	DatabaseManager db = new DatabaseManager();

	public boolean insert(Message message) {// 意见提交借口
		String sql = "insert into comper_message(name,title,content,time) value('"
				+ message.getName()
				+ "','"
				+ message.getTitle()
				+ "','"
				+ message.getContent() + "','" + message.getTime() + "')";
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
}
