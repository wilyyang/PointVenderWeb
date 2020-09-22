package point.vender.web;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {


	@RequestMapping({"/", "/productManage"})
	public String home(Locale locale, Model model) {
		return "productManageForm";
	}
	
	@RequestMapping({"login"})
	public String loginForm(Locale locale, Model model) {
		return "loginForm";
	}
	
	@RequestMapping({"profile"})
	public String profileForm(Locale locale, Model model) {
		return "profileForm";
	}
}