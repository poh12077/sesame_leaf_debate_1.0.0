package user;

public class Data {
	private String check_option;
	private String question_number;
	private String userID;
	private int number_of_check_options;
	
	public int getNumber_of_check_options() {
		return number_of_check_options;
	}
	public void setNumber_of_check_options(int number_of_check_options) {
		this.number_of_check_options = number_of_check_options;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getCheck_option() {
		return check_option;
	}
	public void setCheck_option(String check_option) {
		this.check_option = check_option;
	}
	public String getQuestion_number() {
		return question_number;
	}
	public void setQuestion_number(String question_number) {
		this.question_number = question_number;
	}
	
	

}
