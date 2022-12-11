package com.devpro.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.model.AjaxResponse;
import com.devpro.model.Contact;
import com.devpro.model.register;

@Controller // -> tạo ra 1 bean tên webConf và được spring-container quản lí.
			// -> báo module web mapping request cho controller này.
public class RegisterController {
	
	/**
	 * @param model:    trung gian trao đổi thông tin giữa Controller và View(Jsp)
	 * @param request:  Chứa các thông tin Trình Duyệt truy vấn thông qua mẫu:
	 *                  ?abc=xyz
	 * @param response: Dữ liệu trả về Trình Duyệt.
	 */
	@RequestMapping(value = { "/register" }, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("register", new register());
		return "front-end/register";
	}
	
	/**
	 * 
	 * Cách 1: Dùng HttpServletRequest để lấy thông tin người dùng submit lên từ thẻ form.
	 * 
	 * @param model:    trung gian trao đổi thông tin giữa Controller và View(Jsp)
	 * @param request:  Chứa các thông tin Trình Duyệt truy vấn thông qua mẫu:
	 *                  ?abc=xyz
	 * @param response: Dữ liệu trả về Trình Duyệt.
	 */
//	@RequestMapping(value = { "/contact" }, method = RequestMethod.POST)
//	public String save(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
//			throws Exception {
//		
//		String firstname = request.getParameter("firstname");
//		String lastname = request.getParameter("lastname");
//		
//		System.out.println(firstname + " " + lastname);
//		
//		return "front-end/contact";
//	}
	
	/**
	 * 
	 * Cách 2: Dùng Spring-Form để lấy dữ liệu
	 * 
	 * @param model:    trung gian trao đổi thông tin giữa Controller và View(Jsp)
	 * @param request:  Chứa các thông tin Trình Duyệt truy vấn thông qua mẫu:
	 *                  ?abc=xyz
	 * @param response: Dữ liệu trả về Trình Duyệt.
	 */
//	@RequestMapping(value = { "/contact" }, method = RequestMethod.POST)
//	public String saveContact(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,
//							  @ModelAttribute("contact") Contact contact)
//			throws IOException {
//		System.out.println("First Name is: " + contact.getFirstname());
//		System.out.println("First Name is: " + contact.getLastname());
//		
//		// hiển thị lại trang contact, dữ liệu phải để trống cho nguowif dùng nhập tiếp.
//		model.addAttribute("contact", new Contact());
//		return "front-end/contact";
//	}
	
	/**
	 * {@link https://en.wikipedia.org/wiki/List_of_HTTP_status_codes}
	 * Cách 3: Ajax
	 * 
	 * @param model:    trung gian trao đổi thông tin giữa Controller và View(Jsp)
	 * @param request:  Chứa các thông tin Trình Duyệt truy vấn thông qua mẫu:
	 *                  ?abc=xyz
	 * @param response: Dữ liệu trả về Trình Duyệt.
	 */
	@RequestMapping(value = { "/register" }, method = RequestMethod.POST)
	public ResponseEntity<AjaxResponse> saveWithAjax(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,
													@RequestBody Contact data) {
		System.out.println("First Name is: " + register.getname());
		System.out.println("First Name is: " + register.getemail());
		System.out.println("First Name is: " + register.getphonenumber());
		System.out.println("First Name is: " + register.getpassword());
		System.out.println("First Name is: " + register.getcomment());
		return ResponseEntity.ok(new AjaxResponse(200, "Chúng tôi đã nhận được yêu cầu, cảm ơn bạn :))"));
	}
}
	
	