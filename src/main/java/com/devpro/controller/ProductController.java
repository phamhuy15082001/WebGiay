package com.devpro.controller;

import java.util.List;  

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.entities.Product;
import com.devpro.model.AjaxResponse;
import com.devpro.model.ProductSearch;
import com.devpro.services.ProductService;

@Controller
public class ProductController extends BaseController{

	private static final com.devpro.model.ProductSearch ProductSearch = null;
	
	@Autowired
	private ProductService productService;

	/**
	 * 
	 * @param model:    trung gian trao đổi thông tin giữa Controller và View(Jsp)
	 * @param request:  Chứa các thông tin Trình Duyệt truy vấn thông qua mẫu:
	 *                  ?abc=xyz
	 * @param response: Dữ liệu trả về Trình Duyệt.
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = { "/product" }, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		return "front-end/product";
	}

	/*
	 * @RequestMapping(value = { "/contact" }, method = RequestMethod.POST) public
	 * String post(final ModelMap model, final HttpServletRequest request, final
	 * HttpServletResponse response,
	 * 
	 * @ModelAttribute("contact") Contact contact) throws IOException {
	 * System.out.println(contact.getname()); model.addAttribute("contact", new
	 * Contact()); return "front-end/contact"; }
	 */

	/**
	 * Ajax /*
	 */
	@RequestMapping(value = { "/save-product" }, method = RequestMethod.GET)
	public ResponseEntity<AjaxResponse> saveWithAjax(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response,
			@RequestBody Product con) {
		String name = String.valueOf(con.getPrice());
		String email = con.getemail();
		System.out.println(name);
		System.out.println(email);
		return ResponseEntity.ok(new AjaxResponse(200, "Chúng tôi đã nhận được yêu cầu, cảm ơn bạn :))"));
	}
	

	@RequestMapping(value = { "/product/details/{id}" }, method = RequestMethod.GET)
	public String index(@PathVariable("id") Integer id,
			final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("product", productRepo.getOne(id));
		return "front-end/product";
	}
	
	
	@RequestMapping(value = { "/category/{seo}" }, method = RequestMethod.GET)
	public String getFromCategoryId(@PathVariable("seo") String seo,
			final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		ProductSearch productSearch = new ProductSearch();
		productSearch.setSeoCategoty(seo);
		List<Product> product = productService.search(productSearch);
		model.addAttribute("products", product);
		return "front-end/product";
	}
	
}

