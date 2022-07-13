package QuanLySinhVien.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import QuanLySinhVien.Entity.Diem;
import QuanLySinhVien.Entity.mapper.MapperTableDiem;

@Repository
public class DiemDao extends BaseDao{
	public List<Diem> getTableDiem(String maSinhVien){
		List<Diem> diems = new ArrayList<Diem>();
		String sql = "select*from Diem where MaSinhVien ='"+maSinhVien+"'";
		diems = _jdbcTemplate.query(sql, new MapperTableDiem());
		return diems;
	}
	public List<Diem> getDiemTB(String maSinhVien){
		List<Diem> diems = new ArrayList<Diem>();
		String sql = "select MaSinhVien, round(avg(Diem),2) as Diem, Dothoc,lop,MaMH,id from diem where MaSinhVien ="+maSinhVien+" and Diem<=10 and Diem >=0 group by(DotHoc);";
		diems = _jdbcTemplate.query(sql, new MapperTableDiem());
		return diems;
	}
	public Diem getDiembyID(int id) {
		List<Diem> diems = new ArrayList<Diem>();
		String sql = "select*from Diem where id ='"+id+"'";
		diems = _jdbcTemplate.query(sql, new MapperTableDiem());
		return diems.get(0);
	}
}
