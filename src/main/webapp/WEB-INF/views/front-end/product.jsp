<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AIRPORT HOTEL</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/all.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/shop.js"></script>
    <!-- <script src="https://kit.fontawesome.com/dd6c8fb568.js" crossorigin="anonymous"></script> -->
</head>
</head>

<body>
	<!-- header -->
	<div class="container-fluid header">
		<!-- header-top -->
		<div class="row header-top">
			<div class="container">
				<div class="row">
					<div class="col-xl-5 header-top-left">
						<a href="#"><i class="fas fa-envelope"></i>
							Nhom2k14@gmail.com</a> <a href="#"><i class="fas fa-phone-alt"></i>
							0866419233</a>
					</div>
					<div class="col-xl-7 header-top-right">
						<a href="${pageContext.request.contextPath}/search"><i
							class="fas fa-search"></i> Tìm kiếm sản phẩm</a> <a
							href="${pageContext.request.contextPath}/register"><i
							class="fas fa-user-plus"></i> Đăng ký</a> <a
							href="${pageContext.request.contextPath}/login"><i
							class="fas fa-user"></i> Đăng nhập</a>
					</div>
				</div>
			</div>
		</div>
		<!-- /header-top -->
		<!-- header-bottom -->
		<div class="row header-bottom">
			<div class="container">
				<div class="row">
					<div class="col-xl-4 logo">
						<a href="${pageContext.request.contextPath}/index"><img
							src="images/AIRPORT.jpg" alt="" class="img-fluid"></a>
					</div>
					<div class="col-xl-8 nav">
						<ul>
							<li class="active"><a
								href="${pageContext.request.contextPath}/index">TRANG CHỦ</a></li>
							<li class="has-submenu"><a
								href="${pageContext.request.contextPath}/product">SẢN PHẨM<i
									class="fas fa-angle-down"></i></a>
								<ul class="submenu">
									 <li><a href="#">Sản phẩm mới</a></li>
                                    <li><a href="#">Sản phẩm nổi bật</a></li>
                                    <li><a href="#">Sản phẩm khuyến mại</a></li>
                                    <li><a href="#">NIKE</a></li>
                                    <li><a href="#">ADIDAS</a></li>
                                    <li><a href="#">CONVERSE</a></li>
								</ul></li>
							<li><a href="${pageContext.request.contextPath}/about-us">GIỚI
									THIỆU</a></li>
							<li><a href="${pageContext.request.contextPath}/news">TIN
									TỨC</a></li>
							<li><a href="${pageContext.request.contextPath}/contact">LIÊN
									HỆ</a></li>
							<li><a href="${pageContext.request.contextPath}/adminss">ADMIN</a></li>
							<li><a href="${pageContext.request.contextPath}/hien-thi-san-pham-trong-gio-hang"><i
									class="fas fa-cart-plus"></i></a><span>${SL_SP_GIO_HANG }</span></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- /header-bottom -->
	</div>
	<!-- /header -->
	<!-- products -->
	<div class="products">
		<div class="container">
			<div class="general-title">
				<span><a href="${pageContext.request.contextPath}/index">Trang
						chủ&ensp; /</a></span> <span> Tất cả sản phẩm</span>
			</div>
			<div class="row">
				<div class="col-3">
					<div class="category">Danh Mục
						<ul>
							<c:forEach items="${categories}" var="cate">
							<li><a href="${pageContext.request.contextPath}/category/${cate.seo}">${cate.name}</a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="col-9">
					<div class="category-title">
						TẤT CẢ SẢN PHẨM
						<div class="line"></div>
					</div>
					<div class="category-products">
						<div class="container">
							<div class="row">
								<!-- product -->
								<c:forEach var="product" items="${products}">

									<div class="col-4 product">

										<div class="product-img">
											<c:forEach var="productImage"
												items="${product.productImages}">
												<img src="../file/images/${productImage.title}"
													width="100%" height="100%">
											</c:forEach>
											<div class="product-price">${product.price}</div>
										</div>


										<div class="product-title">
											<a href="#">${product.title}</a>
										</div>
										<div class="product-option">
											<div class="option-buy">
												<button type="button" onclick="Shop.chon_san_pham_dua_vao_gio_hang(${product.id}, 1);"><i
													class="fas fa-shopping-cart"></i> Đặt ngay </button>
											</div>
											<div class="option-detail">
												<a href="${pageContext.request.contextPath}/product-detail"><i
													class="fas fa-eye"></i> Xem thêm</a>
											</div>
											<div class="clear"></div>
										</div>
									</div>
								</c:forEach>
								<!-- /product -->
							</div>
						</div>
					</div>
				</div>
				<div class="container page-navigation">
					<div class="row">
						<div class="col-lg-12 col-md-12 mb-12">
					
							<nav aria-label="Page navigation example">
								<ul class="pagination  justify-content-center">
								<a href="${pageContext.request.contextPath}/product/${currentCategorySeo}?page=${currentPage - 1}"><button type="button" class="btn btn-outline-dark">&laquo;</button></a>
										  	<c:forEach begin="1" end="${totalPage}" varStatus="loop"> 
									  			<c:if test="${loop.index == currentPage }">
									  			<a href="${pageContext.request.contextPath}/product/${currentCategorySeo}?page=${loop.index}" class="active"><button type="button" class="btn btn-outline-dark">${loop.index }</button></a>
									  			</c:if>
									  			<c:if test="${currentPage != loop.index }">
									  			<a href="${pageContext.request.contextPath}/product/${currentCategorySeo}?page=${loop.index}"><button type="button" class="btn btn-outline-dark">${loop.index }</button></a>
									  			</c:if>
									  		</c:forEach>
										  	<a href="${pageContext.request.contextPath}/product/${currentCategorySeo}?page=${currentPage + 1}"><button type="button" class="btn btn-outline-dark">&raquo;</button></a>
								</ul>
							</nav>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	</div>
	</div>
	<!-- /products -->
	<!-- support -->
	<div class="support">
		<div class="container-fluid">
			<div class="container">
				<div class="row">
		       <div class="col-3 sub-support">
                        <div class="support-title">
                            <p>Showroom</p>
                        </div>
                        <div class="support-info">
                            <p>Tầng 6 - Tòa nhà LUXURY HOTEL - 132 Hoàng Quốc Việt,
                            Hà Nội, Vietnam</p>
                        </div>
                    </div>
                    <div class="col-3 sub-support">
                        <div class="support-title">
                            <p>Giờ mở cửa</p>
                        </div>
                        <div class="support-info">
                            <p>Thứ 2 - Thứ 6: 8:00 - 21:00<br>Thứ 7 - Chủ nhật: 8:30 - 22:30</p>
                        </div>
                    </div>
                    <div class="col-3 sub-support">
                        <div class="support-title">
                            <p>Hỗ trợ & Tư vấn</p>
                        </div>
                        <div class="support-info">
                            <p>0866419233</p>
                        </div>
                    </div>
                    <div class="col-3 sub-support">
                        <div class="support-title">
                            <p>Email</p>
                        </div>
                        <div class="support-info">
                            <p>ngocquanK14@gmail.com</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<!-- /support -->
	<!-- footer -->
	<div class="footer">
		<div class="container-fluid">
			<div class="container">
				<div class="row">
					<div class="col-4 left">
						<a href="#"><img src="images/AIRPORT.jpg" alt=""
							class="img-fluid"></a>
						<h6>Kênh thông tin của chúng tôi</h6>
						<ul>
							<li><a href="#"><i class="fab fa-facebook"></i></a></li>
							<li><a href="#"><i class="fab fa-twitter-square"></i></a></li>
							<li><a href="#"><i class="fab fa-instagram"></i></a></li>
							<li><a href="#"><i class="fab fa-youtube"></i></a></li>
						</ul>
						<h6>Chấp nhận thanh toán</h6>
						<img src="images/payment.png" alt="">
					</div>
					<div class="col-2 center">
						<h5>THÔNG TIN</h5>
						<ul>
							<li><a href="#">Trang chủ</a></li>
							<li><a href="#">Sản phẩm</a></li>
							<li><a href="#">Giới thiệu</a></li>
							<li><a href="#">Tin tức</a></li>
							<li><a href="#">Liên hệ</a></li>
						</ul>
					</div>
					<div class="col-2 center">
						<h5>CHÍNH SÁCH</h5>
						<ul>
							<li><a href="#">Trang chủ</a></li>
							<li><a href="#">Sản phẩm</a></li>
							<li><a href="#">Giới thiệu</a></li>
							<li><a href="#">Tin tức</a></li>
							<li><a href="#">Liên hệ</a></li>
						</ul>
					</div>
					<div class="col-4 right">
						<h5>THÔNG TIN LIÊN HỆ</h5>
						<p>
							<img src="images/location.png"> ADDRESS:Tầng 6 - Tòa nhà
							LUXURY HOTEL - 132 Hoàng Quốc Việt, Hà Nội, Vietnam
						</p>
						<p>
							<img src="images/phone.png"> Phone:0866419233
						</p>
						<p>
							<img src="images/email.png"> Email:nhom2k14@gmail.com
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /footer -->
	<div class="back-to-top">
		<a href="#" title="Lên đầu trang"><i
			class="fas fa-chevron-circle-up"></i></a>
	</div>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/shop.js"></script>
</body>

</html>