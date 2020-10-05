package point.vender.web;

import java.io.UnsupportedEncodingException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import point.vender.web.dao.ProductDao;
import point.vender.web.dto.ProductDto;

@Controller
public class AdminController {
	
	@RequestMapping({"/", "/productManage"})
	public String productManageForm(Locale locale, Model model) {
		return "productManageForm";
	}
	
	@RequestMapping("/addProduct")
	public String addProduct(HttpServletRequest request, Locale locale, Model model) throws ServletException {
		 Logger log = Logger.getLogger("Point Vendor Data");
		

//		Map<String, String[]> map = request.getParameterMap();
//		Set<String> keySet = map.keySet();
//		
//		Iterator i = keySet.iterator();
//		while(i.hasNext()) {
//			String key = (String)i.next();
//			String val = request.getParameter(key);
//			log.info(key + " "+ val);
//		}
		
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