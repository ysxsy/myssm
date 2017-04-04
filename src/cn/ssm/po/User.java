package cn.ssm.po;

public class User {
	
	private int yoyo_id;
	private String nickname;
	private int level_value;
	private String sex;
	private String head;
	private String phone;
	
	public User() {
		super();
	}

	public User(int yoyo_id, String nickname, int level_value, String sex,
			String head, String phone) {
		super();
		this.yoyo_id = yoyo_id;
		this.nickname = nickname;
		this.level_value = level_value;
		this.sex = sex;
		this.head = head;
		this.phone = phone;
	}

	public int getYoyo_id() {
		return yoyo_id;
	}

	public void setYoyo_id(int yoyo_id) {
		this.yoyo_id = yoyo_id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public int getLevel_value() {
		return level_value;
	}

	public void setLevel_value(int level_value) {
		this.level_value = level_value;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getHead() {
		return head;
	}

	public void setHead(String head) {
		this.head = head;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	
	

}
