package schoolsfinder;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserLAU {
 public User checkLogin(String email, String password) throws SQLException,ClassNotFoundException {
 String jdbcURL = "jdbc:mysql://localhost:3306/schoolsfinder";
 String dbUser = "root";
 String dbPassword = "";

 Class.forName("com.mysql.jdbc.Driver");
 Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
 String sql = "SELECT * FROM tbl_users WHERE email = ? and password = ?";
 PreparedStatement statement = connection.prepareStatement(sql);
 statement.setString(1, email);
 statement.setString(2, password);

 ResultSet result = statement.executeQuery();

 User user = null;

 if (result.next()) {
     user = new User();     
     user.setEmail(email);
     user.setFname(result.getString("fname"));
     user.setLname(result.getString("lname"));
     user.setRole(result.getString("role"));
     user.setUser_id(result.getInt("user_id"));
     user.setPhone(result.getString("phone"));
 }

 connection.close();

 return user;
}
}