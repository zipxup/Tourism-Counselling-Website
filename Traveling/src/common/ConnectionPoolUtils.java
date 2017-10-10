package common;


/*���ӳع����࣬����Ψһ��һ�����ݿ����ӳض���*/
public class ConnectionPoolUtils {
	private static ConnectionPool poolInstance = null;

	public static ConnectionPool GetPoolInstance() {
		if (poolInstance == null) {
			poolInstance = new ConnectionPool(
					"com.mysql.jdbc.Driver",
					"jdbc:mysql://localhost:3306/traveling?characterEncoding=utf-8",
					"root", "123456");
			try {
				poolInstance.createPool();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return poolInstance;
	}
}
