package QuanLySinhVien.Service;

import java.io.IOException;
import java.sql.Blob;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import QuanLySinhVien.Entity.AdminAccount;
import QuanLySinhVien.Entity.DangKyMonHoc;
import QuanLySinhVien.Entity.Diem;
import QuanLySinhVien.Entity.MonHoc;
import QuanLySinhVien.Entity.SinhVien;

@Service
public interface IHomeService {
	@Autowired
	public List<SinhVien> getTableSinhVien();
	@Autowired
	public List<SinhVien> getTableSinhVienWithkey(String key);
	@Autowired
	public List<MonHoc> getTableMonHoc();
	@Autowired
	public boolean addSinhVien(SinhVien sinhVien);
	@Autowired
	public boolean editSinhVien(SinhVien sinhVien);
	@Autowired
	public boolean deteteSinhVien(String maSinhVien);
	@Autowired
	public SinhVien openSinhVien(String maSinhVien);
	@Autowired
	public List<DangKyMonHoc> getTableDangKyMonHoc(String maSinhVien);
	@Autowired
	public List<Diem> getTableDiem(String maSinhVien);
	@Autowired
	public Diem getDiemByID(int id);
	@Autowired
	public List<Diem> getDiemTb(String maSinhVien);
	@Autowired
	public boolean getAccount(AdminAccount adminAccount);
	@Autowired
	public int insertImageSV(MultipartFile photo,String MaSinhVien) throws IOException;
	@Autowired
	public Blob getImageSinhVien(String MaSinhVien);
	@Autowired
	public int addMonHoc(MonHoc monhoc);
	@Autowired
	public List<MonHoc> getMonHoc(String maMH);
	@Autowired
	public int editMH(MonHoc monhoc);
	@Autowired
	public int deleteMH(String id);
}
