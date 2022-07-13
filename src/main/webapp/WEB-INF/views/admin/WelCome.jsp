<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="/WEB-INF/views/layouts/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<c:url value="/tamplate/vendors/feather/feather.css" />">
<link rel="stylesheet" href="<c:url value="/tamplate/vendors/ti-icons/css/themify-icons.css" />">
<link rel="stylesheet" href="<c:url value="/tamplate/vendors/css/vendor.bundle.base.css" />">
<link rel="stylesheet" href="<c:url value="/tamplate/css/vertical-layout-light/style.css" />">
<link rel="shortcut icon" href="<c:url value="/tamplate/images/logo1.svg" />">
<title>Welcome Admin DTM </title>
</head>
<body>
	<div class=" container-scroller">
		<div class="container-fluid page-body-wrapper full-page-wrapper">
		
			<div class="main-panel w-100  documentation">
				<div class="content-wrapper">
					<div class="container-fluid">
						<div class="row">
							<div class="col-12 pt-5">
								<a class="btn btn-primary" href="/QuanLySinhVien/dang-nhap"><i
									class="ti-home mr-2"></i>Đăng nhập</a>
							</div>
						</div>
						<div class="row pt-5 mt-5">
							<div class="col-12 pt-5 text-center">
								<h3 class="text-primary font-weight-light mt-5">WelCome to Admin DTM
								</h3>
							</div>
						</div>
					</div>
				</div>
				<!-- partial:../../partials/_footer.html -->
				<%@ include file = "/WEB-INF/views/layouts/admin/footer.jsp" %>
			</div>
		</div>
	</div>

</body>
</html>