package schoolsfinder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
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
	// creating connection for database
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
	 public String InboxMessage(InboxFU msg) {
			loadDriver(dbDriver);
			Connection con=getConnection();
			String query="INSERT INTO inbox VALUES(?,?,?,?,?,?)";
					
			String message="Message Sent";
			
			PreparedStatement ps;
			//PreparedStatement ps=null;
			try {
				ps=con.prepareStatement(query);
				ps.setString(1, null);
				ps.setString(2, msg.getNames());
	            ps.setString(3, msg.getEmail());
	            ps.setString(4, msg.getSubject());
	            ps.setString(5, msg.getPhone());
	            ps.setString(6, msg.getMessages());
				ps.executeUpdate();
			} catch (Exception e) {
						
				//JOptionPane.showMessageDialog(rootPane, e);
				message=e.toString();
				e.printStackTrace();
			}
			return message;
		}
}