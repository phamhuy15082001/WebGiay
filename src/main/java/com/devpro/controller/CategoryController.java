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
public class CategoryController {
	
	@Autowired
	private CategoryRepo categorys;
	
	/**
	 * @param model: trung gian trao đổi thông tin giữa Controller và View(Jsp)
	 * @param request: Chứa các thông tin Trình Duyệt truy vấn thông qua mẫu: ?abc=xyz
	 * @param response: Dữ liệu trả về Trình Duyệt.
	 */
	@RequestMapping(value = { "/Category" }, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		
		// lấy thông tin dữ liệu Trình Duyệt hỏi thông qua mẫu: ?abc=xyz
		// đẩy dữ liệu từ Controller xuống View(JSP) thông qua model.
		// dữ liệu có tên là title và giá trị là `title`
		
		List<Category> categories = categorys.findAll();
		model.addAttribute("categories", categories);
		
		return "front-end/category";
	}
}
	
