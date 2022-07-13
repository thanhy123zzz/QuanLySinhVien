package QuanLySinhVien.Entity.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import QuanLySinhVien.Entity.Diem;

public class MapperTableDiem implements RowMapper<Diem>{

	public Diem mapRow(ResultSet rs, int rowNum) throws SQLException {
		Diem diem = new Diem();
		diem.setMaSinhVien(rs.getString("MaSinhVien"));
		diem.setMaMonHoc(rs.getString("MaMH"));
		diem.setDiem(rs.getFloat("Diem"));
		diem.setDotHoc(rs.getDate("DotHoc"));
		diem.setLop(rs.getString("Lop"));
		diem.setId(rs.getInt("id"));
			return diem;
	}
}
