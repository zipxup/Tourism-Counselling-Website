package com.factory;
/**
 * �����ѱ�������������
 * */
import com.dao.INameDAO;
import com.daoImpl.NameImpl;

public class NameFactory {
	public static INameDAO getINameFactory() {
		return new NameImpl();
	}
}
