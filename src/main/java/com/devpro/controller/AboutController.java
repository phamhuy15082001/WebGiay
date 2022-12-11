package com.devpro.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.model.About;
import com.devpro.model.AjaxResponse;

@Controller
public class AboutController {

	/**
	 * 
	 * @param model:    trung gian trao đổi thông tin giữa Controller và View(Jsp)
	 * @param request:  Chứa các thông tin Trình Duyệt truy vấn thông qua mẫu:
	 *                  ?abc=xyz
	 * @param response: Dữ liệu trả về Trình Duyệt.
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = { "/about-us" }, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("about-us", new About());
		return "front-end/common/about-us";
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
	@RequestMapping(value = { "/about-us" }, method = RequestMethod.POST)
	public ResponseEntity<AjaxResponse> saveWithAjax(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response,
			@RequestBody About con) {
		String name = String.valueOf(con.getname());
		String email = con.getemail();
		System.out.println(name);
		System.out.println(email);
		return ResponseEntity.ok(new AjaxResponse(200, "Chúng tôi đã nhận được yêu cầu, cảm ơn bạn :))"));
	}

}
