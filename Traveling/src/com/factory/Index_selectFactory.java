package com.factory;
/**
 * ��ҳ�����ʾ��Ϣ������
 * */
import com.dao.IIndexSelectDAO;
import com.daoImpl.IndexSelectImpl;

public class Index_selectFactory {
	public static IIndexSelectDAO getViewpointFactory() {
		return new IndexSelectImpl();
	}
}
