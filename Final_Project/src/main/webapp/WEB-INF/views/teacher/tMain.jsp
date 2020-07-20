<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>teacher_main</title>

<!-- Custom fonts for this template-->
<link
	href="<%=request.getContextPath()%>/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link
	href="<%=request.getContextPath()%>/resources/css/sb-admin-2.min.css"
	rel="stylesheet">
	
<!-- Custom styles for this page -->
<link href="<%=request.getContextPath()%>/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top"><!-- Page Wrapper -->
<div id="wrapper">

	<jsp:include page="../frame/sidebar.jsp" />

	<!-- Content Wrapper -->
	<div id="content-wrapper" class="d-flex flex-column">

		<!-- Main Content -->
		<div id="content">

			<jsp:include page="../frame/topbar.jsp" />

			<!-- Begin Page Content -->
			<div class="container-fluid">

				<!-- Page Heading -->
				<h1 class="h3 mb-4 text-gray-800">교사 메인 페이지</h1>

			</div>
			<!-- /.container-fluid -->

		</div>
		<!-- End of Main Content -->

		<jsp:include page="../frame/footer.jsp" />

	</div>
	<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top"> <i
	class="fas fa-angle-up"></i>
</a>

<jsp:include page="../frame/logout.jsp" />


<!-- Bootstrap core JavaScript-->
<script
	src="<%=request.getContextPath()%>/resources/vendor/jquery/jquery.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script
	src="<%=request.getContextPath()%>/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script
	src="<%=request.getContextPath()%>/resources/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script
	src="<%=request.getContextPath()%>/resources/vendor/chart.js/Chart.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/vendor/datatables/jquery.dataTables.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<script
	src="<%=request.getContextPath()%>/resources/js/demo/chart-area-demo.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/demo/chart-pie-demo.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/demo/datatables-demo.js"></script>

</body>
</html>