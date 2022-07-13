<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layouts/taglib.jsp"%>
<title>Quản trị</title>
	<div class="col-md-12 grid-margin">
		<div class="row">
			<div class="col-12 col-xl-8 mb-4 mb-xl-0">
				<h3 class="font-weight-bold">Welcome Thanh Y</h3>
				<h6 class="font-weight-normal mb-0">
					Ngày mới tốt lành! <span
						class="text-primary">Bạn có 3 thông báo mới!</span>
				</h6>
			</div>
			<div class="col-12 col-xl-4">
				<div class="justify-content-end d-flex">
					<div class="dropdown flex-md-grow-1 flex-xl-grow-0">
						<button class="btn btn-sm btn-light bg-white dropdown-toggle"
							type="button" id="dropdownMenuDate2" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="true">
							<i class="mdi mdi-calendar"></i> Today (10 Jan 2021)
						</button>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="dropdownMenuDate2">
							<a class="dropdown-item" href="#">January - March</a> <a
								class="dropdown-item" href="#">March - June</a> <a
								class="dropdown-item" href="#">June - August</a> <a
								class="dropdown-item" href="#">August - November</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-6 grid-margin stretch-card">
		<div class="card tale-bg">
			<div class="card-people mt-auto">
				<img src="<c:url value="/tamplate/images/dashboard/people.svg" />" alt="people">
				<div class="weather-info">
					<div class="d-flex">
						<div>
							<h2 class="mb-0 font-weight-normal">
								<i class="icon-sun mr-2"></i>28<sup>C</sup>
							</h2>
						</div>
						<div class="ml-2">
							<h4 class="location font-weight-normal">TP Hồ Chí Minh, Quận Tân Bình</h4>
							<h6 class="font-weight-normal">Việt Nam</h6>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-6 grid-margin transparent">
		<div class="row">
			<div class="col-md-6 mb-4 stretch-card transparent">
				<div class="card card-tale">
					<div class="card-body">
						<p class="mb-4">Số bài viết mới trên trang sinh viên:</p>
						<p class="fs-30 mb-2">5</p>
						<p>+8.00% (30 ngày)</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 mb-4 stretch-card transparent">
				<div class="card card-dark-blue">
					<div class="card-body">
						<p class="mb-4">Số lượng sinh viên truy cập vào web hôm nay:</p>
						<p class="fs-30 mb-2">132</p>
						<p>3.0% (1 ngày)</p>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 mb-4 mb-lg-0 stretch-card transparent">
				<div class="card card-light-blue">
					<div class="card-body">
						<p class="mb-4">Cuộc họp quan trọng hôm nay:</p>
						<p class="fs-30 mb-2">1</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 stretch-card transparent">
				<div class="card card-light-danger">
					<div class="card-body">
						<p class="mb-4">Báo cáo mới từ giảng viên:</p>
						<p class="fs-30 mb-2">3</p>
					</div>
				</div>
			</div>
		</div>
	</div>