package com.factory;
/**
 * 景点已报名人数工厂类
 * */
import com.dao.INameDAO;
import com.daoImpl.NameImpl;

public class NameFactory {
	public static INameDAO getINameFactory() {
		return new NameImpl();
	}
}
