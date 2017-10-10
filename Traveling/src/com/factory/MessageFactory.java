package com.factory;

/**
 * ����ύ������
 * */
import com.dao.IMessageDAO;
import com.daoImpl.MessageImpl;

public class MessageFactory {
	public static IMessageDAO getMessageFactory() {
		return new MessageImpl();
	}
}
