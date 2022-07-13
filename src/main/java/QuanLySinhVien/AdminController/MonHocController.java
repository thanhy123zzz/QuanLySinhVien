package QuanLySinhVien.AdminController;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import QuanLySinhVien.Entity.MonHoc;

@RequestMapping("/trang-chu/danh-sach-mon-hoc")
@Controller
public class MonHocController extends BaseController{
	@RequestMapping(value ={""})
	public ModelAndView MonHoc() {
		mv.setViewName("admin/tableMonHoc");
		mv.addObject("tableMonHoc", _homeService.getTableMonHoc());
		return mv;
	}
	@RequestMapping(value= {"/them-mon-hoc"})
	public String addMonHoc(Model m) {
		m.addAttribute("monHoc", new MonHoc());
		return "admin/addMonHoc";
	}
	@RequestMapping(value= {"/them-mon-hoc"},method = RequestMethod.POST)
	public String addMonHoc(@Valid @ModelAttribute("monHoc") MonHoc monHoc,BindingResult br,Model m) {
		if(br.hasErrors()) {
			return "admin/addMonHoc";
		}
		else {
			if(_homeService.addMonHoc(monHoc)!=0) {
				m.addAttribute("trangThai2", true);
				m.addAttribute("tinChi", monHoc.getSoTinChi());
				return "admin/addMonHoc";
			}
			m.addAttribute("trangThai2", false);
			return "admin/addMonHoc";
		}
	}
	@RequestMapping(value= {"/sua-mon-hoc/{id}"})
	public String editMonHoc(Model m,@PathVariable("id") String id) {
		m.addAttribute("maMH",id);
		m.addAttribute("monHoc",_homeService.getMonHoc(id).get(0));
		m.addAttribute("tinChi",_homeService.getMonHoc(id).get(0).getSoTinChi());
		return "admin/editMonHoc";
	}
	@RequestMapping(value= {"/sua-mon-hoc/{id}"},method = RequestMethod.POST)
	public String editMonHoc(@ModelAttribute("monHoc") MonHoc monHoc,Model m) {
		if(_homeService.editMH(monHoc)!=0) {
			m.addAttribute("trangThai2", true);
			m.addAttribute("tinChi", monHoc.getSoTinChi());
			return "admin/editMonHoc";
		}
		m.addAttribute("trangThai2", false);
		m.addAttribute("tinChi", monHoc.getSoTinChi());
		return "admin/editMonHoc";
	}
	@RequestMapping(value= {"/xoa/{id}"})
	public String addMonHoc(@PathVariable("id") String id,Model m) {
		mv.addObject("tenMonHoc", _homeService.getMonHoc(id).get(0).getTenMH());
		if(_homeService.deleteMH(id)!=0) {
			mv.addObject("trangThai3", true);
			return "redirect:/trang-chu/danh-sach-mon-hoc";
		}
		mv.addObject("trangThai3", false);
		return "redirect:/trang-chu/danh-sach-mon-hoc";
	}
}
