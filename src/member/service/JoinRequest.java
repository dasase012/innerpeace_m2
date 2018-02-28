package member.service;

import java.util.Date;
import java.util.Map;

public class JoinRequest {
	
	private String id;
	private String name;
	private String pwd;
	private String confirmPwd;
	private String gender;
	private String birthdate;
	private String tel;
	private String email;
	private String con_past;
	private String con_date;
	private String con_cat;
	private String position;
	private Date regdate;
	
	public boolean isPasswordEqualToConfirm() {
		return pwd!=null && pwd.equals(confirmPwd);
	}
	
	
	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	public String getConfirmPwd() {
		return confirmPwd;
	}


	public void setConfirmPwd(String confirmPwd) {
		this.confirmPwd = confirmPwd;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getBirthdate() {
		return birthdate;
	}


	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getCon_past() {
		return con_past;
	}


	public void setCon_past(String con_past) {
		this.con_past = con_past;
	}


	public String getCon_date() {
		return con_date;
	}


	public void setCon_date(String con_date) {
		this.con_date = con_date;
	}


	public String getCon_cat() {
		return con_cat;
	}


	public void setCon_cat(String con_cat) {
		this.con_cat = con_cat;
	}


	public String getPosition() {
		return position;
	}


	public void setPosition(String position) {
		this.position = position;
	}


	public Date getRegdate() {
		return regdate;
	}


	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}


	public void validate(Map<String,Boolean> errors) {
		checkEmpty(errors,id,"id");
		checkEmpty(errors,name,"name");
		checkEmpty(errors,pwd,"pwd");
		checkEmpty(errors,confirmPwd,"confirmPwd");
		if(!errors.containsKey("confirmPwd")) {
			if(!isPasswordEqualToConfirm()) {
				errors.put("notMatch", Boolean.TRUE);
			}
		}
		
	}
	private void checkEmpty(Map<String,Boolean> errors, String value, String fieldName) {
		if(value==null || value.isEmpty())
			errors.put(fieldName, Boolean.TRUE);
	}
}
