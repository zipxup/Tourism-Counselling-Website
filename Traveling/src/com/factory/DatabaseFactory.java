package com.factory;

/**
 * 资料库实现类
 * */
import com.dao.IDatabaseDAO;
import com.daoImpl.DatabaseImpl;

public class DatabaseFactory {
	public static IDatabaseDAO getDatabaseFactory() {
		return new DatabaseImpl();

	}
}
