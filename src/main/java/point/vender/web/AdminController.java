package point.vender.web;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.appengine.api.datastore.Entity;

import point.vender.web.dao.IProductDao;
import point.vender.web.dao.ProductDao;
import point.vender.web.dto.ProductDto;

@Controller
public class AdminController {

	private static final Log LOG = LogFactory.getLog(AdminController.class );
	
	@RequestMapping({"/", "/productManage"})
	public String productManageForm(Locale locale, Model model) {
		IProductDao dao = new ProductDao();
		List<ProductDto> listDto = dao.listProduct();
		model.addAttribute("boardList", listDto);
		return "productManageForm";
	}
	
	@RequestMapping(value="searchProduct", method=RequestMethod.POST)
	public String searchProduct(HttpServletRequest request, Locale locale, Model model) throws ServletException {
		IProductDao dao = new ProductDao();	
		List<ProductDto> listDto = dao.searchProduct(request.getParameter("category"), request.getParameter("keyword"));
		model.addAttribute("boardList", listDto);
		return "productManageForm";
	}
	
	@RequestMapping(value="addProduct", method=RequestMethod.POST)
	public String addProduct(HttpServletRequest request, Locale locale, Model model) throws ServletException {
		IProductDao dao = new ProductDao();
		dao.addProduct(request.getParameterMap());
	
		return "redirect:productManage";
	}
	
	@RequestMapping(value = "modifyProduct", method = RequestMethod.POST)
	public @ResponseBody ProductDto ajaxData(@RequestBody ProductDto data, Model model) {
		IProductDao dao = new ProductDao();
		ProductDto temp = dao.getProduct(data.getDate()+data.getName());
		return temp;
	}
	
	@RequestMapping(value="deleteProduct", method=RequestMethod.POST)
	public String deleteProduct(HttpServletRequest request, Locale locale, Model model) throws ServletException {
		IProductDao dao = new ProductDao();
		dao.deleteProduct(request.getParameter("date")+request.getParameter("name"));
		
		return "redirect:productManage";
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