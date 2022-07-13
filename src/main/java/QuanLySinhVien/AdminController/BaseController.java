package QuanLySinhVien.AdminController;

import static java.nio.charset.StandardCharsets.ISO_8859_1;
import static java.nio.charset.StandardCharsets.UTF_8;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;

import QuanLySinhVien.Service.HomeServiceImpl;

public class BaseController {
	@Autowired
	HomeServiceImpl _homeService;
	
	public ModelAndView mv = new ModelAndView();
	
	public String convert(String string) {
		byte Bytes[] = string.getBytes(ISO_8859_1);
		return new String(Bytes,UTF_8);
	}
	public static boolean isInteger(String s) {
	    System.out.println(String.format("Parsing string value: \"%s\"", s));
	    
	    if(s == null || s.equals("")) {
	      return false;
	    }
	    
	    try {
	      int iVal = Integer.parseInt(s);
	      return true;
	    }
	    catch(NumberFormatException e) {
	    }
	    return false;
	  }
}
