package QuanLySinhVien.Entity;

import java.util.Date;

public class DangKyMonHoc extends BaseEntity{
	
	private Date ngayDangKy;

	public Date getNgayDangKy() {
		return ngayDangKy;
	}
	public void setNgayDangKy(Date ngayDangKy) {
		this.ngayDangKy = ngayDangKy;
	}
	public DangKyMonHoc() {
		super();
	}
}
