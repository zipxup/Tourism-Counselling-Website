package com.factory;

/**
 * ������Ϣ������
 * */
import com.dao.IAnnouncementDAO;
import com.daoImpl.AnnouncementImpl;

public class AnnouncementFactory {
	public static IAnnouncementDAO getaAnnouncementFactory() {
		return new AnnouncementImpl();
	}
}
