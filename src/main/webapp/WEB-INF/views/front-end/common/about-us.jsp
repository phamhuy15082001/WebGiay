<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NEW SHOP</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/all.css">
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- <script src="https://kit.fontawesome.com/dd6c8fb568.js" crossorigin="anonymous"></script> -->
</head>

<body>
     <!-- header -->
     <div class="container-fluid header">
        <!-- header-top -->
        <div class="row header-top">
            <div class="container">
                <div class="row">
                    <div class="col-xl-5 header-top-left">
                                 <a href="#"><i class="fas fa-envelope"></i> nhom2k14@gmail.com</a>
                        <a href="#"><i class="fas fa-phone-alt"></i> 0866419233</a>
                    </div>
                    <div class="col-xl-7 header-top-right">
                              <a href="${pageContext.request.contextPath}/search"><i class="fas fa-search"></i> Tìm kiếm sản phẩm</a>
                        <a href="${pageContext.request.contextPath}/register"><i class="fas fa-user-plus"></i> Đăng ký</a>
                        <a href="${pageContext.request.contextPath}/login"><i class="fas fa-user"></i> Đăng nhập</a>
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
                        <a href="${pageContext.request.contextPath}/index"><img src="images01/HN/AIRPORT.jpg" alt="" class="img-fluid"></a>
                    </div>
                    <div class="col-xl-8 nav">
                        <ul>
                            <li class="active"><a href="${pageContext.request.contextPath}/index">TRANG CHỦ</a></li>
                            <li class="has-submenu">
                                <a href="${pageContext.request.contextPath}/product">SẢN PHẨM</i></a>
                              <ul class="submenu">
                                    <li><a href="#">Sản phẩm mới</a></li>
                                    <li><a href="#">Sản phẩm nổi bật</a></li>
                                    <li><a href="#">Sản phẩm khuyến mại</a></li>
                                    <li><a href="#">NIKE</a></li>
                                    <li><a href="#">ADIDAS</a></li>
                                    <li><a href="#">CONVERSE</a></li>
                       
                                </ul>
                            </li>
                                     <li><a href="${pageContext.request.contextPath}/about-us">GIỚI THIỆU</a></li>
                            <li><a href="${pageContext.request.contextPath}/news">TIN TỨC</a></li>
                            <li><a href="${pageContext.request.contextPath}/contact">LIÊN HỆ</a></li>
                            <li><a href="${pageContext.request.contextPath}/adminss">ADMIN</a></li>
                            <li><a href="${pageContext.request.contextPath}/hien-thi-san-pham-trong-gio-hang"><i class="fas fa-cart-plus"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- /header-bottom -->
    </div>
    <!-- /header -->
    <!-- about-us -->
    <div class="about-us">
        <div class="container">
            <div class="general-title">
                <span><a href="${pageContext.request.contextPath}/index">Trang chủ&ensp; /</a></span>
                <span>Giới thiệu</span>
            </div>
            <div>
                <h5>GIỚI THIỆU</h5>
                <P><strong>I. SỨ MỆNH VÀ VAI TRÒ</strong></P>
                <p>Một trong những shop giày mới và phù hợp nhất với giới trẻ hiện nay</p>
                <p>
                    Vai trò của chúng tôi là đưa nhưng sản phẩm tốt nhất đến với khách hàng trẻ năng động, sáng tạo.
              </p>
                <p><Strong>II. ƯU ĐIỂM VÀ ĐỊNH HƯỚNG TƯƠNG LAI CỦA CÔNG TY</Strong></p>
                <p>Với mong muốn tạo ra một trang thương mại điện tử mua sắp giày trực tuyến phổ biến cho giới trẻ sử dụng. Cập nhật xu hướng mới về các hãng giày nổi tiếng như ADIDAS,NIKE,CONVERSE.</p>
                <p>Hơn thế nữa, chúng tôi còn hợp tác với nhiều nhãn hàng nổi bật trong việc bán giày tại Việt Nam</strong></p>
                <p>Hội đồng Quản trị do Đại hội đồng cổ đông tín nhiệm bầu ra. Hội đồng quản trị là cơ quan quản trị
                    toàn bộ mọi hoạt động của công ty, các chiến lược, kế hoạch sản xuất và kinh doanh trong nhiệm kỳ
                    của mình</p>
                <p>Đây không chỉ là công sức của một cá nhân mà là sự nỗ lực hoạt động của cả tập thể công ty, nhân viên và Ban lãnh đạo. Sự ủng hộ, đóng góp đánh giá của khách hàng là động lực giúp chúng tôi ngày một phát triển và hoàn thiện. </p>
                <p>Mới đây, công ty được tặng bằng khen ý tưởng khởi nghiệp của Nhà nước và được vinh danh là 1 trong top 10 doanh nghiệp có doanh thu cao nhất về lĩnh vực giày dép.</p>
            </div>
        </div>
    </div>
    <!-- /about-us -->
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
                            <p>035 304 8951</p>
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
							<img src="images/email.png"> Email:ngocquank14@gmail.com
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
    <!-- /footer -->
    <div class="back-to-top">
        <a href="#" title="Lên đầu trang"><i class="fas fa-chevron-circle-up"></i></a>
    </div>
</body>

</html>