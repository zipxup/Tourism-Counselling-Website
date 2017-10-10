package com.dao;

/**
 *用户登录接口类 
 */
import java.util.List;

public interface ILoginDAO {
	public boolean select(String account, String password);// 查询是否登录成功

	public List login(String account, String password);// 程序登录

	public List user(String account);// 用户信息查询

	public List emil(String account);//景点信息电子邮箱注册查询邮箱
}
