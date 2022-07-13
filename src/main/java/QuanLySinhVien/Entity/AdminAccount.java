package QuanLySinhVien.Entity;

import javax.validation.constraints.Pattern;

public class AdminAccount {
	@Pattern(regexp = "^[a-zA-Z0-9]{3,5}",message = "Tối thiểu 3 và tối đa 5 ký tự!,Không có kí tự đặt biệt!")
	private String adminName;
	@Pattern(regexp = "^[a-zA-Z0-9]{6,15}",message = "Tối thiểu 6 và tối đa 15 ký tự!,Không có kí tự đặt biệt!")
	private String password;
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public AdminAccount() {
		super();
	}
}
