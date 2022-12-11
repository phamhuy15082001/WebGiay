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
                    <title>NEW STORE</title>
                    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
                    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
                    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">
                    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
                    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
                    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/all.css">
                    <script src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js"></script>
                    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
                    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
                    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
                    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
                    <script src="../jquery.twbsPagination.js" type="text/javascript"></script>
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
							nhom2k14@gmail.com</a> <a href="#"><i class="fas fa-phone-alt"></i>
							0866419233</a>
                                    </div>
                                    <div class="col-xl-7 header-top-right">
                                        <a href="${pageContext.request.contextPath}/search"><i
							class="fas fa-search"></i> Tìm kiếm sản phẩm</a> <a href="${pageContext.request.contextPath}/register"><i
							class="fas fa-user-plus"></i> Đăng ký</a> <a href="${pageContext.request.contextPath}/login"><i
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
                                        <a href="index.html"><img src="images/" alt="" class="img-fluid"></a>
                                    </div>
                                    <div class="col-xl-8 nav">
                                        <ul>
                                            <li class="active"><a href="${pageContext.request.contextPath}/index">TRANG CHỦ</a></li>
                                            <li class="has-submenu">
                                                <a href="${pageContext.request.contextPath}/product">SẢN PHẨM<i class="fas fa-angle-down"></i></a>
                                                <ul class="submenu">
                                                    <li><a href="#">Sản phẩm mới</a></li>
                                                    <li><a href="#">Sản phẩm nổi bật</a></li>
                                                    <li><a href="#">Sản phẩm khuyến mại</a></li>
                                                    <li><a href="#">NIKE</a></li>
                                                    <li><a href="#">ADIDAS</a></li>
                                                    <li><a href="#">CONVERSE</a></li>
                                              
                                                </ul>
                                            </li>
                                            <li><a href="${pageContext.request.contextPath}/about-us">GIỚI
									THIỆU</a></li>
                                            <li><a href="${pageContext.request.contextPath}/news">TIN
									TỨC</a></li>
                                            <li><a href="${pageContext.request.contextPath}/contact">LIÊN
									HỆ</a></li>
                                            <li><a href="${pageContext.request.contextPath}/adminss">ADMIN</a></li>
                                            <li><a href="${pageContext.request.contextPath}/hien-thi-san-pham-trong-gio-hang"><i
									class="fas fa-cart-plus"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /header-bottom -->
                    </div>
                    <!-- /header -->
                    <!-- product-detail -->
                    <div class="product-detail container">
                        <div class="general-title">
                            <span><a href="./index.html">Trang chủ&ensp; /</a></span>
                            <span><a href="#"> NEW SHOES&ensp; /</a></span>
                            <span>NEW NIKE SHOES</span>
                        </div>
                        <div class="images-car row">
                            <div class="col-4 right">
                                <h1 class="name">NIKE</h1>
                                <div class="price">1.800.000đ</div>
                                <ul class="list-info">
                                    <li>
                                        <label>Sản Phẩm:</label>Mẫu giày chất lượng, trẻ trung, năng động
                                    </li>
                                    <li>
                                        <label>Được nhiều bạn trẻ ưa thích:</label>
                                    </li>

                            </div>
                            <div class="col-8 left">
                                <img src="images/nike/nike/Air Jordan 6 Retro/data1.PNG" alt="" class="img-fluid" id="show-img">
                            </div>
                        </div>
                        <div class="row">
                            <div class="buy">
                                <a href="${pageContext.request.contextPath}/hien-thi-san-pham-trong-gio-hang"><i class="fas fa-shopping-cart"></i>&nbsp;&nbsp;Đặt ngay</a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <h6>Mô tả sản phẩm</h6>
                                <div class="line"></div>
                                <div class="container car-detail-info">
                                    <p>Nike là hãng nổi tiếng với những mẫu giày xịn, trẻ trung, hiện đại và được nhiều bạn trẻ săn đón</p>

                                </div>
                            </div>
                        </div>
                    </div>
                    <script type="text/javascript">
                        function ChangeImage(srcImg) {
                            // tac dong vao thuoc tinh src cua the html co id = show-img
                            document.getElementById("show-img").setAttribute("src", srcImg);
                        }
                    </script>

                    <!-- /product-detail -->
                    <!-- product-related -->
                    <div class="product-related container">
                        <div class="title">
                            <span>SẢN PHẨM LIÊN QUAN</span>
                        </div>
                        <div class="row">
                            <div class="col-3 product-box">
                                <div class="product-img">
                                    <a href="#"><img src="images/adidas/ADIDAS 4DFWD X PARLEY SHOES/data01.jpg" alt="" class="img-fluid"></a>
                                    <div class="product-price">
                                        <p>1.800.000đ</p>
                                    </div>
                                </div>
                                <div class="product-title">
                                    <p><a href="#">ADIDAS 4DFWD</a></p>
                                </div>
                                <div class="product-action">
                                    <a href="#" class="btn-buy"><i class="fas fa-shopping-cart"></i> Đặt ngay</a>
                                    <a href="#" class="btn-detail"><i class="far fa-eye"></i> Chi tiết</a>
                                </div>
                            </div>
                            <div class="col-3 product-box">
                                <div class="product-img">
                                    <a href="#"><img src="images/adidas/40 DAME 8 SHOES/data01.jpg" alt="" class="img-fluid"></a>
                                    <div class="product-price">
                                        <p>2.000.000</p>
                                    </div>
                                </div>
                                <div class="product-title">
                                    <p><a href="#">Adidas 40 DAME 8 SHOES</a></p>
                                </div>
                                <div class="product-action">
                                    <a href="#" class="btn-buy"><i class="fas fa-shopping-cart"></i> Đặt ngay</a>
                                    <a href="#" class="btn-detail"><i class="far fa-eye"></i> Chi tiết</a>
                                </div>
                            </div>
                            <div class="col-3 product-box">
                                <div class="product-img">
                                    <a href="#"><img src="images/converse/converse/Chuck 70 Desert Tone/data1.jpg" alt="" class="img-fluid"></a>
                                    <div class="product-price">
                                        <p>2.500.000đ</p>
                                    </div>
                                </div>
                                <div class="product-title">
                                    <p><a href="#">Converse Chuck 70 Desert Tone</a></p>
                                </div>
                                <div class="product-action">
                                    <a href="#" class="btn-buy"><i class="fas fa-shopping-cart"></i> Đặt ngay</a>
                                    <a href="#" class="btn-detail"><i class="far fa-eye"></i> Chi tiết</a>
                                </div>
                            </div>
                            <div class="col-3 product-box">
                                <div class="product-img">
                                    <a href="#"><img src="images/nike/nike/Air Jordan 5 Retro 'Green Bean'/data1.PNG" alt="" class="img-fluid"></a>
                                    <div class="product-price">
                                        <p>2.500.000đ</p>
                                    </div>
                                </div>
                                <div class="product-title">
                                    <p><a href="#">Nike Air Jordan 5 Retro</a></p>
                                </div>
                                <div class="product-action">
                                    <a href="#" class="btn-buy"><i class="fas fa-shopping-cart"></i> Đặt ngay</a>
                                    <a href="#" class="btn-detail"><i class="far fa-eye"></i> Chi tiết</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /product-related -->

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
                                            <p><i class="fas fa-map-marker-alt"></i>&emsp;Tầng 6 - Tòa nhà LUXURY HOTEL - 132 Hoàng Quốc Việt, Hà Nội, Vietnam</p>
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
                                            <p>nhom2K14@gmail.com</p>
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
                                        <a href="#"><img src="images/AIRPORT.png" alt="" class="img-fluid"></a>
                                        <h6>Kênh thông tin của chúng tôi</h6>
                                        <ul>
                                            <img src="images/skype.png">
                                            <img src="images/facebook.png">
                                            <img src="images/twitter.png">
                                            <img src="images/instagram.png">
                                            <img src="images/youtube.png">
                                            <img src="images/google.png">
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
                                    <div class="col-4 right">
                                        <h5>THÔNG TIN LIÊN HỆ</h5>
                                        <p><i class="fas fa-map-marker-alt"></i>&emsp;Tầng 6 - Tòa nhà LUXURY HOTEL - 132 Hoàng Quốc Việt, Hà Nội, Vietnam</p>
                                        <p><i class="fas fa-phone-alt"></i>&emsp;0866419233</p>
                                        <p><i class="fas fa-envelope"></i>&emsp;nhom2K14@gmail.com</p>
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