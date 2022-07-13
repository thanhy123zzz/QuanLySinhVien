package QuanLySinhVien.Entity.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import QuanLySinhVien.Entity.MonHoc;

public class MapperTableMonHoc implements RowMapper<MonHoc>{
	public MonHoc mapRow(ResultSet rs, int rowNum) throws SQLException {
		MonHoc monHoc = new MonHoc();
		monHoc.setMaMH(rs.getString("MaMH"));
		monHoc.setTenMH(rs.getString("TenMH"));
		monHoc.setSoTinChi(rs.getInt("SoTinChi"));
			return monHoc;
	}
}
