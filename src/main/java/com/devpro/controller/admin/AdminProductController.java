package com.devpro.controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.controller.BaseController;
import com.devpro.entities.Email;
import com.devpro.entities.Product;
import com.devpro.model.AjaxResponse;
import com.devpro.repositories.EmailRepo;
import com.devpro.repositories.ProductRepo;
import com.devpro.services.ProductService;

@Controller // -> tạo ra 1 bean tên webConf và được spring-container quản lí.
			// -> báo module web mapping request cho controller này.
public class AdminProductController extends BaseController {

	@Autowired
	private ProductService productService;

	@Autowired
	private ProductRepo productRepo;
	@Autowired
    public JavaMailSender emailSender;
	@Autowired
    public EmailRepo emailRepo;
/////////////////// D E L E T E
	@RequestMapping(value = { "/admin/delete" }, method = RequestMethod.POST)
	public ResponseEntity<AjaxResponse> saveWithAjax(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @RequestBody Product product) {
		productRepo.delete(product);
		return ResponseEntity.ok(new AjaxResponse(200, "Thành công"));
	}

	/////////////////// L I S T
	@RequestMapping(value = { "/admin/product/list" }, method = RequestMethod.GET)
	public String list(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("messsage", "");
		String messsage = request.getParameter("add");
		if (messsage != null && messsage.equalsIgnoreCase("success")) {
			model.addAttribute("messsage", "<div class=\"alert alert-success\">"
					+ "  <strong>Success!</strong> Thêm mới thành công." + "</div>");
		}
		model.addAttribute("products", productRepo.findAll());
		return "back-end/listproduct";
	}

	/////////////////// A D D - E D I T
	@RequestMapping(value = { "/addproduct" }, method = RequestMethod.GET)
	public String saveProduct(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		model.addAttribute("product", new Product());
		return "back-end/addproduct";
	}

	@RequestMapping(value = { "/admin/product" }, method = RequestMethod.POST)
	public String saveProduct(@RequestParam("product_images") MultipartFile[] productImages,
			@ModelAttribute("product") Product product, final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		productService.save(productImages, product); 
		SimpleMailMessage message = new SimpleMailMessage();
       for(Email mail : emailRepo.findAll()) {
       message.setTo(mail.getEmail());
       message.setSubject("Test Simple Email");
       message.setText("Hello, Thank you because follow NEW SHOP Website");

       // Send Message!
      
       this.emailSender.send(message);}
		
		return "redirect:/admin/product/list?add=success";
		
	}

	@RequestMapping(value = { "/admin/product/{id}" }, method = RequestMethod.GET)
	public String saveProduct(@PathVariable("id") Integer id, final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		Product product = productRepo.getOne(id);
		model.addAttribute("product", product);
		return "back-end/addproduct";
	}
}
