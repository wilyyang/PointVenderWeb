package point.vender.web;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import point.vender.web.dao.ProductDao;

@Controller
public class AdminController {
	
	@RequestMapping({"/", "/productManage"})
	public String productManageForm(Locale locale, Model model) {
		return "productManageForm";
	}
	
	@RequestMapping("/addProduct")
	public String addProduct(HttpServletRequest request, Locale locale, Model model) throws ServletException {
		Enumeration<String> e = request.getAttributeNames();
		while(e.hasMoreElements()) {
			System.out.println(e.nextElement());
		}
		
		ProductDao dao = new ProductDao();
		dao.addDao(request.getParameter("name"), request.getParameterMap());
		
		return "productManageForm";
	}
	
	
	@RequestMapping("login")
	public String loginForm(Locale locale, Model model) {
		return "loginForm";
	}
	
	@RequestMapping("revenueManage")
	public String revenueManageForm(Locale locale, Model model) {
		return "revenueManageForm";
	}
	
	@RequestMapping("inventoryManage")
	public String inventoryManageForm(Locale locale, Model model) {
		return "inventoryManageForm";
	}
}