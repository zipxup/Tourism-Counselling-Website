package com.dao;
/**
 * �������Խӿ���
 * */
import java.util.List;

import com.vo.Leave;

public interface ILeaveDAO {
	public boolean insert(Leave leave);// ��Ӿ�����Ϣ������

	public int number(int spots_Id);// ��ѯ��ǰ�����������

	public List select(int i, int j);// ��ѯ��ǰ��5����¼
}
