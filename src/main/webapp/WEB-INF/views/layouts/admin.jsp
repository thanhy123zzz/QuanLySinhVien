<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/taglib.jsp"%>
<!DOCTYPE html>
<html>

<head>
<!-- Required meta tags -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title><decorator:title></decorator:title></title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<!-- plugins:css -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<c:url value="/tamplate/vendors/feather/feather.css" />">
<link rel="stylesheet"
	href="<c:url value="/tamplate/vendors/ti-icons/css/themify-icons.css" />">
<link rel="stylesheet"
	href="<c:url value="/tamplate/vendors/css/vendor.bundle.base.css" />">

<link rel="stylesheet"
	href="<c:url value="/tamplate/css/vertical-layout-light/style.css" />">
<!-- endinject -->
<link rel="shortcut icon"
	href="<c:url value="/tamplate/images/logo1.svg" />">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js"
	type="text/javascript"></script>
<link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css"
	rel="stylesheet" type="text/css" />
<style type="text/css">
#profile-upload {
	background-size: cover;
	background-position: center;
	height: 250px;
	width: 250px;
	border: 1px solid #bbb;
	position: relative;
	border-radius: 250px;
	overflow: hidden;
}

#profile-upload:hover input.upload {
	display: block;
}

#profile-upload:hover .hvr-profile-img {
	display: inline-block;
}

#profile-upload .fa {
	margin: auto;
	position: absolute;
	bottom: -4px;
	left: 0;
	text-align: center;
	right: 0;
	padding: 6px;
	opacity: 1;
	transition: opacity 1s linear;
	-webkit-transform: scale(.75);
}

#profile-upload:hover .fa {
	opacity: 1;
	-webkit-transform: scale(1);
}

#profile-upload input.upload {
	z-index: 1;
	left: 0;
	margin: 0;
	bottom: 0;
	top: 0;
	padding: 0;
	opacity: 0;
	outline: none;
	cursor: pointer;
	position: absolute;
	background: #ccc;
	width: 100%;
	display: none;
}

#profile-upload .hvr-profile-img {
	width: 100%;
	height: 100%;
	display: none;
	position: absolute;
	vertical-align: middle;
	position: relative;
	background: transparent;
}

#profile-upload .fa:after {
	content: "";
	position: absolute;
	bottom: 0;
	left: 0;
	width: 100%;
	height: 0px;
	background: rgba(0, 0, 0, 0.3);
	z-index: -1;
	transition: height 0.3s;
}

#profile-upload:hover .fa:after {
	height: 100%;
}
</style>
</head>
<body
	onload="duLieu([<c:forEach var ='i' items = "${DiemTB}"><c:out value="${i.diem},"></c:out></c:forEach>],
[<c:forEach var ='i' items = "${DiemTB}"><c:out value="'${i.dotHoc}',"></c:out></c:forEach>]);">
	<div class="container-scroller">
		<!-- partial:../../partials/_navbar.html -->
		<%@ include file="/WEB-INF/views/layouts/admin/header.jsp"%>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:../../partials/_settings-panel.html -->
			<%@ include file="/WEB-INF/views/layouts/admin/setting.jsp"%>
			<!-- partial -->
			<!-- partial:../../partials/_sidebar.html -->
			<%@ include file="/WEB-INF/views/layouts/admin/sidebar.jsp"%>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row">
						<decorator:body></decorator:body>
					</div>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:../../partials/_footer.html -->
				<%@ include file="/WEB-INF/views/layouts/admin/footer.jsp"%>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->


	<!-- endinject -->
	<!-- Plugin js for this page -->
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src="<c:url value="/tamplate/js/hoverable-collapse.js" />"></script>
	<script src="<c:url value="/tamplate/js/template.js" />"></script>
	<script src="<c:url value="/tamplate/js/settings.js" />"></script>
	<script src="<c:url value="/tamplate/js/todolist.js" />"></script>

	<script src="https://code.jquery.com/jquery-3.6.0.slim.min.js"></script>

	<script
		src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script>
	function alertFn() {
		var agree=confirm("Bạn có muốn thao tác?");
		if (agree)
		 return true ;
		else
		 return false ;
	}
		$(document).ready(function() {
			$('#tableSinhVien').DataTable();
			$('#tableMonHoc').DataTable();
			$('#tableDangKyMon').DataTable({
				lengthMenu:[[5,10,20,-1],[5,10,20,"All"]]
				
			});
			$('#tableDiem').DataTable({
				lengthMenu:[[5,10,20,-1],[5,10,20,"All"]]
			});
		});
		function showDiv() {
			   if(document.getElementById('welcomeDiv').style.display == "none"){
			   	document.getElementById('welcomeDiv').style.display = "block";
			   	document.getElementById('welcomeDiv1').style.display = "block";
			   }else{
			   	document.getElementById('welcomeDiv').style.display = "none";
				document.getElementById('welcomeDiv1').style.display = "none";
			   }
			}
		function previewProfileImage( uploader ) {   
		    //ensure a file was selected 
		    if (uploader.files && uploader.files[0]) {
		        var imageFile = uploader.files[0];
		        var reader = new FileReader();    
		        reader.onload = function (e) {
		            //set the image data as source
		            $('#profile-upload').css('background-image', 'url('+e.target.result +')');
		        }    
		        reader.readAsDataURL( imageFile );
		    }
		}

		$("#getval").change(function(){
		    previewProfileImage( this );
		});
	</script>


	<!-- endinject -->
	<!-- Custom js for this page-->
	<!-- End custom js for this page-->

</body>

</html>
