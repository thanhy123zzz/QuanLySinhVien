package QuanLySinhVien.Dao;

import java.io.IOException;
import java.sql.Blob;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import QuanLySinhVien.Entity.SinhVien;
import QuanLySinhVien.Entity.mapper.MapperTableSinhVien;

@Repository
public class SinhVienDao extends BaseDao{
	
	public List<SinhVien> getTableSinhVien(){
		List<SinhVien> sinhViens = new ArrayList<SinhVien>();
		String sql = "select*from Sinhvien";
		sinhViens = _jdbcTemplate.query(sql, new MapperTableSinhVien());
		return sinhViens;
	}
	public List<SinhVien> getTableSinhVienWithKey(String key){
		List<SinhVien> sinhViens = new ArrayList<SinhVien>();
		String sql = "select*from Sinhvien where concat_ws(' ',MaSinhVien,Ho, Ten,diaChi,Nganh,ChuyenNganh,QuocTich,SoDienThoai,DanToc) like '%"+key+"%';";
		sinhViens = _jdbcTemplate.query(sql, new MapperTableSinhVien());
		return sinhViens;
	}
	public boolean addSinhVien(SinhVien sinhVien) {
		if(findOne(sinhVien.getMaSinhVien()).size() == 0 ) {
	        SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
	        String strDate = formatter.format(sinhVien.getNgaySinh());
			String sql = "INSERT into sinhvien (MaSinhVien,Ho,Ten,NgaySinh,GioiTinh,MaLop) values('"+sinhVien.getMaSinhVien()+"','"+sinhVien.getHo()+"','"+sinhVien.getTen()+"','"+strDate+"','"+sinhVien.getGioiTinh()+"','"+sinhVien.getMaLop()+"')";
			_jdbcTemplate.update(sql);
			return true;
		}else {
			return false;
		}
	}
	
	public int addImage(MultipartFile photo, String maSinhVien) throws IOException {
		byte[] photoBytes = photo.getBytes();

		String sql = "update sinhvien set HinhSinhVien =? where MaSinhVien = ?";

		return _jdbcTemplate.update(sql, new Object[] {photoBytes,maSinhVien });
		
	}
	public Blob getImageByID(String maSinhVien) {

		String query = "select HinhSinhVien from sinhvien where MaSinhVien=?";

		Blob photo = _jdbcTemplate.queryForObject(query, new Object[] { maSinhVien }, Blob.class);

		return photo;
	}
	
	public boolean editSinhVien(SinhVien sinhVien) {
	        SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
	        String strDate = formatter.format(sinhVien.getNgaySinh());
			String sql = "update sinhvien set Ho = ?,Ten =? ,NgaySinh=?,GioiTinh=?,MaLop=?,email=?,SoDienThoai=?,DiaChi=?,CMND=?,Nganh=?,DanToc=?,NienKhoa=?,ChuyenNganh=?,QuocTich=? where MaSinhVien = '"+sinhVien.getMaSinhVien()+"'";
			int i = _jdbcTemplate.update(sql,sinhVien.getHo(),sinhVien.getTen(),strDate
					,sinhVien.getGioiTinh(),sinhVien.getMaLop(),sinhVien.getEmail(),sinhVien.getSoDienThoai()
					,sinhVien.getDiaChi(),sinhVien.getCMND(),sinhVien.getNganh(),sinhVien.getDanToc(),sinhVien.getNienKhoa()
					,sinhVien.getChuyenNganh(),sinhVien.getQuocTich());
			if(i == 1 ) {
			return true;
		}else {
			return false;
		}
	}
	public boolean deleteSinhVien(String maSinhVien) {
		String sql = "DELETE FROM sinhvien WHERE MaSinhVien='"+maSinhVien+"';";
		int i = _jdbcTemplate.update(sql);
		if(i >= 1 ) {
		return true;
	}else {
		return false;
	}
}
	public List<SinhVien> findOne(String maSinhVien) {
		String sql = "select*from Sinhvien where masinhvien = '"+maSinhVien+"'";
		List<SinhVien> sinhViens = new ArrayList<SinhVien>();
		sinhViens = _jdbcTemplate.query(sql, new MapperTableSinhVien());
		return sinhViens;
	}
	
}
