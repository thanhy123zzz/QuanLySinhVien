package QuanLySinhVien.Entity;

import java.util.Date;

public class BaseEntity {
	private String maMonHoc;
	private String maSinhVien;
	private Date dotHoc;
	private String lop;
	public String getMaMonHoc() {
		return maMonHoc;
	}
	public void setMaMonHoc(String maMonHoc) {
		this.maMonHoc = maMonHoc;
	}
	public String getMaSinhVien() {
		return maSinhVien;
	}
	public void setMaSinhVien(String maSinhVien) {
		this.maSinhVien = maSinhVien;
	}
	public Date getDotHoc() {
		return dotHoc;
	}
	public void setDotHoc(Date dotHoc) {
		this.dotHoc = dotHoc;
	}
	public String getLop() {
		return lop;
	}
	public void setLop(String lop) {
		this.lop = lop;
	}
}
