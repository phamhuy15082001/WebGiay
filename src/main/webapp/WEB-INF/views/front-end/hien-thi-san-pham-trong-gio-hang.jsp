<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!-- SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
    content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Shop Homepage - Start Bootstrap Template</title>

<jsp:include page="/WEB-INF/views/front-end/common/css.jsp"></jsp:include>

</head>

<body>

    <!-- Navigation -->
    <jsp:include page="/WEB-INF/views/front-end/common/header.jsp"></jsp:include>

    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-lg-3">

                <!-- category -->
                <jsp:include page="/WEB-INF/views/front-end/common/category.jsp"></jsp:include>

            </div>
            <!-- /.col-lg-3 -->

            <div class="col-lg-9">
                <h1 class="my-4">Gửi đơn hàng</h1>
                
                <div class="row mb-4">
                    <div class="col">
                        <form action="${pageContext.request.contextPath}/luu_don_hang" method="post">
                            <div class="form-group">
                                <label for="name">Tên khách hàng:</label>
                                <input type="text" class="form-control" id="name" name="name">
                            </div>
                            <div class="form-group">
                                <label for="email">Địa chỉ email:</label>
                                <input type="email" class="form-control" id="email" name="email">
                            </div>
                            <div class="form-group">
                                <label for="phone">Điện thoại liên hệ:</label>
                                <input type="text" class="form-control" id="phone" name="phone">
                            </div>
                            <div class="form-group">
                                <label for="address">Địa chỉ giao hàng:</label>
                                <input type="text" class="form-control" id="address" name="address">
                            </div>
                            
                            <button type="submit" class="btn btn-warning">Gửi đơn hàng</button>
                            
                        </form>
                    </div>
                </div>
                <div class="container">
            <div class="general-title">
                <span><a href="${pageContext.request.contextPath}/index">
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
                        <img src="images/HN38.jpg" alt="" class="img-fluid">
                    </div>
                    <div class="col-3 name">${product.tenSanPham}</div>
                    <div class="col-2 price">${product.giaban}/đêm</div>
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
                <div class="row cart-info">
                    <div class="col-2 img">
                        <img src="images/HN42.jpg" alt="" class="img-fluid">
                    </div>
                    <div class="col-3 name">NEWSTYLE Homestay</div>
                    <div class="col-2 price">1.280.000/đêm</div>
                    <div class="col-2 number">
                        <input type="number" min="1" max="15" value="1">
                    </div>
                    <div class="col-2 prices">
                        1.280.000
                    </div>
                    <div class="col-1 delete">
                        <button><i class="far fa-trash-alt"></i></button>
                    </div>
                </div>
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
                        <tbody>
                        <c:forEach items="${GIO_HANG.sanPhamTrongGioHangs}" var="item"
                            varStatus="loop">

                            <tr>
                                <th scope="row">${loop.index + 1}</th>
                                <td>${item.tenSanPham }</td>
                                <%-- <td><img src="../file/upload/${item.urlImage }"
                                    width="100px" height="150px"></td> --%>
                                <td>${item.soluong }</td>
                                <td><fmt:formatNumber type="number" maxIntegerDigits="13"
                                        value="${item.giaban}" /> đ</td>
                            </tr>


                    </div>
                </div>
                
                
            </div>
                        </c:forEach>
                    </tbody>
                        </table>
                          <div class="cart">
       
            <div class="clear"></div>
        </div>
    </div>
 </div>
 </div>
 </div>

            <!-- /.col-lg-9 -->

        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->

    <jsp:include page="/WEB-INF/views/front-end/common/footer.jsp"></jsp:include>

    <jsp:include page="/WEB-INF/views/front-end/common/js.jsp"></jsp:include>


</body>

</html>
