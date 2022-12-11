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
                        <a href="#"><i class="fas fa-envelope"></i> ngocquanK14@gmail.com</a>
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
                                <a href="${pageContext.request.contextPath}/product">SẢN PHẨM<i class="fas fa-angle-down"></i></a>
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
    <!-- cart -->
    <div class="cart">
        <div class="container">
            <div class="general-title">
                <span><a href="./index.html">Trang chủ&ensp; /</a></span>
                <span> Giỏ hàng</span>
            </div>
            <h6>GIỎ HÀNG</h6>
            <div class="line"></div>
            <div class="container">
                <div class="row cart-title">
                    <div class="col-2">Ảnh sản phẩm</div>
                    <div class="col-3">Tên sản phẩm</div>
                    <div class="col-2">Đơn giá</div>
                    <div class="col-2">Số lượng</div>
                    <div class="col-2">Thành tiền</div>
                    <div class="col-1">Xóa</div>
                </div>
                <c:forEach var = "product" items = "${GIO_HANG.sanPhamTrongGioHangs}">
                <div class="row cart-info">
                    <div class="col-2 img">
                        <img src="images/HN42.jpg" alt="" class="img-fluid">
                    </div>
                    <div class="col-3 name">${product.tenSanPham}</div>
                    <div class="col-2 price">${product.giaban}</div>
                    <div class="col-2 number">
                        <input type="number" min="1" max="15" value="1">
                    </div>
                    <div class="col-2 prices">
                        ${product.giaban}
                    </div>
                    <div class="col-1 delete">
                        <button><i class="far fa-trash-alt"></i></button>
                    </div>
                </div></c:forEach>
              
            </div>
            <div class="pay">
                <table>
                    <tr>
                        <td>Tổng tiền: </td>
                        <td id="total">2.100.000</td>
                    </tr>
                </table>
                <div class="ordering">
                    <a href="${pageContext.request.contextPath}/checkout-address">Tiến hành đặt hàng</a>
                    
                </div>
                <div class="continue-shopping">
                    <a href="${pageContext.request.contextPath}/product"><i class="fas fa-arrow-left"></i>  Tiếp tục mua hàng</a>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <script>
        
    </script>
    <!-- /cart -->
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
    <!-- /footer -->
    <div class="back-to-top">
        <a href="#" title="Lên đầu trang"><i class="fas fa-chevron-circle-up"></i></a>
    </div>
</body>
</html>