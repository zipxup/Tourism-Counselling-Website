package com.factory;

/**
 * ���Ͽ�ʵ����
 * */
import com.dao.IDatabaseDAO;
import com.daoImpl.DatabaseImpl;

public class DatabaseFactory {
	public static IDatabaseDAO getDatabaseFactory() {
		return new DatabaseImpl();

	}
}
