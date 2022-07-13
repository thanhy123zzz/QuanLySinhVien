package QuanLySinhVien.AdminController;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HomeController extends BaseController{

	@RequestMapping(value ={"/trang-chu"})
	public ModelAndView Index() {
		mv = new ModelAndView("admin/index");
		
		return mv;
	}
	@RequestMapping("/trang-chu/tim-kiem")
	public String TimKiem(@RequestParam("search") String key,Model m) {
		m.addAttribute("sinhViens", _homeService.getTableSinhVienWithkey(key));
		m.addAttribute("monHocs", _homeService.getTableMonHoc());
		return "admin/timKiem";
	}

}
