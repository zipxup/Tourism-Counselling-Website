package com.factory;

import com.dao.IEmailDAO;
import com.daoImpl.EmailImpl;

public class EmailFactory {
	public static IEmailDAO getEmilFactory() {
		return new EmailImpl();
	}
}
