package common;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

//一个用于查找数据源的工具类。
public class DatabaseManager {

	private Connection conn = null;

	private Statement stmt = null;

	ResultSet rs = null;

	private ConnectionPool connPool = null; /* 数据库连接池对象 */

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

	// 执行Insert,Update语句
	public int executeUpdate(String sql) throws Exception {
		int result = 0;
		try {
			conn = connPool.getConnection();
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
					ResultSet.CONCUR_UPDATABLE);
			result = stmt.executeUpdate(sql);

		} catch (SQLException ex) {
			System.err.println("执行SQL语句出错: " + ex.getMessage());
		}
		return result;
	}

	// 关闭stmt和关闭连接
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
