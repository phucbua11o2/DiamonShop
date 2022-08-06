<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header id="header">
	<div class="row">
		<div class="span4">
			<h1>
				<a class="logo" href='<c:url value="/"/>'><span>Why oh why</span> <img
					src="<c:url value="/assets/user/img/logo-bootstrap-shoping-cart.png"/>"
					alt="bootstrap sexy shop"> </a>
			</h1>
		</div>
		<div class="span4">
			<div class="offerNoteWrapper">
				<h1 class="dotmark">
					<i class="icon-cut"></i> Bộ sưu tập hè thu HOT nhất 2022
				</h1>
			</div>
		</div>
		<div class="span4 alignR">
			<p>
				<br> <strong> Hỗ trợ (24/7) : 0909 1234 56 </strong><br>
				<br>
			</p>
			<span class="btn btn-mini">[ ${totalQuantityCart } ] <span
				class="icon-shopping-cart"></span></span> <span
				class="btn btn-warning btn-mini">đ</span> <span class="btn btn-mini">&dollar;</span>
			<span class="btn btn-mini">&euro;</span>
		</div>
	</div>
</header>

<!--
Navigation Bar Section 
-->
<div class="navbar">
	<div class="navbar-inner">
		<div class="container">
			<a data-target=".nav-collapse" data-toggle="collapse"
				class="btn btn-navbar"> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
			</a>
			<div class="nav-collapse">
				<ul class="nav">
					<c:forEach var="item" items="${menus}" varStatus="index">
						<c:if test="${index.first }">
							<li class="active">
						</c:if>
						<c:if test="${not index.first}">
							<li>
						</c:if>
						<a href='<c:url value="/"/>'>${item.name} </a>
						</li>
					</c:forEach>
				</ul>
				<form action="#" class="navbar-search pull-left">
					<input type="text" placeholder="Search" class="search-query span2">
				</form>
				<ul class="nav pull-right">
					<c:if test="${empty loginInfo }">
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"><span class="icon-lock"></span>
							Đăng nhập <b class="caret"></b></a>
						<div class="dropdown-menu">
							<form class="form-horizontal loginFrm">
								<div class="control-group">
									<input type="text" class="span2" id="inputEmail"
										placeholder="Email">
								</div>
								<div class="control-group">
									<input type="password" class="span2" id="inputPassword"
										placeholder="Password">
								</div>
								<div class="control-group">
									<label class="checkbox"> <input type="checkbox">
										Nhớ tôi
									</label>
									<button type="submit" class="shopBtn btn-block">Đăng nhập</button>
								</div>
							</form>
						</div></li>
						</c:if>
						<c:if test="${not empty loginInfo }">
							<li><a href="#">${loginInfo.display_name}
							<b class="caret"></b></a></li>
						</c:if>
				</ul>
			</div>
		</div>
	</div>
</div>