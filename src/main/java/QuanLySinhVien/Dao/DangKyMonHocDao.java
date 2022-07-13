package QuanLySinhVien.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import QuanLySinhVien.Entity.DangKyMonHoc;
import QuanLySinhVien.Entity.mapper.MapperTableDangKyMonHoc;

@Repository
public class DangKyMonHocDao extends BaseDao{
	public List<DangKyMonHoc> getTableDangKyMonHoc(String maSinhVien){
		List<DangKyMonHoc> DangKyMonHoc = new ArrayList<DangKyMonHoc>();
		String sql = "select*from DangKyMonHoc where MaSinhVien ='"+maSinhVien+"'";
		DangKyMonHoc = _jdbcTemplate.query(sql, new MapperTableDangKyMonHoc());
		return DangKyMonHoc;
	}
}
