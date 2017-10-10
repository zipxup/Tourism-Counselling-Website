package common;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

//һ�����ڲ�������Դ�Ĺ����ࡣ
public class DatabaseManager {

	private Connection conn = null;

	private Statement stmt = null;

	ResultSet rs = null;

	private ConnectionPool connPool = null; /* ���ݿ����ӳض��� */

	public DatabaseManager() {
		connPool = ConnectionPoolUtils.GetPoolInstance();
	}

	public ResultSet executeQuery(String sql) throws Exception {
		try {
			conn = connPool.getConnection();
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
					ResultSet.CONCUR_UPDATABLE);
			rs = stmt.executeQuery(sql);

		} catch (SQLException e) {
			throw e;
		}
		return rs;
	}

	// ִ��Insert,Update���
	public int executeUpdate(String sql) throws Exception {
		int result = 0;
		try {
			conn = connPool.getConnection();
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
					ResultSet.CONCUR_UPDATABLE);
			result = stmt.executeUpdate(sql);

		} catch (SQLException ex) {
			System.err.println("ִ��SQL������: " + ex.getMessage());
		}
		return result;
	}

	// �ر�stmt�͹ر�����
	public void close() {
		try {
			if (rs != null) {
				rs.close();
				rs = null;
			}
			if (stmt != null) {
				stmt.close();
				stmt = null;
			}

			if (conn != null) {
				connPool.returnConnection(conn);
				conn.close();
				conn = null;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
