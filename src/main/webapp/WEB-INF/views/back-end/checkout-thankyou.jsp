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
    <title>AIRPORT Hotel</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/all.css">
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>

<body>
    <div class="container-fluid thank">
        <div class="row">
            <div class="col-6 ">
                <div class="row">
                    <div class="top">
                        <h3><a href="#">NEW SHOP</a></h3>
                        <div class="top-thank">
                            <span><i class="far fa-check-circle"></i></span>
                            <div>
                                <h5>Cảm ơn bạn đã đặt hàng</h5>
                                <p>Một email xác nhận đã được gửi tới ngocquanK14@gmail.com. Xin vui lòng kiểm tra
                                    email của bạn</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="bottom">
                        <div class="infos">
                            <p>Thông tin thanh toán</p>
                            <ul>
                                <li>NgocQuan</li>
                                <li>hà noi - viet nam</li>
                                <li>ngocquanK14@gmail.com</li>
                                <li>0866419233</li>

                            </ul>
                        </div>
                        <div class="pays">
                            <div>
                                <p>Hình thức thanh toán</p>
                                <p>Thanh toán khi nhận hàng</p>
                            </div>
                            <div class="">
                                <p>Đặt hàng qua app ứng dụng hoặc website
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="continue-pay">
                        <a href="${pageContext.request.contextPath}/Customer">Tiếp tục đặt hàng</a>
                    </div>
                </div>
            </div>

            <div class="col-6">
                <img src="images/A22.jpg" alt>
            </div>
        </div>
    </div>

</body>

</html>