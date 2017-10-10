package com.factory;

/**
 * 意见提交工厂类
 * */
import com.dao.IMessageDAO;
import com.daoImpl.MessageImpl;

public class MessageFactory {
	public static IMessageDAO getMessageFactory() {
		return new MessageImpl();
	}
}
