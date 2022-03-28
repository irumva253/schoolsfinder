package schoolsfinder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
@SuppressWarnings("unused")
public class DatabaseConnection {
	private String dburl="jdbc:mysql://localhost:3306/schoolsfinder";
	private String dbuser="root";
	private String dbpassword="";
	private String dbDriver="com.mysql.cj.jdbc.Driver";
	
	//codes to load driver of mysql connector
	public void loadDriver(String dbDriver) {
		
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public Connection getConnection() {
		Connection con=null;
		try {
			con=DriverManager.getConnection(dburl,dbuser,dbpassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	
	}
}