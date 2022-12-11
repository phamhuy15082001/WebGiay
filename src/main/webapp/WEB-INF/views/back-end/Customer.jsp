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
    <title>AIRPORT</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/all.css">
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>

<body>
     <!-- header -->
     <div class="container-fluid header">
        <!-- header-top -->
        <div class="row header-top">
            <div class="container">
                <div class="row">
                    <div class="col-xl-5 header-top-left">
                        <a href="#"><i class="fas fa-envelope"></i> NgocQuanK14@gmail.com</a>
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
                        <a href="${pageContext.request.contextPath}/index"><img src="images/AIRPORT.jpg" alt="" class="img-fluid"></a>
                    </div>
                    <div class="col-xl-8 nav">
                        <ul>
                          <li class="active"><a href="${pageContext.request.contextPath}/index">TRANG CHỦ</a></li>
                            <li class="has-submenu">
                                <a href="${pageContext.request.contextPath}/product">SẢN PHẨM <i class="fas fa-angle-down"></i></a>
                                <ul class="submenu">
                                    <li><a href="#">Sản phẩm mới</a></li>
                                    <li><a href="#">Sản phẩm yêu thích</a></li>
                                    <li><a href="#">Sản phẩm mang thương hiệu</a></li>
                                    <li><a href="#">ROYAL</a></li>
                                    <li><a href="#">BAHANA</a></li>
                                    <li><a href="#">NOBITAL</a></li>
                                    <li><a href="#">NEWSTYLE</a></li>
                                    <li><a href="#">FASHIOM</a></li>
                                    <li><a href="#">DECOX</a></li>
                                    <li><a href="#">SHOJI</a></li>
                                </ul>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/about-us">GIỚI THIỆU</a></li>
                            <li><a href="${pageContext.request.contextPath}/news">TIN TỨC</a></li>
                            <li><a href="${pageContext.request.contextPath}/contact">LIÊN HỆ</a></li>
                            <li><a href="${pageContext.request.contextPath}/hien-thi-san-pham-trong-gio-hang"><i class="fas fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- /header-bottom -->
    </div>
    <!-- /header -->
    <!-- customer-page -->
    <div class="customer-page">
        <div class="container">
            <div class="general-title">
                <span><a href="./index.html">Trang chủ&ensp; /</a></span>
                <span>Trang khách hàng</span>
            </div>
            <div class="row bottom">
                <div class="col-8 contact-left">
                    <h5><span>TRANG KHÁCH HÀNG</span></h5>
                    <div class="line"></div>
                    <p>Xin chào, <span style="color: #00A2D1;">Ngoc Quan</span> !</p>
                    
                </div>
               
            </div>
        </div>
    </div>
                     <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                Danh sách người dùng
                            </div>
      
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>STT</th>
                                                <th>MaID</th>
                                                <th>Date</th>
                                                <th>Địa chỉ</th>
                                                <th>Price</th>
                                                <th>Phonenumber</th>
                                                <th>Trạng thái thanh toán</th>
                                                <th>Trangthaidonhang</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${products }" var="product">
                                                <tr>
                                                    <td>1</td>
                                                    <td>#10132</td>
                                                    <td>2021-01-04 14:30</td>
                                                    <td>Hoàng Quốc Việt-Bắc Từ Liêm,Hà Nội</td>
                                                    <td>2.100.000</td>
                                                    <td>0866419233</td>
                                                     <td>Chưa thanh toán</td>

                                                   
                                                   
                                                            <c:choose>
                                                                <c:when test="${Action}">
                                                                    <span class="badge badge-danger">Xóa</span>
                                                                </c:when>
                                                               
                                                            </c:choose>
                                                        </span>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex flex-row bd-highlight">  
                                                            <div class="d-flex flex-row bd-highlight">
                                                                <a href="${pageContext.request.contextPath}/admin/product/${Trangthaidonhang}"class="btn btn-danger btn-sm">Đang xử lý</a>
                                                                &nbsp;
                                                            </td>
                                                            </div>
                                                            <td>
                                                            <div class="d-flex flex-row bd-highlight">
                                                                <a href="#" onclick="Shop.xoa_san_pham_tu_admin(${Action})" class="btn btn-danger btn-sm">Xoá</a>   
                                                            </div>
                                                            </td>
                                                        </div>
                                                   
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
               
            </div>
        </div>
    </div>
    <!-- /customer-page -->
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
                          <p><i class="fas fa-map-marker-alt"></i>&emsp;Tầng 6 - Tòa nhà LUXURY HOTEL - 132 Hoàng Quốc Việt,
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
                        <p><i class="fas fa-map-marker-alt"></i>&emsp;Tầng 6 - Tòa nhà LUXURY HOTEL - 132 Hoàng Quốc Việt,
                            Hà Nội, Vietnam</p>
                        <p><i class="fas fa-phone-alt"></i>&emsp;0866419233</p>
                        <p><i class="fas fa-envelope"></i>&emsp;ngocquanK14@gmail.com</p>
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
                        <a href="#"><img src="images/AIRPORT.jpg" alt="" class="img-fluid"></a>
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
                        <p><i class="fas fa-map-marker-alt"></i>&emsp;Tầng 6 - Tòa nhà Ladeco - 266 Đội Cấn,
                            Hà Nội, Vietnam</p>
                        <p><i class="fas fa-phone-alt"></i>&emsp;035 304 8951</p>
                        <p><i class="fas fa-envelope"></i>&emsp;NgocQuanK14@gmail.com</p>
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