package com.factory;
/**
 * µÇÂ¼¹¤³§Àà
 * */
import com.dao.ILoginDAO;
import com.daoImpl.LoginImpl;

public class LoginFactory {
	public static ILoginDAO getLoginFactory(){
		return new LoginImpl();
		
	}
}
