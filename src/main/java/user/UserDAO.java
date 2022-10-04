package user;

import java.io.StringReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	String password;

	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/practice";
			String dbID = "root";
			String dbPassword = "8246";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void update_check_option_in_user(Data data) throws Exception {
		String check_option = data.getCheck_option();
		String question_number = data.getQuestion_number();
		String userID = data.getUserID();
		String sql = "update user set " + question_number + " = ? where userID = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, check_option);
		pstmt.setString(2, userID);
		pstmt.executeUpdate();
	}

	public int update(Data data) throws Exception {
		String question_number = data.getQuestion_number();
		String sql = null;
		String previous_check_option = read_only_check_option_in_user(question_number, data.getUserID());
		if(previous_check_option!=null) {
			sql = "update total_check_result set " + previous_check_option + " = " + previous_check_option
					+ " - 1 where question_number = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, question_number);
			pstmt.executeUpdate();
		}
		update_check_option_in_user(data);

		String new_check_option = data.getCheck_option();

		sql = "update total_check_result set " + new_check_option + " = " + new_check_option
				+ " + 1 where question_number = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, question_number);
		return pstmt.executeUpdate();
	}

	public int read_total_check_result(String question_number, String check_option) {
		try {
			String sql = "select * from total_check_result WHERE question_number = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, question_number);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(check_option);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public String read_check_option_in_user(String question_number, String userID) {
		try {
			String sql = "select " + question_number + " from user WHERE userID = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				String check_option = rs.getString(question_number);
				if (check_option == null) {
					return question_number + "_null";
				} else {
					return question_number + "_" + check_option;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "error";
	}

	public String read_only_check_option_in_user(String question_number, String userID) {
		try {
			String sql = "select " + question_number + " from user WHERE userID = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				String check_option = rs.getString(question_number);
				return check_option;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "error";
	}

	public int join(User user) {
		String SQL = "INSERT INTO user (userID, userPassword, userGender) VALUES (?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());

//	           password  =  Integer.toString( user.getUserPassword().hashCode() );
//	           for (int i=0;i<hashing_iteration;i++)
//	           {
//	           password = Integer.toString( password.hashCode() );
//	           }

			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserGender());

			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public int login(String userID, String userPassword) {
		String SQL = "SELECT * FROM USER WHERE userID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if (rs.next()) {

//	            	   password = Integer.toString( userPassword.hashCode() );
//	            	  
//	            	   for (int i=0;i<hashing_iteration;i++)
//	            	   {          		   
//	            	         	   password = Integer.toString( password.hashCode() );
//	            	   }

				if (rs.getString(2).equals(userPassword))
					return 1;
				else
					return 0;
			}
			return -1;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2;

	}

}
