package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
 
public class UserDAO {
	 private Connection conn;            // DB�� �����ϴ� ��ü
	    private PreparedStatement pstmt;    // 
	    private ResultSet rs;                // DB data�� ���� �� �ִ� ��ü  (Ctrl + shift + 'o') -> auto import
	    String password;
	   
	    public UserDAO()
	    { 
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
	    
	    public int update(String check) {
	    	try {
	    		String sql=null;
	              
	    		if(check.equals("1")) {
	    			sql = "update list set one = one + 1";
	    			 pstmt = conn.prepareStatement(sql);
	    	          return pstmt.executeUpdate();
	    		}else if(check.equals("2")) {
	    			sql = "update list set two = two + 1";
	    			 pstmt = conn.prepareStatement(sql);
	    			 return	pstmt.executeUpdate();
	    		}else if(check.equals("3")) {
	    			sql = "update list set three = three + 1";
	    			 pstmt = conn.prepareStatement(sql);
	    			 return pstmt.executeUpdate();
	    		}else {
	    			return 0;
	    		}
	    		
	    	}catch(Exception e) {
	    		e.printStackTrace();
	    		return -1;
	    	}
	    }
	    
}
