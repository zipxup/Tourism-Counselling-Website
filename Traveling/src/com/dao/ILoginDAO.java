package com.dao;

/**
 *�û���¼�ӿ��� 
 */
import java.util.List;

public interface ILoginDAO {
	public boolean select(String account, String password);// ��ѯ�Ƿ��¼�ɹ�

	public List login(String account, String password);// �����¼

	public List user(String account);// �û���Ϣ��ѯ

	public List emil(String account);//������Ϣ��������ע���ѯ����
}
