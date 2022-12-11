<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NEW SHOP</title>
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
                    <a href="#"><i class="fas fa-envelope"></i> nhom2K14@gmail.com</a>
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
                    <a href="${pageContext.request.contextPath}/index"><img src="images/AIRORT.jpg" alt="" class="img-fluid"></a>
                </div>
                <div class="col-xl-8 nav">
                    <ul>
                        <li class="active"><a href="${pageContext.request.contextPath}/index">TRANG CHỦ</a></li>
                        <li class="has-submenu">
                            <a href="${pageContext.request.contextPath}/product">SẢN PHẨM</a>
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
<!-- login -->
<div class="login">
    <div class="container">
        <div class="general-title">
            <span><a href="${pageContext.request.contextPath}/index">Trang chủ&ensp; /</a></span>
            <span>Đăng nhập tài khoản</span>
        </div>
        <div class="row">
            <div class="login-form">
                <form action="${pageContext.request.contextPath}/Customer-page" method="post">
                    <h2 class="form-heading">Đăng nhập</h2>

                    <c:if test="${not empty param.co_loi_xay_ra}">
                        <div class="alert alert-danger" role="alert">
                            Login attempt was not successful, try again.
                        </div>
                    </c:if>

                    <!-- phải đặt đúng là username để spring-secure lấy được giá trị -->
                    <div class="form-group">
                        <label>User</label>
                        <input type="User" name="username" class="form-control">
                    </div>

                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" name="password" class="form-control">
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox"> Agree the terms and policy
                        </label>
                    </div>
                    <a class="forgot" href="${pageContext.request.contextPath}/forgotpassword">Quên mật khẩu?</a><br>
                    <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">Login</button>
                </form>
                <span><a href="${pageContext.request.contextPath}/register"> <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">Đăng ký</button></a></span>


            </div>
        </div>
    </div>
</div>
<!-- /login -->
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
                        <p>nhom2k14@gmail.com</p>
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
                    <a href="#"><img src="images/AIRORT.jpg" alt="" class="img-fluid"></a>
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
                    <p><img src="images/location.png"> ADDRESS:Tầng 6 - Tòa nhà LUXURY HOTEL - 132 Hoàng Quốc Việt,
                        Hà Nội, VietNam</p>
                    <p><i class="fas fa-phone-alt"></i>&emsp;0866419233</p>
                    <p><i class="fas fa-envelope"></i>&emsp;NgocQuank14@gmail.com</p>
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