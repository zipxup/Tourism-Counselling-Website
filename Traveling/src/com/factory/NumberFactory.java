package com.factory;
/**
 * 查询所有记录的总数工厂类
 * */
import com.dao.INumberDAO;
import com.daoImpl.NumberImpl;

public class NumberFactory {
	public static INumberDAO getNumberFactory() {
		return new NumberImpl();
	}
}
