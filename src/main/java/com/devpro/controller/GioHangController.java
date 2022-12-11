package com.devpro.controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.entities.GioHang;
import com.devpro.entities.Product;
import com.devpro.entities.SaleOrder;
import com.devpro.entities.SaleOrderProducts;
import com.devpro.entities.SanPhamTrongGioHang;
import com.devpro.model.AjaxResponse;
import com.devpro.repositories.ProductRepo;
import com.devpro.repositories.SaleOrderRepo;

@Controller
public class GioHangController extends BaseController {

	@Autowired ProductRepo productRepo;
	@Autowired SaleOrderRepo saleOrderRepo;
	
	@RequestMapping(value = { "/chon-san-pham-dua-vao-gio-hang" }, method = RequestMethod.POST)
	public ResponseEntity<AjaxResponse> muaHang(@RequestBody SanPhamTrongGioHang sanPhamTrongGioHang,
			final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		
		// lấy đối tượng SESSION trong memory dựa vào SESSION_ID có trong request.
		HttpSession httpSession = request.getSession();
		
		GioHang gioHang = null;

		// kiểm tra xem SESSION đã có gio hàng chưa ?
		// nếu chưa có thì tạo mới 1 giỏ hàng và lưu vào SESSION.
		if (httpSession.getAttribute("GIO_HANG") != null) {
			gioHang = (GioHang) httpSession.getAttribute("GIO_HANG");
		} else {
			gioHang = new GioHang();
			httpSession.setAttribute("GIO_HANG", gioHang);
		}
		
		List<SanPhamTrongGioHang> _sanPhamTrongGioHangs = gioHang.getSanPhamTrongGioHangs();
		
		boolean sanPhamDaCoTrongGioHangPhaiKhong = false;
		
		// trường hợp đã có sản phẩm trong giỏ hàng.
		for(SanPhamTrongGioHang item : _sanPhamTrongGioHangs) {
			if(item.getMaSanPham() == sanPhamTrongGioHang.getMaSanPham()) {
				sanPhamDaCoTrongGioHangPhaiKhong = true;
				item.setSoluong(item.getSoluong() + sanPhamTrongGioHang.getSoluong());
			}
		}
		
		// nếu sản phẩm chưa có trong giỏ hàng.
		if(!sanPhamDaCoTrongGioHangPhaiKhong) {
			
			Product product = productRepo.getOne(sanPhamTrongGioHang.getMaSanPham());
			sanPhamTrongGioHang.setTenSanPham(product.getTitle());
			sanPhamTrongGioHang.setGiaban(product.getPrice());
			
			gioHang.getSanPhamTrongGioHangs().add(sanPhamTrongGioHang);
		}
		
		httpSession.setAttribute("SL_SP_GIO_HANG", gioHang.getSanPhamTrongGioHangs().size());
		
		return ResponseEntity.ok(new AjaxResponse(200, String.valueOf(gioHang.getSanPhamTrongGioHangs().size())));
	}
	
	@RequestMapping(value = { "/hien-thi-san-pham-trong-gio-hang" }, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		return "back-end/cart";
	}
	
	@RequestMapping(value = { "/luu_don_hang" }, method = RequestMethod.POST)
	public String save(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		
		// lấy đối tượng SESSION trong memory dựa vào SESSION_ID có trong request.
		HttpSession httpSession = request.getSession();
		
		GioHang gioHang = (GioHang) httpSession.getAttribute("GIO_HANG");;
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
		SaleOrder saleOrder = new SaleOrder();
		saleOrder.setCode(String.valueOf(System.currentTimeMillis()));
		saleOrder.setCreatedDate(LocalDateTime.now());
		saleOrder.setCustomerName(name);
		saleOrder.setCustomerAddress(address);
		saleOrder.setCustomerPhone(phone);
		saleOrder.setCustomerEmail(email);
		saleOrder.setTotal(gioHang.getTotal(productRepo));
	
		for(SanPhamTrongGioHang sanPhamTrongGioHang : gioHang.getSanPhamTrongGioHangs()) {
			SaleOrderProducts saleOrderProducts = new SaleOrderProducts();
			saleOrderProducts.setProduct(productRepo.getOne(sanPhamTrongGioHang.getMaSanPham()));
			saleOrderProducts.setQuality(sanPhamTrongGioHang.getSoluong());
			saleOrderProducts.setCreatedDate(LocalDateTime.now());
			saleOrder.addSaleOrderProducts(saleOrderProducts);
		}
		
		saleOrderRepo.save(saleOrder);
		
		// lưu xong xoá giỏ hàng đi
		httpSession.removeAttribute("GIO_HANG");
		
		return "front-end/index";
	}
}
