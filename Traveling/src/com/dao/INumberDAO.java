package com.dao;
/**
 * ��ѯ���м�¼�������ӿ�
 * */
import java.util.List;
public interface INumberDAO {
	public int number();// ��ѯ������Ϣ�ļ�¼����
	
	public List select(String i);//������״ͼ�Ĳ�ѯֵ
	
	public List shanxing();//����ͼ�Ĳ�ѯֵ
}
