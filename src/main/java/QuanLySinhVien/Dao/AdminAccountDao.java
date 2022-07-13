package QuanLySinhVien.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import QuanLySinhVien.Entity.AdminAccount;
import QuanLySinhVien.Entity.mapper.MappperAccount;

@Repository
public class AdminAccountDao extends BaseDao{
		public boolean getAccount(AdminAccount adminAccount){
	List<AdminAccount> account = new ArrayList<AdminAccount>();
	String sql = "select*from adminaccount where AdminName = '"+adminAccount.getAdminName()+"' and Pass ='"+adminAccount.getPassword()+"'";
	account = _jdbcTemplate.query(sql, new MappperAccount());
	if(account.size()!=0) {
		return true;
	}
	else {
		return false;
	}
	}
}
