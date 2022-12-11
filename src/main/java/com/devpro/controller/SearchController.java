package com.devpro.controller;

import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.model.AjaxResponse;
import com.devpro.model.ProductSearch;
import com.devpro.model.search;
import com.devpro.services.ProductService;

@Controller
public class SearchController{

	private static final String CURRENTCATEGORYSEO = null;

	/**
	 * 
	 * @param model:    trung gian trao đổi thông tin giữa Controller và View(Jsp)
	 * @param request:  Chứa các thông tin Trình Duyệt truy vấn thông qua mẫu:
	 *                  ?abc=xyz
	 * @param response: Dữ liệu trả về Trình Duyệt.
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = { "/search" }, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("search", new search());
		return "front-end/search";
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
	@Autowired
	ProductService productService;
	//SEARCH-KEYWORD
		@RequestMapping(value = { "/search" }, method = RequestMethod.POST)
		public String seachByKeyWord(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
				throws Exception {
			HttpSession httpSession = request.getSession();
			ProductSearch productSearch = (ProductSearch) httpSession.getAttribute("productSeach");
			httpSession.removeAttribute(CURRENTCATEGORYSEO);
			
			String keyword = request.getParameter("keyword");
			productSearch.setKeyword(keyword);
			
			Integer currentPage = 1;
			
			String strCurrentPage = request.getParameter("page");
			
			if(strCurrentPage != null) currentPage = Integer.parseInt(strCurrentPage);
				productSearch.setCurrentPage(currentPage);
			
			productSearch.setCurrentPage(null);
			httpSession.setAttribute("size", productService.search(productSearch).size());
			
			productSearch.setCurrentPage(currentPage);
			model.addAttribute("products", productService.search(productSearch));
			return "front-end/product";
		}
}
