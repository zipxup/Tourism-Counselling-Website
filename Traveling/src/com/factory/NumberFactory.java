package com.factory;
/**
 * ��ѯ���м�¼������������
 * */
import com.dao.INumberDAO;
import com.daoImpl.NumberImpl;

public class NumberFactory {
	public static INumberDAO getNumberFactory() {
		return new NumberImpl();
	}
}
