package point.vender.web;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	@RequestMapping({"/"})
	public String loginForm(Locale locale, Model model) {
		return "productManageForm";
	}

	@RequestMapping("/login")
	public String home(Locale locale, Model model) {
		return "loginForm";
	}
}