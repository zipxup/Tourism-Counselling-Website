package com.dao;
/**
 * �����ѱ���������ѯ
 * */
import java.util.List;

import com.vo.Name;

public interface INameDAO {
	public List<Name> select(String spots_Id);//������ѱ���������ѯ
}
