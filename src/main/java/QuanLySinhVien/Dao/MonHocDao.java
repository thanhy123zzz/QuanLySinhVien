package QuanLySinhVien.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import QuanLySinhVien.Entity.MonHoc;
import QuanLySinhVien.Entity.mapper.MapperTableMonHoc;
@Repository
public class MonHocDao extends BaseDao{

	public List<MonHoc> getTableMonHoc(){
		List<MonHoc> monHocs = new ArrayList<MonHoc>();
		String sql = "select*from MonHoc";
		monHocs = _jdbcTemplate.query(sql, new MapperTableMonHoc());
		return monHocs;
	}
	public int addMonHoc(MonHoc monhoc)
	{
		String sql = "insert into MonHoc(MaMH,TenMH,SoTinChi) value(?,?,?)";
		return _jdbcTemplate.update(sql, new Object[] {monhoc.getMaMH(),monhoc.getTenMH(),monhoc.getSoTinChi()});
	}
	public List<MonHoc> getMonHoc(String ma){
		List<MonHoc> monHocs = new ArrayList<MonHoc>();
		String sql = "select MaMH,TenMH,SoTinChi from MonHoc where MaMH='"+ma+"'";
		monHocs = _jdbcTemplate.query(sql, new MapperTableMonHoc());
		return monHocs;
	}
	public int editMonHoc(MonHoc monhoc)
	{
		String sql = " update MonHoc set TenMH=?,SoTinChi=? where MaMH=?";
		return _jdbcTemplate.update(sql, new Object[] {monhoc.getTenMH(),monhoc.getSoTinChi(),monhoc.getMaMH()});
	}
	public int deleteMonHoc(String id)
	{
		String sql = "delete from MonHoc where MaMH =?";
		return _jdbcTemplate.update(sql, new Object[] {id});
	}
}
