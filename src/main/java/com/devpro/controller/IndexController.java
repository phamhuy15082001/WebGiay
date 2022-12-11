package com.devpro.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.entities.Category;
import com.devpro.repositories.CategoryRepo;

@Controller // -> tạo ra 1 bean tên webConf và được spring-container quản lí.
			// -> báo module web mapping request cho controller này.
public class IndexController extends BaseController{
	
	@Autowired
	private CategoryRepo categoryRepo;
	
	/**
	 * @param model: trung gian trao đổi thông tin giữa Controller và View(Jsp)
	 * @param request: Chứa các thông tin Trình Duyệt truy vấn thông qua mẫu: ?abc=xyz
	 * @param response: Dữ liệu trả về Trình Duyệt.
	 */
	@RequestMapping(value = { "/index" }, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		
		// lấy thông tin dữ liệu Trình Duyệt hỏi thông qua mẫu: ?abc=xyz
		final String title = request.getParameter("title");
		final String currentDate = request.getParameter("currentdate");

		// đẩy dữ liệu từ Controller xuống View(JSP) thông qua model.
		// dữ liệu có tên là title và giá trị là `title`
		model.addAttribute("title", title);
		model.addAttribute("currentdate", currentDate);
		
		model.addAttribute("createAProduct", createAProduct());
		
		List<Category> categories = categoryRepo.findAll();
		model.addAttribute("categories", categories);
		
		return "front-end/index";
	}
	private Object createAProduct() {
		// TODO Auto-generated method stub
		return null;
	}
	@RequestMapping(value = { "/Customer" }, method = RequestMethod.GET)
	public String index1(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		return "back-end/Customer";
}
}
