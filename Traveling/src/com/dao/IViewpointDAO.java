package com.dao;

/**
 * ������Ϣ�Ľ��
 * */
import java.util.List;

public interface IViewpointDAO {
	public List selManager(int spots_Id);// ������Ϣ��ѯ������ֵ

	public List xiangxi(int spots_Id);// ��ϸ��Ϣ��ѯ
	
	public String name(String spots_Id);//�����ʼ��������Ʋ�ѯ

}
