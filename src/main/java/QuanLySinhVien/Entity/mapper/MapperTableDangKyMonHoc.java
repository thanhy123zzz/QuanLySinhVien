package QuanLySinhVien.Entity.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import QuanLySinhVien.Entity.DangKyMonHoc;

public class MapperTableDangKyMonHoc implements RowMapper<DangKyMonHoc>{

	public DangKyMonHoc mapRow(ResultSet rs, int rowNum) throws SQLException {
		DangKyMonHoc DangKy = new DangKyMonHoc();
		DangKy.setMaSinhVien(rs.getString("MaSinhVien"));
		DangKy.setMaMonHoc(rs.getString("MaMH"));
		DangKy.setNgayDangKy(rs.getDate("NgayDangKy"));
		DangKy.setDotHoc(rs.getDate("DotHoc"));
		DangKy.setLop(rs.getString("Lop"));
			return DangKy;
	}
}
