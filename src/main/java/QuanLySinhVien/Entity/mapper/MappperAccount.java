package QuanLySinhVien.Entity.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import QuanLySinhVien.Entity.AdminAccount;

public class MappperAccount implements RowMapper<AdminAccount>{

	public AdminAccount mapRow(ResultSet rs, int rowNum) throws SQLException {
		AdminAccount acount = new AdminAccount();
		acount.setAdminName(rs.getString("AdminName"));
		acount.setPassword(rs.getString("Pass"));
		return acount;
	}

}
