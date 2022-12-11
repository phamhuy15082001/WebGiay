<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NIKE SHOP</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/all.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
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
                        <a href="${pageContext.request.contextPath}/index"><img src="images/AIRPORT.jpg" alt="" class="img-fluid"></a>
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
                                    <!-- <li><a href="#">Audi</a></li>
                                    <li><a href="#">Honda</a></li>
                                    <li><a href="#">Kia</a></li>
                                    <li><a href="#">Mercedes Benz</a></li> -->
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
    <!-- news -->
    <div class="news">
        <div class="container">
            <div class="general-title">
                <span><a href="./index.html">Trang chủ&ensp; /</a></span>
                <span> Tin tức</span>
            </div>
            <div class="row">
                <div class="col-9 toleft">
                    <h5>TIN TỨC</h5>
                </div>
                <div class="col-3 right">
                    <h5>BÀI VIẾT LIÊN QUAN</h5>
                </div>
            </div>
            <div class="row">
                <div class="col-9 left">
                    <div class="left-top">
                        <div class="news-avatar">
                            <a href="news-details.html"><img src="images/converse/converse/Chuck 70 Canvas/data1.jpg" alt="" class="img-fluid"></a>
                            <div class="news-date">
                                <span>26/10/2019</span>
                            </div>
                        </div>
                        <div class="news-info">
                            <div class="info-title">
                                <h5><a href="news-details.html">Mẫu Nike mới nhất</a></h5>
                            </div>
                            <div class="info-short-description">
                                <p>Là mẫu giày trẻ trung, hiện đại được người dùng ưa thích tại Việt Nam
                            </div>
                            <div class="info-show">
                                <span><a href="news-details.html">Xem thêm</a></span>
                            </div>
                        </div>
                    </div>
                    <div class="container left-bottom">
                        <div class="row sub-left-bottom">
                            <div class="col-4">
                                <div class="news-avatar">
                                    <a href="#"><img src="images/converse/data1.jpg" alt="" class="img-fluid"></a>
                                    <div class="news-date">
                                        <span>01/01/2022</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-8">
                                <div class="news-info">
                                    <div class="info-title">
                                        <h6><a href="#">Converse outdoor</a>
                                        </h6>
                                    </div>
                                    <div class="info-short-description">
                                        <p>Converse outdoor là mẫu giày được bán chạy nhất năm 2021 và được nhiều bạn trẻ ưa thích.</p>
                                    </div>
                                    <div class="info-show">
                                        <span><a href="#">Xem thêm</a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row sub-left-bottom">
                            <div class="col-4">
                                <div class="news-avatar">
                                    <a href="#"><img src="images/adidas/ADIDAS 4DFWD PULSE SHOES/data01.jpg" alt="" class="img-fluid"></a>
                                    <div class="news-date">
                                        <span>23/10/2019</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-8">
                                <div class="news-info">
                                    <div class="info-title">
                                        <h6><a href="#">Adidas A70</a>
                                        </h6>
                                    </div>
                                    <div class="info-short-description">
                                        <p>- Adidas A70 là sản phẩm được thiết kế riêng cho người trẻ trung, năng động</p>
                                    </div>
                                    <div class="info-show">
                                        <span><a href="#">Xem thêm</a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row sub-left-bottom">
                            <div class="col-4">
                                <div class="news-avatar">
                                    <a href="#"><img src="images/converse/converse/Chuck 70 Outdoor Rave/data1.jpg" alt="" class="img-fluid"></a>
                                    <div class="news-date">
                                        <span>23/10/2019</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-8">
                                <div class="news-info">
                                    <div class="info-title">
                                        <h6><a href="#">Converse A70 Outdoor</a>
                                        </h6>
                                    </div>
                                    <div class="info-short-description">
                                        <p>✔️ Converse A70 Outdoor luôn được tìm kiếm nhiều nhất của hãng.
                                        </p>
                                    </div>

                                    <div class="info-show">
                                        <span><a href="#">Xem thêm</a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row sub-left-bottom">
                            <div class="col-4">
                                <div class="news-avatar">
                                    <a href="#"><img src="images/nike/nike/Air Jordan XXXVI Low/data1.PNG" alt="" class="img-fluid"></a>
                                    <div class="news-date">
                                        <span>15/10/2021</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-8">
                                <div class="news-info">
                                    <div class="info-title">
                                        <h6><a href="#">Nike Air Jordan XXXVI Low 
                                        </h6>
                                    </div>
                                    <div class="info-short-description">
                                        <p>Nike Air Jordan XXXVI Low là mẫu giày Nike mới nhất được ra mắt năm 2022</p>
                                    </div>
                                    <div class="info-show">
                                        <span><a href="#">Xem thêm</a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-3 right">
                    <div class="right-top">
                        <div class="sub-right-top">
                            <a href="#"><img src="images/converse/converse/Chuck 70 Desert Tone/data1.jpg" alt=""></a>
                            <div>
                                <p><strong><a href="#">Converse Chuck 70 Desert Tone</a></strong></p>
                                <p>02/03/2016</p>
                            </div>
                        </div>
                        <div class="sub-right-top">
                            <a href="#"><img src="images/nike/nike/Air Jordan XXXVI Low/data1.PNG" alt=""></a>
                            <div>
                                <p><strong><a href="#">Nike Air Jordan XXXVI </a></strong></p>
                                <p>10/10/2020</p>
                            </div>
                        </div>
                        <div class="sub-right-top">
                            <a href="#"><img src="images/adidas/ADIZERO ADIOS PRO 3 SHOES/data01.jpg" alt=""></a>
                            <div>
                                <p><strong><a href="#">ADIZERO ADIOS PRO 3 SHOES</a></strong></p>
                                <p>02/03/2016</p>
                            </div>
                        </div>
                        <div class="sub-right-top">
                            <a href="#"><img src="images/adidas/ADIZERO ADIOS PRO 3 SHOES/data01.jpg" alt=""></a>
                            <div>
                                <p><strong><a href="#">ADIZERO ADIOS PRO 3 SHOES</a></strong></p>
                                <p>02/03/2016</p>
                            </div>
                        </div>
                    </div>
                    <div class="category">
                        <ul>
                            <li>DANH MỤC</li>
                            <li><a href="#">Sản phẩm mới</a></li>
                            <li><a href="#">Sản phẩm nổi bật</a></li>
                            <li><a href="#">Sản phẩm khuyến mại</a></li>
                            <li><a href="#">NIKE</a></li>
                            <li><a href="#">ADIDAS</a></li>
                            <li><a href="#">CONVERSE</a></li>

                    </div>
                </div>
            </div>
            <!-- share -->
            <div class="share">
                <div class="row">
                    <div class="col-5">
                        <ul>
                            <li>Chia sẻ: </li>
                            <li><a href="#" title="Chia sẻ lên Facebook"><i class="fab fa-facebook-square"></i></a></li>
                            <li><a href="#" title="Chia sẻ lên Twitter"><i class="fab fa-twitter"></i></a></li>
                            <li><a href="#" title="Chia sẻ lên Printerest"><i class="fab fa-pinterest"></i></a></li>
                            <li><a href="#" title="Chia sẻ lên Google+"><i class="fab fa-google-plus-g"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /share -->
            <!-- comment -->
            <div class="comment">
                <div class="row">
                    <div class="col-9">
                        <h6>BÌNH LUẬN:</h6>
                        <div class="line"></div>
                    </div>
                    <div class="col-9">
                        <div class="comment-block">
                            <div class="img-user">
                                <img src="images/comment1.png" alt="">
                            </div>
                            <div class="comment-info">
                                <div class="user-name">
                                    <p>Minh Nhật</p>
                                </div>
                                <div class="user-comment">
                                    <p>Sản phẩm của shop rất chất lượng</p>
                                </div>
                                <div class="comment-date">
                                    <p>10/04/2020</p>
                                </div>
                            </div>
                        </div>
                        <div class="comment-block">
                            <div class="img-user">
                                <img src="images/comment2.png" alt="">
                            </div>
                            <div class="comment-info">
                                <div class="user-name">
                                    <p>Minh Hieu</p>
                                </div>
                                <div class="user-comment">
                                    <p>Sản Phẩm trẻ trung, năng động, sẽ ủng hộ shop lâu dài</p>
                                </div>
                                <div class="comment-date">
                                    <p>10/04/2021</p>
                                </div>
                            </div>
                        </div>
                        <div class="comment-block">
                            <div class="img-user">
                                <img src="images/comment1.png" alt="">
                            </div>
                            <div class="comment-info">
                                <div class="user-name">
                                    <p>Thanh Tung</p>
                                </div>
                                <div class="user-comment">
                                    <p>Sản phẩm luôn được cập nhật và chất lượng thì rất tốt</p>
                                </div>
                                <div class="comment-date">
                                    <p>10/04/2022</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-9">
                        <h6>VIẾT BÌNH LUẬN CỦA BẠN:</h6>
                        <div class="line"></div>
                    </div>
                    <div class="col-9">
                        <div class="writer-comment">
                            <form action="">
                                <label for="name">Tên: <span>*</span></label><br>
                                <input type="text" id="name"><br><br>
                                <label for="email">Email: <span>*</span></label><br>
                                <input type="email" id="email"><br><br>
                                <label for="content">Nội dung: <span>*</span></label><br>
                                <textarea name="" id="content" cols="30" rows="5"></textarea><br><br>
                                <button type="submit">Gửi bình luận</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /comment -->
        </div>
    </div>

    <div class="support">
        <div class="container-fluid">
            <div class="container">
                <div class="row">
                    <div class="col-3 sub-support">
                        <div class="support-title">
                            <p>Showroom</p>
                        </div>
                        <div class="support-info">
                            <p>Tầng 6 - Tòa nhà LUXURY HOTEL - 132 Hoàng Quốc Việt, Hà Nội, Vietnam</p>
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
                        <p>
                            <img src="images/location.png"> ADDRESS:Tầng 6 - Tòa nhà LUXURY HOTEL - 132 Hoàng Quốc Việt, Hà Nội, Vietnam
                        </p>
                        <p>
                            <img src="images/phone.png"> Phone:0866419233
                        </p>
                        <p>
                            <img src="images/email.png"> Email:ngocquank14@gmail.com
                        </p>
                    </div>

</body>

</html>