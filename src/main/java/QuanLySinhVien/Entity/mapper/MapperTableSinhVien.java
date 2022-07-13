package QuanLySinhVien.Entity.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import QuanLySinhVien.Entity.SinhVien;

public class MapperTableSinhVien implements RowMapper<SinhVien>{

	public SinhVien mapRow(ResultSet rs, int rowNum) throws SQLException {
		SinhVien sinhVien = new SinhVien();
		sinhVien.setMaSinhVien(rs.getString("MaSinhVien"));
		sinhVien.setHo(rs.getString("Ho"));
		sinhVien.setTen(rs.getString("Ten"));
		sinhVien.setNgaySinh(rs.getDate("NgaySinh"));
		sinhVien.setGioiTinh(rs.getString("GioiTinh"));
		sinhVien.setMaLop(rs.getString("MaLop"));
		sinhVien.setEmail(rs.getString("email"));
		sinhVien.setCMND(rs.getString("CMND"));
		sinhVien.setDiaChi(rs.getString("DiaChi"));
		sinhVien.setSoDienThoai(rs.getString("SoDienThoai"));
		sinhVien.setChuyenNganh(rs.getString("ChuyenNganh"));
		sinhVien.setDanToc(rs.getString("DanToc"));
		sinhVien.setQuocTich(rs.getString("QuocTich"));
		sinhVien.setNganh(rs.getString("Nganh"));
		sinhVien.setNienKhoa(rs.getString("NienKhoa"));
			return sinhVien;
	}
}