<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title><decorator:title default="Master-Layout"></decorator:title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap styles -->
<link href="<c:url value="/assets/user/css/bootstrap.css"/>"
	rel="stylesheet" />
<!-- Customize styles -->
<link href="<c:url value="/assets/user/style.css"/>" rel="stylesheet" />
<!-- font awesome styles -->
<link
	href="<c:url value="/assets/user/font-awesome/css/font-awesome.css"/>"
	rel="stylesheet">

<!-- Favicons -->
<link rel="shortcut icon"
	href="<c:url value="/assets/user/ico/favicon.ico"/>">
<decorator:head/>
</head>
<body>
	<!-- 
	Upper Header Section 
-->
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="topNav">
			<div class="container">
				<div class="alignR">
					<div class="pull-left socialNw">
						<a href="#"><span class="icon-twitter"></span></a> <a href="#"><span
							class="icon-facebook"></span></a> <a href="#"><span
							class="icon-youtube"></span></a> <a href="#"><span
							class="icon-tumblr"></span></a>
					</div>
					<a class="active" href='<c:url value="/"/>'> <span class="icon-home"></span>
						Trang chủ
					</a> 
					<c:if test="${loginInfo.user == 'admin@gmail.com' }">
					<a href='<c:url value="/quanlysanpham"/>'>
						Quản lý sản phẩm
					</a>
					<a href='<c:url value="/quanlyhinhanh"/>'>
						Quản lý hình ảnh
					</a>
					</c:if> 
					<c:if test="${not empty loginInfo }">
					<a href="#"><span class="icon-user"></span> ${loginInfo.display_name}</a>
					<a
						href="<c:url value="/dang-xuat"/>"><span class="icon-edit"></span> Đăng xuất </a>
					</c:if>
					<c:if test="${empty loginInfo }">
					<a
						href="<c:url value="/dang-ky"/>"><span class="icon-edit"></span> Đăng ký </a>
					</c:if>
					  <a href="contact.html"><span class="icon-envelope"></span>
						Liên hệ</a> <a href="<c:url value="/gio-hang"/>"><span
						class="icon-shopping-cart"></span> ${totalQuantityCart} Item(s) - <span
						class="badge badge-warning"><fmt:formatNumber
											type="number" maxFractionDigits="3" value="${totalPriceCart}" />
										đ </span></a>
				</div>
			</div>
		</div>
	</div>

	<!--
Lower Header Section 
-->
	<div class="container">
		<div id="gototop"></div>
		<%@include file="/WEB-INF/views/layouts/user/header.jsp" %>
		<decorator:body></decorator:body>
		<%@include file="/WEB-INF/views/layouts/user/footer.jsp" %>
	</div>
	<!-- /container -->

	<div class="copyright">
		<div class="container">
			<p class="pull-right">
				<a href="#"><img src="../../DiamonShop/assets/user/img/maestro.png" alt="payment"></a>
				<a href="#"><img src="../../DiamonShop/assets/user/img/mc.png" alt="payment"></a> <a
					href="#"><img src="../../DiamonShop/assets/user/img/pp.png" alt="payment"></a> <a
					href="#"><img src="../../DiamonShop/assets/user/img/visa.png" alt="payment"></a> <a
					href="#"><img src="../../DiamonShop/assets/user/img/disc.png" alt="payment"></a>
			</p>
			<span>Copyright &copy; 2013<br> bootstrap ecommerce
				shopping template
			</span>
		</div>
	</div>
	<a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="<c:url value="/assets/user/js/jquery.js"/>"></script>
	<script src="<c:url value="/assets/user/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/assets/user/js/jquery.easing-1.3.min.js"/>"></script>
	<script
		src="<c:url value="/assets/user/js/jquery.scrollTo-1.4.3.1-min.js"/>"></script>
	<script src="<c:url value="/assets/user/js/shop.js"/>"></script>
	<decorator:getProperty property="page.script"></decorator:getProperty>
</body>
</html>