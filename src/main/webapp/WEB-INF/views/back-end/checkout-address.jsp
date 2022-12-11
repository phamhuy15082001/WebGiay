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
    <title>NEW SHOP</title>
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
    <!-- super -->
    <div class="container-fluid super">
        <div class="row">
            <!-- left -->
            <div class="col-4 left">
                <h3><a href="#">NEW SHOP</a></h3>
                <div class="info">
                    <h5>Thông tin mua hàng</h5>
                    <!-- <p><a href="#"><i class="fas fa-user-circle"></i> Đăng nhập</a></p> -->
                </div>
                <div style="clear: both;"></div>
                <ul>
                    <li>
                        <label for="">Email <span>*</span></label><br>
                        <input type="email" id="email" placeholder="Email..." required>
                    </li>
                    <li>
                        <label for="">Họ và tên <span>*</span></label><br>
                        <input type="text" id="name" placeholder="Họ tên..." required>
                    </li>
                    <li>
                        <label for="">Số điện thoại <span>*</span></label><br>
                        <input type="text" id="phone" placeholder="Số điện thoại..." required>
                    </li>
                    <li>
                        <label for="">Địa chỉ <span>*</span></label><br>
                        <input type="text" id="address" placeholder="Địa chỉ..." required>
                    </li>
                    <li>
                        <label for="">Ghi chú</label><br>
                        <textarea name="" id="" cols="30" rows="8" placeholder="Ghi chú (tùy chọn)"></textarea>
                    </li>
                </ul>
            </div>
            <!-- /left -->
            <!-- /center -->
            <div class="col-4 center">
                <div class="top">
                    <h5>Thanh toán bằng thẻ tín dụng</h5>
                    <div class="transport">
                        <p><i class="fas fa-dolly-flatbed" style="color: #337AB7;"></i>Sử dụng ví điện tử</p>
                        <p>5%</p>
                    </div>
                </div>
                <div class="bottom">
                    <h5>Thanh toán</h5>
                    <div class="pay">
                        <span><i class="fas fa-money-check" style="color: #337AB7;"></i> Thanh toán trực tuyến (COD)</span>
                        <span><i class="far fa-money-bill-alt" style="color: #337AB7;"></i></span>
                    </div>
                </div>
            </div>
            <!-- /center -->
            <!-- right -->
            <div class="col-4 right">
                <h5>Đơn hàng (1 sản phẩm)</h5>
                <div class="contain-item">
                    <div class="item">
                        <div class="thumber">
                            <img src="images/HN42.jpg" alt="">
                            <div class="price">5</div>
                        </div>
                        <span>NIKE</span>
                        <p>3.500000đ</p>
                    </div>
                    <div class="item">
                        <div class="thumber">
                            <img src="images/HN42.jpg" alt="">
                            <div class="price">5</div>
                        </div>
                        <span>ADIDAS</span>
                        <p>1.500.000đ</p>
                    </div>
                    <div class="item">
                        <div class="thumber">
                            <img src="images/HN42.jpg" alt="">
                            <div class="price">5</div>
                        </div>
                        <span>CONVERSE</span>
                        <p>2.500.000đ</p>
                    </div>
                    
                </div>
                <div class="total">
                    <div>
                        <p>Tạm tính</p>
                        <p>7.5000.000đ</p>
                    </div>
           
                    <div>
                        <p>Tổng cộng</p>
                        <p>7.500.000đ</p>
                    </div>
                </div>
                <div class="order">
                    <a href="${pageContext.request.contextPath}/hien-thi-san-pham-trong-gio-hang"><i class="fas fa-chevron-left" style="font-size: 12px;"></i> Quay về giỏ hàng</a>
                    <a href="${pageContext.request.contextPath}/checkout-thankyou"><i class="fas fa-shopping-cart"></i>&nbsp;&nbsp;Đặt hàng</a>
                </div>
            </div>
            <!-- /right -->
        </div>
    </div>
    <!-- /super -->
</body>

</html>