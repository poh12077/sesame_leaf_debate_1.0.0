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
	    
	    public void updateCheck(Data data) {
	    	try {
	    		String check_option = data.getCheck_option();
	    		String question_number = data.getQuestion_number();
	    		String sql=null;
	    		String userID=data.getUserID();
	    		
	    		if(question_number.equals("question_one") ) {
	    			sql = "update user set question_one = ? where userID = ?";
		    		pstmt = conn.prepareStatement(sql);
		    		 pstmt.setString(1, check_option);
		    		 pstmt.setString(2, userID);
		    		 pstmt.executeUpdate();
	    		}else if(question_number.equals("question_two") ){
	    			sql = "update user set question_two = ? where userID = ?";
		    		pstmt = conn.prepareStatement(sql);
		    		 pstmt.setString(1, check_option);
		    		 pstmt.setString(2, userID);
		    		 pstmt.executeUpdate();
	    		}
	    		
	    	}catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    }
	    
	    
	    public int update(Data data) {
	    	try {
	    		updateCheck(data);
	    		
	    		String check_option = data.getCheck_option();
	    		String question_number = data.getQuestion_number();
	    		String sql=null;
	              
	    		if(check_option.equals("check_one")) {
	    			sql = "update check_result set check_one = check_one + 1 where question_number = ?";
	    			 pstmt = conn.prepareStatement(sql);
	    			 pstmt.setString(1, question_number);
	    	          return pstmt.executeUpdate();
	    		}else if(check_option.equals("check_two")) {
	    			sql = "update check_result set check_two = check_two + 1 where question_number = ?";
	    			 pstmt = conn.prepareStatement(sql);
	    			 pstmt.setString(1, question_number);
	    			 return	pstmt.executeUpdate();
	    		}else if(check_option.equals("check_three")) {
	    			sql = "update check_result set check_three = check_three + 1 where question_number = ?";
	    			 pstmt = conn.prepareStatement(sql);
	    			 pstmt.setString(1, question_number);
	    			 return pstmt.executeUpdate();
	    		}else {
	    			return 0;
	    		}
	    		
	    	}catch(Exception e) {
	    		e.printStackTrace();
	    		return -1;
	    	}
	    }
	    
	    public int read(String question_number, String check_option) {
	    	try {
	    		String sql="select * from check_result WHERE question_number = ?";
	    		 pstmt = conn.prepareStatement(sql);
	    		 pstmt.setString(1, question_number);
	             rs = pstmt.executeQuery();
	             if(rs.next()) {
	            	return rs.getInt(check_option);
	             }
	    	}catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    	return -1;
	    }
	  
	    public int join(User user) 
	    {
	        String SQL = "INSERT INTO user VALUES (?, ?, ?)";
	        try {
	            pstmt = conn.prepareStatement(SQL);
	            pstmt.setString(1, user.getUserID());
	            
//	           password  =  Integer.toString( user.getUserPassword().hashCode() );
//	           for (int i=0;i<hashing_iteration;i++)
//	           {
//	           password = Integer.toString( password.hashCode() );
//	           }
	           
	           pstmt.setString(2, user.getUserPassword() );
	           pstmt.setString(3, user.getUserGender() );
	             
	            return pstmt.executeUpdate();
	        } catch(Exception e) {
	            e.printStackTrace();
	        }
	        return -1; 
	    }
	    
	    
	    public int login(String userID, String userPassword) 
	    {
	        String SQL = "SELECT * FROM USER WHERE userID = ?";
	        try 
	        {
	            pstmt = conn.prepareStatement(SQL);
	            pstmt.setString(1, userID);
	            rs = pstmt.executeQuery();
	            if(rs.next())
	            {
	            	
//	            	   password = Integer.toString( userPassword.hashCode() );
//	            	  
//	            	   for (int i=0;i<hashing_iteration;i++)
//	            	   {          		   
//	            	         	   password = Integer.toString( password.hashCode() );
//	            	   }
	           
	            	   if(rs.getString(2).equals(userPassword))
	                    return 1;   
	                else
	                    return 0; 
	            }
	            return -1; 
	            
	        } catch (Exception e) 
	        {
	            e.printStackTrace();
	        }
	        return -2; 
	        
	    }
	    
}
