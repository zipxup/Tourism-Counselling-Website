package com.dao;

/**
 * ������Ϣ�ӿ���
 * */
import java.util.List;

public interface IGuideDAO {
	public List select();// ����ȫ����Ϣ��ѯ

	public List guide(String id);// ������Ϣ�����ѯ
}
