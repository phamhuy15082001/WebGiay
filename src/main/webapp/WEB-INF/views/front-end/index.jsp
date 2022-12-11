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
                    <div class="col-xl-4 header-top-left">
                        <a href="#"><i class="fas fa-envelope"></i>Nhom2k14@gmail.com</a>
                        <a href="#"><i class="fas fa-phone-alt"></i> 0866419233</a>
                    </div>
                    <div class="col-xl-8 header-top-right">
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
						<a href="${pageContext.request.contextPath}/index"><img
							src="images/AIRPORT.jpg" alt="" class="img-fluid"></a>
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
    <!-- slideshow -->
    <div class="slideshow">
        <div id="carouselExampleIndicators" class="carousel slide w-100" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item">
                    <img class="d-block w-100 img-fluid" src="images/slide/anh1.jpg" alt="First slide">
                </div>
                <div class="carousel-item active">
                    <img class="d-block w-100 img-fluid" src="images/slide/anh2.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100 img-fluid" src="images/slide/anh3.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <!-- /slideshow -->
    <!-- banner -->
    <div class="container banner my-4">
        <div class="row">
            <div class="col-6">
                <a href="#"><img class="d-block w-60 img-fluid" src="images/converse/data1.jpg" alt=""></a>
            </div>
            <div class="col-6">
                <a href="#"><img class="d-block w-60 img-fluid" src="images/converse/converse/data1.jpg" alt=""></a>
            </div>
        </div>
    </div>
    <!-- /banner -->
    <!-- hot-product -->
    <div class="title">
        <span>SẢN PHẨM NỔI BẬT</span>
    </div>
    <div class="hot-product">
        <div class="container">
            <div class="row">
                <div class="col-3 product-box">
                    <div class="product-img">
                        <a href="#"><img src="images/nike/nike/KD15 EP 'Napheesa Collier'/data1.PNG" alt="" class="img-fluid"></a>
                        <div class="product-price">
                            <p>1.500.000đ</p>
                        </div>
                    </div>
                    <div class="product-title">
                        <p><a href="#">Converse 70 AT-CX</a></p>
                    </div>
                    <div class="product-action">
                        <a href="#" class="btn-buy"><i class="fas fa-shopping-cart"></i> Đặt ngay</a>
                        <a href="${pageContext.request.contextPath}/product-detail" class="btn-detail"><i class="far fa-eye"></i> Chi tiết</a>
                    </div>
                </div>
                <div class="col-3 product-box">
                    <div class="product-img">
                        <a href="#"><img src="images/nike/nike/Air Jordan 1 Mid SE/data1.PNG" alt="" class="img-fluid"></a>
                        <div class="product-price">
                            <p>1.200.000đ</p>
                        </div>
                    </div>
                    <div class="product-title">
                        <p><a href="#">Air Jordan 1 Mid SE</a></p>
                    </div>
                    <div class="product-action">
                        <a href="#" class="btn-buy"><i class="fas fa-shopping-cart"></i> Đặt ngay</a>
                        <a href="#" class="btn-detail"><i class="far fa-eye"></i> Chi tiết</a>
                    </div>
                </div>
                <div class="col-3 product-box">
                    <div class="product-img">
                        <a href="#"><img src="images/nike/nike/Air Jordan 1 Zoom Cmft/data1.jpeg" alt="" class="img-fluid"></a>
                        <div class="product-price">
                            <p>1.250.000đ/đêm</p>
                        </div>
                    </div>
                    <div class="product-title">
                        <p><a href="#">ADIDAS 4DFWD PULSE SHOES</a></p>
                    </div>
                    <div class="product-action">
                        <a href="#" class="btn-buy"><i class="fas fa-shopping-cart"></i> Đặt ngay</a>
                        <a href="#" class="btn-detail"><i class="far fa-eye"></i> Chi tiết</a>
                    </div>
                </div>
                <div class="col-3 product-box">
                    <div class="product-img">
                        <a href="#"><img src="images/nike/nike/KD15 EP 'Napheesa Collier'/data1.PNG" alt="" class="img-fluid"></a>
                        <div class="product-price">
                            <p>1.280.000đ</p>
                        </div>
                    </div>
                    <div class="product-title">
                        <p><a href="#">NIKE NaPheesa Colilier</a></p>
                    </div>
                    <div class="product-action">
                        <a href="#" class="btn-buy"><i class="fas fa-shopping-cart"></i> Đặt ngay</a>
                        <a href="#" class="btn-detail"><i class="far fa-eye"></i> Chi tiết</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="clear"></div>
    <!-- /hot-product -->
    <!-- new-product -->
    <div class="new-product">
        <div class="title">
            <span>SẢN PHẨM MỚI</span>
        </div>
        <div class="container content">
            <div class="row">
                <div class="col-5 info">
                    <p>Giày mới</p>
                    <ul>
                        <li>Hàng chính hãng</li>
                        <li>Thiết kế hiện đại, đẹp mắt</li>
                        <li>Trẻ trung, năng động, sáng tạo</li>
                        <li>Giá cả hợp lý</li>
                    </ul>
                    <p>Một sản phẩm của NEW FASHION số 1 về chất lượng, phong cách thời thượng, sang trọng,trẻ trung đậm chất Việt Nam. Sản phẩm homestay mang thương hiệu Việt Nam, phục vụ người việt,thoải mái, hiện đại. Sự hài lòng của quý khách là niềm
                        vinh hạnh, động lực để chúng tôi cho ra đời sản phẩm tốt hơn...
                    </p>
                    <p><a href="#">Xem thêm</a></p>
                    <div class="product-price">
                        <p>1.200.000đ</p>
                    </div>
                </div>
                <div class="col-7 img">
                    <a href="#"><img src="images/slide/anh2.jpg" alt="" class="img-fluid"></a>
                </div>
            </div>
        </div>
        <div class="hot-product">
            <div class="container">
                <div class="row">
                    <div class="col-3 product-box">
                        <div class="product-img">
                            <a href="#"><img src="images/converse/converse/Chuck 70 Hacked Heel Tear Away/data1.jpg" alt="" class="img-fluid"></a>
                            <div class="product-price">
                                <p>800.000đ</p>
                            </div>
                        </div>
                        <div class="product-title">
                            <p><a href="#">Converse 70 Hacked Heel Tear Away </a></p>
                        </div>
                        <div class="product-action">
                            <a href="#" class="btn-buy"><i class="fas fa-shopping-cart"></i> Đặt ngay</a>
                            <a href="#" class="btn-detail"><i class="far fa-eye"></i> Chi tiết</a>
                        </div>
                    </div>
                    <div class="col-3 product-box">
                        <div class="product-img">
                            <a href="#"><img src="images/converse/converse/Chuck 70 Colorblocked/data1.jpg" alt="" class="img-fluid"></a>
                            <div class="product-price">
                                <p>1.800.000</p>
                            </div>
                        </div>
                        <div class="product-title">
                            <p><a href="#">Conver Chuck 70 color</a></p>
                        </div>
                        <div class="product-action">
                            <a href="#" class="btn-buy"><i class="fas fa-shopping-cart"></i> Đặt ngay</a>
                            <a href="#" class="btn-detail"><i class="far fa-eye"></i> Chi tiết</a>
                        </div>
                    </div>
                    <div class="col-3 product-box">
                        <div class="product-img">
                            <a href="#"><img src="images/converse/converse/Chuck 70 Outdoor Rave/data1.jpg" alt="" class="img-fluid"></a>
                            <div class="product-price">
                                <p>1.050.000đ</p>
                            </div>
                        </div>
                        <div class="product-title">
                            <p><a href="#">Converse 70 Outdoor Rave</a></p>
                        </div>
                        <div class="product-action">
                            <a href="#" class="btn-buy"><i class="fas fa-shopping-cart"></i> Đặt ngay</a>
                            <a href="#" class="btn-detail"><i class="far fa-eye"></i> Chi tiết</a>
                        </div>
                    </div>
                    <div class="col-3 product-box">
                        <div class="product-img">
                            <a href="#"><img src="images/converse/converse/Chuck 70 Mixed Materials/data1.jpg" alt="" class="img-fluid"></a>
                            <div class="product-price">
                                <p>890.000đ</p>
                            </div>
                        </div>
                        <div class="product-title">
                            <p><a href="#">Converse 70 Mule</a></p>
                        </div>
                        <div class="product-action">
                            <a href="#" class="btn-buy"><i class="fas fa-shopping-cart"></i> Đặt ngay</a>
                            <a href="#" class="btn-detail"><i class="far fa-eye"></i> Chi tiết</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /new-product -->
    <!-- user-car -->
    <div class="container-fluid user-car">
        <div class="title">
            <span>SẢN PHẨM YÊU THÍCH</span>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-3 product-box">
                    <div class="product-img">
                        <a href="#"><img src="images/converse/converse/Chuck Taylor All Star Archive Paint Splatter/data1.jpg" alt="" class="img-fluid"></a>
                        <div class="product-price">
                            <p>800.000đ</p>
                        </div>
                    </div>
                    <div class="product-title">
                        <p><a href="#">Converse outdoor</a></p>
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
                            <p>1.250.000đ</p>
                        </div>
                    </div>
                    <div class="product-title">
                        <p><a href="#">Converse 22 BOA Spikeless</a></p>
                    </div>
                    <div class="product-action">
                        <a href="#" class="btn-buy"><i class="fas fa-shopping-cart"></i> Đặt ngay</a>
                        <a href="#" class="btn-detail"><i class="far fa-eye"></i> Chi tiết</a>
                    </div>
                </div>
                <div class="col-3 product-box">
                    <div class="product-img">
                        <a href="#"><img src="images/converse/converse/Chuck Taylor All Star Archive Paint Splatter/data1.jpg" alt="" class="img-fluid"></a>
                        <div class="product-price">
                            <p>1.050.000đ</p>
                        </div>
                    </div>
                    <div class="product-title">
                        <p><a href="#">Converse All Star</a></p>
                    </div>
                    <div class="product-action">
                        <a href="#" class="btn-buy"><i class="fas fa-shopping-cart"></i> Đặt ngay</a>
                        <a href="#" class="btn-detail"><i class="far fa-eye"></i> Chi tiết</a>
                    </div>
                </div>
                <div class="col-3 product-box">
                    <div class="product-img">
                        <a href="#"><img src="images/converse/converse/Chuck 70 Stitched/data1.jpg" alt="" class="img-fluid"></a>
                        <div class="product-price">
                            <p>1.890.000đ</p>
                        </div>
                    </div>
                    <div class="product-title">
                        <p><a href="#">Converse Chuck 70 Stitched</a></p>
                    </div>
                    <div class="product-action">
                        <a href="#" class="btn-buy"><i class="fas fa-shopping-cart"></i> Đặt ngay</a>
                        <a href="#" class="btn-detail"><i class="far fa-eye"></i> Chi tiết</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="hot-product">
        <div class="container">
            <div class="row">
                <div class="col-3 product-box">
                    <div class="product-img">
                        <a href="#"><img src="images/nike/nike/Air Jordan XXXVI Low/data1.PNG" alt="" class="img-fluid"></a>
                        <div class="product-price">
                            <p>800.000đ</p>
                        </div>
                    </div>
                    <div class="product-title">
                        <p><a href="#">Air Jordan XXXVI</a></p>
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
                            <p>1.250.000đ</p>
                        </div>
                    </div>
                    <div class="product-title">
                        <p><a href="#">Nike green bean</a></p>
                    </div>
                    <div class="product-action">
                        <a href="#" class="btn-buy"><i class="fas fa-shopping-cart"></i> Đặt ngay</a>
                        <a href="#" class="btn-detail"><i class="far fa-eye"></i> Chi tiết</a>
                    </div>
                </div>
                <div class="col-3 product-box">
                    <div class="product-img">
                        <a href="#"><img src="images/nike/nike/Air Jordan 6 Retro/data1.PNG" alt="" class="img-fluid"></a>
                        <div class="product-price">
                            <p>1.050.000đ</p>
                        </div>
                    </div>
                    <div class="product-title">
                        <p><a href="#">Air Jordan 6 Retro</a></p>
                    </div>
                    <div class="product-action">
                        <a href="#" class="btn-buy"><i class="fas fa-shopping-cart"></i> Đặt ngay</a>
                        <a href="#" class="btn-detail"><i class="far fa-eye"></i> Chi tiết</a>
                    </div>
                </div>
                <div class="col-3 product-box">
                    <div class="product-img">
                        <a href="#"><img src="images/nike/nike/Air Jordan XXXVI SE/data1.PNG" alt="" class="img-fluid"></a>
                        <div class="product-price">
                            <p>890.000đ</p>
                        </div>
                    </div>
                    <div class="product-title">
                        <p><a href="#">Air Jordan XXXVI SE</a></p>
                    </div>
                    <div class="product-action">
                        <a href="#" class="btn-buy"><i class="fas fa-shopping-cart"></i> Đặt ngay</a>
                        <a href="#" class="btn-detail"><i class="far fa-eye"></i> Chi tiết</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    </div>
    <!-- /user-car -->
    <!-- introduce -->
    <div class="container">
        <div class="title">
            <span>GIỚI THIỆU</span>
        </div>
        <div class="introduce">
            <div class="left">
                <p>NEW FASHION</p>
                <p>Với 5 năm kinh nghiệm làm việc với tất cả các công ty về thời trang và mong muốn tạo ra một công ty thời trang ứng dụng công nghệ mang đậm chất Việt Nam, phục vụ người Việt. Sự hài lòng của quý khách là niềm tự hào và động lực giúp NEW
                    FASHION phát triển và vươn ra khu vực quốc tế chiếm lĩnh thị trường.
                </p>
                <p><a href="about-us.html">Xem thêm</a></p>
            </div>
            <div class="right">
                <img src="images/logo/fashion1.jpg" alt="" class="img-fluid">
            </div>
        </div>
        <div class="clear"></div>
    </div>
    <!-- introduce -->
    <!-- service-provide -->
    <div class="container service-provide">
        <div class="title">
            <div class="container service-provide">
                <div class="title">
                    <span>DỊCH VỤ CUNG CẤP</span>
                </div>
                <div class="row">
                    <div class="col-3 sub-service">
                        <img src="images/logo/freeship.png" alt="" class="img-fluid">
                        <div class="info">
                            <p>FreeShip</p>
                        </div>
                    </div>
                    <div class="col-3 sub-service">
                        <img src="images/td01.png" alt="" class="img-fluid">
                        <div class="info">
                            <p>Đổi trả</p>
                            <p>Đổi trả theo mức tiền trong 1 ngày</p>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- </div> -->
    <!--  </div> -->
    <!-- /service-provide -->
    <!-- new-post -->
    <div class="container">
        <div class="title">
            <span>Sản Phẩm Mang Thương Hiệu </span>
        </div>
        <div class="row new-post">
            <div class="col-6 sub-new-post">
                <div class="avatar">
                    <a href="news-details"><img src="images/converse/converse/data1.jpg" alt="" class="img-fluid"></a>
                    <div class="date-created-new-post">
                        <span>28/9/2020</span>
                    </div>
                </div>
                <div class="info">
                    <h6 class="title-post"><a href="news-details">Converse outdoor chính thức ra mắt</a></h6>
                    <p class="short-description">Là giày mang phong cách trẻ trung, hiện đại trở thành mẫu giày được ưa thích của người dùng.</p>
                    <div class="view-more">
                        <p><a href="news-details">Xem thêm&emsp;<i class="fas fa-chevron-right"></i></a></p>
                    </div>
                </div>
            </div>
            <div class="col-6 sub-new-post">
                <div class="avatar">
                    <a href="#"><img src="images/converse/data1.jpg" alt="" class="img-fluid"></a>
                    <div class="date-created-new-post">
                        <span>15/10/2020</span>
                    </div>
                </div>
                <div class="info">
                    <h6 class="title-post"><a href="#">Converse A70</a></h6>
                    <p>Converse A70 là sản phẩm nổi bật, hiện đại được khách hàng nước ngoài tin dùng</p>
                    <div class="view-more">
                        <p><a href="#">Xem thêm&emsp;<i class="fas fa-chevron-right"></i></a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- new-post -->
    <!-- top-brand -->
    <div class="container">
        <div class="title">
            <span>THƯƠNG HIỆU NỔI BẬT</span>
        </div>
        <div class="row top-brand">
            <div class="col-2 sub-top-brand">
                <div>
                    <a href="#"><img src="images/logo/adidas.jpg" alt="" class="img-fluid"></a>
                </div>
                <div>
                    <span>ADIDAS</span>
                </div>
            </div>
            <div class="col-2 sub-top-brand">
                <div>
                    <a href="#"><img src="images/logo/nike.png" alt="" class="img-fluid"></a>
                </div>
                <div>
                    <span>Nike</span>
                </div>
            </div>
            <div class="col-2 sub-top-brand">
                <div>
                    <a href="#"><img src="images/logo/converse.jpg" alt="" class="img-fluid"></a>
                </div>
                <div>
                    <span>Converse</span>
                </div>
            </div>
            <div class="col-2 sub-top-brand">
                <div>
                    <a href="#"><img src="images/logo/bitis.png" alt="" class="img-fluid"></a>
                </div>
                <div>
                    <span>Bitis</span>
                </div>
            </div>
            <div class="col-2 sub-top-brand">
                <div>
                    <a href="#"><img src="images/logo/vans.jpg" alt="" class="img-fluid"></a>
                </div>
                <div>
                    <span>VANS</span>
                </div>
            </div>
            <div class="col-2 sub-top-brand">
                <div>
                    <a href="#"><img src="images/logo/ananas.jpg" alt="" class="img-fluid"></a>
                </div>
                <div>
                    <span>ananas</span>
                </div>
            </div>
        </div>
    </div>

    <!-- top-brand -->
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
                            <p>Tầng 6 - Tòa nhà LUXURY HOTEL - 132 Hoàng Quốc Việt,<br> Hà Nội, Vietnam</p>
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
                        <div class="support-title">
                            <p>nhom2k14@gmail.com</p>
                            <div class="footer">
                                <p>Đăng kí nhận thông tin</p>
                                <input type="text" id="email" name="Put Your Email Access Here" placeholder=EMAIL>
                                <a href="#" title="Lên đầu trang"><i class="fas fa-chevron-circle-up"></i></a>
                                <button onclick="Shop.saveContact()">SUBSCRIBES</button>
                                </form>
                            </div>
                        </div>
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
                        <a href="#"><img src="images/logo/shoes4.png" alt="" class="img-fluid"></a>
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
                            <img src="images/email.png"> Email:nhom2k14@gmail.com
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