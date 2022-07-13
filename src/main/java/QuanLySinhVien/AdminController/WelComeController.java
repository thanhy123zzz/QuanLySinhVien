package QuanLySinhVien.AdminController;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import QuanLySinhVien.Entity.AdminAccount;

@Controller
public class WelComeController extends BaseController{
@RequestMapping(value ={"/"})
public ModelAndView WebCome() {
	mv = new ModelAndView("admin/WelCome");
	return mv;
	}
@RequestMapping(value ={"/dang-nhap"},method = RequestMethod.GET)
public ModelAndView WebComeDangNhap(Model model) {
	mv.setViewName("admin/DangNhap");
	model.addAttribute("adminAccount",new AdminAccount());
	return mv;
}
@RequestMapping(value ={"/dang-nhap"},method = RequestMethod.POST)
public String btnDangNhap(@ModelAttribute("adminAccount") AdminAccount adminAccount) {
return "redirect:/trang-chu";
	}
}
