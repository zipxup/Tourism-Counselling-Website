package com.dao;

import java.util.List;

/**
 * ������Ϣ�ӿ�
 * */
public interface IAnnouncementDAO {
	public List select();// ������Ϣ��ѯ

	public boolean rester(String name,String title,String content);// ��� ����
}
