package com.factory;
/**
 * ��¼������
 * */
import com.dao.ILoginDAO;
import com.daoImpl.LoginImpl;

public class LoginFactory {
	public static ILoginDAO getLoginFactory(){
		return new LoginImpl();
		
	}
}
