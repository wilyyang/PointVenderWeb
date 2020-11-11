<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="java.util.List"%>
<%@ page import="point.vender.web.dto.ProductDto"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="resources/company/favicon.png">

<title>Product Management</title>

<!-- Bootstrap core CSS -->
<link href="resources/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="resources/docs/examples/dashboard/dashboard.css"
	rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="resources/docs/assets/js/ie-emulation-modes-warning.js"></script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/">PointMobile Vendor Admin</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="/productManage">상품관리<span
							class="sr-only">(current)</span></a></li>
					<li><a href="/inventoryManage">재고 관리</a></li>
					<li><a href="/logout">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid">
		<h2 class="sub-header">상품 관리</h2>

		<button id="productAddBtn" type="button" class="btn btn-primary"
			data-toggle="modal">상품 추가</button>
		<button id="productDeleteBtn" type="button" class="btn btn-primary"
			data-toggle="modal">상품 삭제</button>
		<button id="productModifyBtn" type="button" class="btn btn-primary"
			data-toggle="modal">상품수정</button>
		<button id="productDetailBtn" type="button" class="btn btn-primary"
			data-toggle="modal">상품상세</button>

		<br /> <br /> <br /> 
		<div class="table-responsive">
			<table id="productTable" class="table table-hover">
				<thead>
					<tr>
						<th scope="col">생성시간</th>
						<th scope="col">분류</th>
						<th scope="col">품명</th>
						<th scope="col">옵션</th>
						<th scope="col">입고가</th>
						<th scope="col">판매가</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${ empty boardList }">
							<tr>
								<th scope="row"></th>
								<td colspan="6" align="center">데이터가 없습니다.</td>
							</tr>
						</c:when>

						<c:when test="${!empty boardList}">
							<c:forEach var="list" items="${boardList}">
								<tr class='clickable-row'>
									<td class="product-date"><c:out value="${list.date}" /></td>
									<td><c:out value="${list.category}" /></td>
									<td class="product-name"><c:out value="${list.name}" /></td>
									<td><c:out value="${list.option}" /></td>
									<td><c:out value="${list.incomingPrice}" /></td>
									<td><c:out value="${list.sellingPrice}" /></td>
								</tr>
							</c:forEach>
						</c:when>
					</c:choose>
				</tbody>
			</table>

		</div>
	</div>

<div class="modal fade" id="productAddModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<form name="addProductForm" action="/addProduct" method="post"
			id="addProductForm" onsubmit="return formProductAddCheck()">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="exampleModalLabel">상품 추가</h4>
				</div>
				<div class="modal-body">
					<div class="form-group row">
						<div class="col-xs-4">
							<label style="color: red;" id="error_label"></label>
						</div>
					</div>

					<div class="form-group row">
						<div class="col-xs-4">
							<img class="card-img-top"
								data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
								alt="Thumbnail [100%x225]"
								style="height: 225px; width: 225px; display: block;"
								src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22368%22%20height%3D%22226%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20368%20226%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_1756dfee60a%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A18pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_1756dfee60a%22%3E%3Crect%20width%3D%22368%22%20height%3D%22226%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22123.3359375%22%20y%3D%22120.95%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
								data-holder-rendered="true"/>
						</div>
					</div>

					<div class="form-group row">
						<div class="col-xs-3">
							<label for="code1">Code 1</label> <input class="form-control"
								name="code1" id="modal_code1" type="text">
						</div>
						<div class="col-xs-3">
							<label for="code2">Code 2</label> <input class="form-control"
								name="code2" id="modal_code2" type="text">
						</div>
						<div class="col-xs-6">
							<label for="name">품명</label> <input class="form-control"
								name="name" id="modal_name" type="text">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-xs-6">
							<label for="category">분류</label> <input class="form-control"
								name="category" id="modal_category" type="text">
						</div>
						<div class="col-xs-6">
							<label for="option">옵션</label> <input class="form-control"
								name="option" id="modal_option" type="text">
						</div>
					</div>

					<div class="form-group row">
						<div class="col-xs-6">
							<label for="standard">표준</label> <input type="number" min="1"
								class="form-control" name="standard" id="modal_standard">
						</div>
						<div class="col-xs-4">
							<label for="unit">단위</label> <input class="form-control"
								name="unit" id="modal_unit" type="text">
						</div>
					</div>

					<div class="form-group row">
						<div class="col-xs-8">
							<label for="barcode">바코드</label> <input class="form-control"
								name="barcode" id="modal_barcode" type="text">
						</div>
					</div>

					<div class="form-group row">
						<div class="col-xs-4">
							<label for="incomingPrice">입고가</label> <input type="number"
								min="1" class="form-control" name="incomingPrice"
								id="modal_incomingPrice">
						</div>
						<div class="col-xs-4">
							<label for="outgoingPrice">출고가</label> <input type="number"
								min="1" class="form-control" name="outgoingPrice"
								id="modal_outgoingPrice">
						</div>
						<div class="col-xs-4">
							<label for="sellingPrice">판매가</label> <input type="number"
								min="1" class="form-control" name="sellingPrice"
								id="modal_sellingPrice">
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button id="modal_returnBtn" type="submit" class="btn btn-primary">추가</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					
				</div>
			</div>
		</form>
	</div>
</div>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script>
		$(document).ready(function() {
			
			$('#productAddBtn').click(function(){
				$("#productAddModal").modal();
			});
			
			$('#productDeleteBtn').click(function(){
				deleteProduct();
			});
			
			$('#productModifyBtn').click(function(){
				modifyProduct();
			});
			
			$('#productDetailBtn').click(function(){
				detailProduct();
			});
			
			$('#productAddModal').on('show.bs.modal', function(event) {
				
			});
			
			$('#productAddModal').on('hidden.bs.modal', function(e) {
				document.getElementById('error_label').innerHTML = '';
				$('#productAddModal').find('form')[0].reset();
				
				$(this).find("input").prop('readonly', false);
				$("#modal_code1").attr('value','');
				$("#modal_code2").attr('value','');
				$("#modal_name").attr('value','');
				$("#modal_category").attr('value','');
				$("#modal_option").attr('value','');
				$("#modal_standard").attr('value','');
				$("#modal_unit").attr('value','');
				$("#modal_barcode").attr('value','');
				$("#modal_incomingPrice").attr('value','');
				$("#modal_outgoingPrice").attr('value','');
				$("#modal_sellingPrice").attr('value','');

				
				document.getElementById('exampleModalLabel').innerHTML = '상품 추가';
				document.getElementById('modal_returnBtn').innerHTML = '추가';
				document.getElementById("modal_returnBtn").style.visibility = "visible";
			});
		});
	</script>
	<script>

		function deleteProduct() {
			var productTable = document.getElementById("productTable");
			var actives = productTable.getElementsByClassName("active");
			var product_date = actives[0].getElementsByClassName("product-date")[0].innerHTML;
			var product_name = actives[0].getElementsByClassName("product-name")[0].innerHTML;

			post_to_url('/deleteProduct', {
				'date' : product_date,
				'name' : product_name
			});
		}
		
		function modifyProduct() {
			var productTable = document.getElementById("productTable");
			var actives = productTable.getElementsByClassName("active");
			var product_date = actives[0].getElementsByClassName("product-date")[0].innerHTML;
			var product_name = actives[0].getElementsByClassName("product-name")[0].innerHTML;
			
			var result = {
					'date' : product_date,
					'name' : product_name
			};
			$.ajax({
				type : "POST",
				url : "modifyProduct",
				dataType : "json",
				contentType : "application/json; charset=utf-8",
				data : JSON.stringify(result),
				success : function(target) {
					document.getElementById('exampleModalLabel').innerHTML = '상품 수정';
					document.getElementById('modal_returnBtn').innerHTML = '수정';
					
					
					$("#modal_code1").attr('value',target.code1);
					$("#modal_code2").attr('value',target.code2);
					$("#modal_name").attr('value',target.name);
					$("#modal_category").attr('value',target.category);
					$("#modal_option").attr('value',target.option);
					$("#modal_standard").attr('value',target.standard);
					$("#modal_unit").attr('value',target.unit);
					$("#modal_barcode").attr('value',target.barcode);
					$("#modal_incomingPrice").attr('value',target.incomingPrice);
					$("#modal_outgoingPrice").attr('value',target.outgoingPrice);
					$("#modal_sellingPrice").attr('value',target.sellingPrice);
					$("#productAddModal").modal();
				},
				error : function() {
					alert('실패');
				}
			});
		}
		
		function detailProduct() {
			var productTable = document.getElementById("productTable");
			var actives = productTable.getElementsByClassName("active");
			var product_date = actives[0].getElementsByClassName("product-date")[0].innerHTML;
			var product_name = actives[0].getElementsByClassName("product-name")[0].innerHTML;
			
			var result = {
					'date' : product_date,
					'name' : product_name
			};
			
			var originalForm = $('#productTable');
			var div = $('<div/>',{
			               text : originalForm.val(),
			               id : originalForm.attr('id')
			            });
			  $('#toChange').replaceWith(div);
			
			$.ajax({
				type : "POST",
				url : "modifyProduct",
				dataType : "json",
				contentType : "application/json; charset=utf-8",
				data : JSON.stringify(result),
				success : function(target) {
					document.getElementById('exampleModalLabel').innerHTML = '상품 상세';
					document.getElementById("modal_returnBtn").style.visibility = "hidden";
					
					$("#modal_code1").attr('value',target.code1).prop('readonly', true);
					$("#modal_code2").attr('value',target.code2).prop('readonly', true);
					$("#modal_name").attr('value',target.name).prop('readonly', true);
					$("#modal_category").attr('value',target.category).prop('readonly', true);
					$("#modal_option").attr('value',target.option).prop('readonly', true);
					$("#modal_standard").attr('value',target.standard).prop('readonly', true);
					$("#modal_unit").attr('value',target.unit).prop('readonly', true);
					$("#modal_barcode").attr('value',target.barcode).prop('readonly', true);
					$("#modal_incomingPrice").attr('value',target.incomingPrice).prop('readonly', true);
					$("#modal_outgoingPrice").attr('value',target.outgoingPrice).prop('readonly', true);
					$("#modal_sellingPrice").attr('value',target.sellingPrice).prop('readonly', true);
					$("#productAddModal").modal();
				},
				error : function() {
					alert('실패');
				}
			});
		}

		function formProductAddCheck() {
			if (!document.addProductForm.name.value) {
				document.getElementById('error_label').innerHTML = '상품명을 입력하세요.';
				document.addProductForm.name.focus();
				return false;
			}
		}

		function post_to_url(path, params, method) {
			method = method || "post";
			var form = document.createElement("form");
			form.setAttribute("method", method);
			form.setAttribute("action", path);
			for ( var key in params) {
				var hiddenField = document.createElement("input");
				hiddenField.setAttribute("type", "hidden");
				hiddenField.setAttribute("name", key);
				hiddenField.setAttribute("value", params[key]);
				form.appendChild(hiddenField);
			}
			document.body.appendChild(form);
			form.submit();
		}
	</script>

	<script>


		$('#productTable').on('click', '.clickable-row', function(event) {
			$(this).addClass('active').siblings().removeClass('active');
		});
	</script>

	<!-- Placed at the end of the document so the pages load faster -->
	<script src="resources/dist/js/bootstrap.min.js"></script>
	<script src="resources/docs/assets/js/docs.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="resources/docs/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
