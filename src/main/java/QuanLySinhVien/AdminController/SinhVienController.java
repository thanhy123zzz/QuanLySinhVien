package QuanLySinhVien.AdminController;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import QuanLySinhVien.Entity.SinhVien;

@Controller
public class SinhVienController extends BaseController {
	@RequestMapping(value = { "/trang-chu/sinh-vien/them-sinh-vien" }, method = RequestMethod.GET)
	public ModelAndView formThemSinhVien() {
		mv = new ModelAndView("admin/addSinhVien");
		mv.addObject("sinhVien", new SinhVien());
		return mv;
	}

	@RequestMapping(value = { "/trang-chu/sinh-vien/them-sinh-vien" }, method = RequestMethod.POST)
	public String addThemSinhVien(@Valid @ModelAttribute("sinhVien") SinhVien sinhVien, BindingResult br,Model model) {
		if (br.hasErrors()) {
			return "admin/addSinhVien";
		} else {
			_homeService.addSinhVien(sinhVien);
			model.addAttribute("trangThai", true);
			return "admin/addSinhVien";
		}
	}

	@RequestMapping(value = { "/trang-chu/sinh-vien" }, method = RequestMethod.GET)
	public ModelAndView SinhVien() {
		mv.setViewName("admin/table");
		mv.addObject("tableSinhVien", _homeService.getTableSinhVien());
		return mv;
	}

	@RequestMapping(value = { "/xoa-{maSinhVien}" })
	public String deleteSinhVien(@PathVariable String maSinhVien, HttpServletRequest request) {
		boolean kq = _homeService.deteteSinhVien(maSinhVien);
		if (kq) {
			mv.addObject("status", true);
			mv.addObject("maSinhVien", maSinhVien);
			mv.addObject("tableSinhVien", _homeService.getTableSinhVien());
		} else {
			mv.addObject("status", false);
		}
		return "redirect:/trang-chu/sinh-vien";
	}

}
