<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
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
    <link href="resources/docs/examples/dashboard/dashboard.css" rel="stylesheet">

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

	<div class="modal fade" id="productModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
		<form action="/addProduct" method="post" id="addProductForm">
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
								<label for="code1">code1</label> 
								<input class="form-control"	name="code1" id="code1" type="text">
							</div>
							<div class="col-xs-4">
								<label for="code2">code2</label> 
								<input class="form-control" name="code2" id="code2" type="text">
							</div>
							<div class="col-xs-8">
								<label for="name">name</label> 
								<input class="form-control" name="name" id="name" type="text">
							</div>
						</div>
						<div class="form-group row">
							<div class="col-xs-6">
								<label for="category">category</label> 
								<input class="form-control"	name="category" id="category" type="text">
							</div>
							<div class="col-xs-6">
								<label for="option">option</label> 
								<input class="form-control" name="option" id="option" type="text">
							</div>
						</div>
						
						<div class="form-group row">
							<div class="col-xs-6">
								<label for="standard">standard</label> 
								<input class="form-control"	name="standard" id="standard" type="text">
							</div>
							<div class="col-xs-4">
								<label for="unit">unit</label> 
								<input class="form-control" name="unit" id="unit" type="text">
							</div>
						</div>

						<div class="form-group row">
							<div class="col-xs-8">
								<label for="barcode">barcode</label> 
								<input class="form-control"	name="barcode" id="barcode" type="text">
							</div>
						</div>
						
						<div class="form-group row">
							<div class="col-xs-4">
								<label for="incomingPrice">incomingPrice</label> 
								<input class="form-control"	name="incomingPrice" id="incomingPrice" type="text">
							</div>
							<div class="col-xs-4">
								<label for="outgoingPrice">outgoingPrice</label> 
								<input class="form-control" name="outgoingPrice" id="outgoingPrice" type="text">
							</div>
							<div class="col-xs-4">
								<label for="sellingPrice">sellingPrice</label> 
								<input class="form-control" name="sellingPrice" id="sellingPrice" type="text">
							</div>
						</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">추가</button>
				</div>
			</div>
								</form>
		</div>
	</div>

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
					<!-- <li><a href="#">Profile</a></li> -->
					<li><a href="/logout">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
					<li class="active"><a href="/productManage">상품관리<span
							class="sr-only">(current)</span></a></li>
					<li><a href="/inventoryManage">재고 관리</a></li>
					<li><a href="/revenueManage">매출 매입 내역</a></li>
				</ul>
			</div>

			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<h2 class="sub-header">상품 관리</h2>
				
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#productModal">상품 추가</button>
				<br />
				<br />
				<br />
				
				<div class="table-responsive">
				
				
					<table class="table table-striped">
						<thead>
							<tr>
								<th>#</th>
								<th>Header</th>
								<th>Header</th>
								<th>Header</th>
								<th>Header</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1,001</td>
								<td>Lorem</td>
								<td>ipsum</td>
								<td>dolor</td>
								<td>sit</td>
							</tr>
						</tbody>
					</table>
					
					
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<script>
		$('#productModal').on('show.bs.modal', function(event) {})
	</script>
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="resources/dist/js/bootstrap.min.js"></script>
	<script src="resources/docs/assets/js/docs.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="resources/docs/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
