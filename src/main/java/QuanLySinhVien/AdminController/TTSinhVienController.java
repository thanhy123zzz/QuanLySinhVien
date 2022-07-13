package QuanLySinhVien.AdminController;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import QuanLySinhVien.Entity.Diem;
import QuanLySinhVien.Entity.SinhVien;

@RequestMapping("/trang-chu/sinh-vien")
@Controller
public class TTSinhVienController extends BaseController{
	@RequestMapping(value = { "/{maSinhVien}"},method = RequestMethod.GET)
	public ModelAndView infoSinhVien(@PathVariable("maSinhVien") String maSinhVien) {
		SinhVien sinhVien = _homeService.openSinhVien(maSinhVien);
		mv.addObject("tableDangKyMonHoc",_homeService.getTableDangKyMonHoc(maSinhVien));
		mv.addObject("tableDiem",_homeService.getTableDiem(maSinhVien));
		mv.addObject("DiemTB",_homeService.getDiemTb(maSinhVien));
		mv.addObject("diem", new Diem());
		mv.addObject("sinhVien",sinhVien);
		mv.setViewName("admin/ThongTinSinhVien");
		return mv;
	}
	@RequestMapping(value = { "/{maSinhVien}/sua-thong-tin"},method = RequestMethod.GET)
	public ModelAndView editInfoSinhVien(@PathVariable String maSinhVien) {
		SinhVien sinhVien = _homeService.openSinhVien(maSinhVien);
		mv.addObject("sinhVien", sinhVien);
		mv.setViewName("admin/EditSinhVien");
		return mv;
	}
	@RequestMapping(value = { "/diem/{id}"})
	public String ttHocPhan(@PathVariable("id") int id,Model m) {
		m.addAttribute("diem", _homeService.getDiemByID(id));
		return "admin/TTDiem";
	}
	@RequestMapping(value = { "/{maSinhVien}/sua-thong-tin"},method = RequestMethod.POST)
	public String submit(@Valid @ModelAttribute("sinhVien") SinhVien sinhVien,BindingResult br,Model model) {
		if(br.hasErrors()) {
			System.out.println(br.toString());
			return "admin/EditSinhVien";
		}else {
			_homeService.editSinhVien(sinhVien);
			model.addAttribute("trangThai1", true);
			return "admin/EditSinhVien";
		}
	}
	@RequestMapping(value = {"/{maSinhVien}/insert-image"},method = RequestMethod.POST)
	public String insertImage(@RequestParam("photo") MultipartFile photo,@PathVariable("maSinhVien") String maSinhVien) {
		try {
			_homeService.insertImageSV(photo,maSinhVien);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "redirect:/trang-chu/sinh-vien/"+maSinhVien;
	}
	@RequestMapping(value = "/{maSinhVien}/hinh")
	public void getStudentPhoto(HttpServletResponse response, @PathVariable("maSinhVien") String id) throws Exception {
		response.setContentType("image/jpeg");

		Blob ph = _homeService.getImageSinhVien(id);

		byte[] bytes = ph.getBytes(1, (int) ph.length());
		InputStream inputStream = new ByteArrayInputStream(bytes);
		IOUtils.copy(inputStream, response.getOutputStream());
	}
}
