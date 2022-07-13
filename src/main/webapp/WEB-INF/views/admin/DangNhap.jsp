<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
<link rel="stylesheet"
	href="<c:url value="/tamplate/vendors/feather/feather.css" />">
<link rel="stylesheet"
	href="<c:url value="/tamplate/vendors/ti-icons/css/themify-icons.css" />">
<link rel="stylesheet"
	href="<c:url value="/tamplate/vendors/css/vendor.bundle.base.css" />">
<link rel="stylesheet"
	href="<c:url value="/tamplate/css/vertical-layout-light/style.css" />">
<link rel="shortcut icon"
	href="<c:url value="/tamplate/images/logo1.svg" />">
</head>
<body>

	<div class="container-scroller">
		<div class="container-fluid page-body-wrapper full-page-wrapper">
			<div class="content-wrapper d-flex align-items-center auth px-0">

				<div class="row w-100 mx-0">
					<div class="col-lg-4 mx-auto">
						<div class="auth-form-light text-left py-5 px-4 px-sm-5">
							<div class="brand-logo">
								<center>
									<img src="<c:url value="/tamplate/images/logo1.svg" />"
										alt="logo">
								</center>
							</div>
							<center>
								<h3>Đăng nhập admin</h3>
							</center>

							<form:form class="pt-3" method="POST"
								modelAttribute="adminAccount"
								action="${pageContext.request.contextPath}/j_spring_security_check">
								<div class="form-group">
									<input type="text" class="form-control form-control-lg"
										id="exampleInputEmail1" placeholder="Tên đăng nhập"
										name="username" />
								</div>
								<div class="form-group">
									<input type="password" class="form-control form-control-lg"
										id="exampleInputPassword1" placeholder="Mật khẩu"
										name="password" />
								</div>

								<c:if test="${param.error == 'true'}">
									<div class="alert alert-danger alert-dismissible"
										style="width: 100%; height: 45px">
										<button type="button" class="close" data-dismiss="alert">&times;</button>
										<strong>Sai thông tin!</strong> mời nhập lại.
									</div>
								</c:if>
								<div class="mt-3">
									<button type="submit"
										class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">
										Đăng nhập</button>
									<a
										class="btn btn-outline-secondary btn-lg btn-block font-weight-medium auth-form-btn"
										href="/QuanLySinhVien/">Huỷ</a>
								</div>
								<div
									class="my-2 d-flex justify-content-between align-items-center">
									<div class="form-check"></div>
									<a href="#" class="auth-link text-black">Quên mật khẩu?</a>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
			<!-- content-wrapper ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<script
		src="<c:url value="/tamplate/vendors/js/vendor.bundle.base.js" />">
		
	</script>

	<!-- endinject -->
	<!-- Plugin js for this page -->
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src="<c:url value="/tamplate/js/off-canvas.js" />"></script>
	<script src="<c:url value="/tamplate/js/hoverable-collapse.js" />"></script>
	<script src="<c:url value="/tamplate/js/template.js" />"></script>
	<script src="<c:url value="/tamplate/js/settings.js" />"></script>
	<script src="<c:url value="/tamplate/js/todolist.js" />"></script>
</body>
</html>