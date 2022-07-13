package QuanLySinhVien.Service;

import java.io.IOException;
import java.sql.Blob;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import QuanLySinhVien.Dao.AdminAccountDao;
import QuanLySinhVien.Dao.DangKyMonHocDao;
import QuanLySinhVien.Dao.DiemDao;
import QuanLySinhVien.Dao.MonHocDao;
import QuanLySinhVien.Dao.SinhVienDao;
import QuanLySinhVien.Entity.AdminAccount;
import QuanLySinhVien.Entity.DangKyMonHoc;
import QuanLySinhVien.Entity.Diem;
import QuanLySinhVien.Entity.MonHoc;
import QuanLySinhVien.Entity.SinhVien;

@Service
public class HomeServiceImpl implements IHomeService{

	@Autowired
	private SinhVienDao sinhVienDao;
	@Autowired
	private MonHocDao monHocDao;
	@Autowired
	private DangKyMonHocDao dangKyMonHocDao;
	@Autowired
	private DiemDao diemDao;
	@Autowired
	private AdminAccountDao AccountDao;
	
	public List<SinhVien> getTableSinhVien() {
		return sinhVienDao.getTableSinhVien();
	}

	public List<MonHoc> getTableMonHoc() {
		
		return monHocDao.getTableMonHoc();
	}

	public boolean addSinhVien(SinhVien sinhVien) {
		return sinhVienDao.addSinhVien(sinhVien);
	}
	public boolean editSinhVien(SinhVien sinhVien) {
		return sinhVienDao.editSinhVien(sinhVien);
	}

	public boolean deteteSinhVien(String maSinhVien) {
		return sinhVienDao.deleteSinhVien(maSinhVien);
	}

	public SinhVien openSinhVien(String maSinhVien) {
		return sinhVienDao.findOne(maSinhVien).get(0);
	}

	public List<DangKyMonHoc> getTableDangKyMonHoc(String maSinhVien) {
		return dangKyMonHocDao.getTableDangKyMonHoc(maSinhVien);
	}

	public List<Diem> getTableDiem(String maSinhVien) {
		return diemDao.getTableDiem(maSinhVien);
	}
	
	public List<Diem> getDiemTb(String maSinhVien) {
		return diemDao.getDiemTB(maSinhVien);
	}

	public boolean getAccount(AdminAccount adminAccount) {
		return AccountDao.getAccount(adminAccount);
	}
	public int insertImageSV(MultipartFile photo, String MaSinhVien) throws IOException {
		return sinhVienDao.addImage(photo,MaSinhVien);
	}

	public Blob getImageSinhVien(String MaSinhVien) {
		return sinhVienDao.getImageByID(MaSinhVien);
	}

	public int addMonHoc(MonHoc monhoc) {
		return monHocDao.addMonHoc(monhoc);
	}

	public List<MonHoc> getMonHoc(String maMH) {
		return monHocDao.getMonHoc(maMH);
	}

	public int editMH(MonHoc monhoc) {
		return monHocDao.editMonHoc(monhoc);
	}

	public int deleteMH(String id) {
		// TODO Auto-generated method stub
		return monHocDao.deleteMonHoc(id);
	}

	public Diem getDiemByID(int id) {
		// TODO Auto-generated method stub
		return diemDao.getDiembyID(id);
	}

	public List<SinhVien> getTableSinhVienWithkey(String key) {
		
		return sinhVienDao.getTableSinhVienWithKey(key);
	}

}
