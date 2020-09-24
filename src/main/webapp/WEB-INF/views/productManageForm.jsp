<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="exampleModalLabel">상품 추가</h4>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="code1" class="control-label">Code 1</label> <input
								type="text" class="form-control" id="code1">
							<label for="code2" class="control-label">Code 2</label> <input
								type="text" class="form-control" id="code2">
						</div>

						<div class="form-group">
							<label for="category" class="control-label">category</label> <input
								type="text" class="form-control" id="category">
						</div>
						<div class="form-group">
							<label for="name" class="control-label">name</label> <input
								type="text" class="form-control" id="name">
						</div>

						<div class="form-group">
							<label for="option" class="control-label">option</label> <input
								type="text" class="form-control" id="option">
						</div>
						<div class="form-group">
							<label for="standard" class="control-label">standard</label> <input
								type="text" class="form-control" id="standard">
						</div>

						<div class="form-group">
							<label for="unit" class="control-label">unit</label> <input
								type="text" class="form-control" id="unit">
						</div>
						<div class="form-group">
							<label for="barcode" class="control-label">barcode</label> <input
								type="text" class="form-control" id="barcode">
						</div>

						<div class="form-group">
							<label for="incomingPrice" class="control-label">incomingPrice</label> <input
								type="text" class="form-control" id="incomingPrice">
						</div>
						<div class="form-group">
							<label for="outgoingPrice" class="control-label">outgoingPrice</label> <input
								type="text" class="form-control" id="outgoingPrice">
						</div>
						<div class="form-group">
							<label for="sellingPrice" class="control-label">sellingPrice</label> <input
								type="text" class="form-control" id="sellingPrice">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary" href="/addProduct">추가</button>
				</div>
			</div>
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
					<li class="active"><a href="/productManage">상품 관리<span
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
							<tr>
								<td>1,002</td>
								<td>amet</td>
								<td>consectetur</td>
								<td>adipiscing</td>
								<td>elit</td>
							</tr>
							<tr>
								<td>1,003</td>
								<td>Integer</td>
								<td>nec</td>
								<td>odio</td>
								<td>Praesent</td>
							</tr>
							<tr>
								<td>1,003</td>
								<td>libero</td>
								<td>Sed</td>
								<td>cursus</td>
								<td>ante</td>
							</tr>
							<tr>
								<td>1,004</td>
								<td>dapibus</td>
								<td>diam</td>
								<td>Sed</td>
								<td>nisi</td>
							</tr>
							<tr>
								<td>1,005</td>
								<td>Nulla</td>
								<td>quis</td>
								<td>sem</td>
								<td>at</td>
							</tr>
							<tr>
								<td>1,006</td>
								<td>nibh</td>
								<td>elementum</td>
								<td>imperdiet</td>
								<td>Duis</td>
							</tr>
							<tr>
								<td>1,007</td>
								<td>sagittis</td>
								<td>ipsum</td>
								<td>Praesent</td>
								<td>mauris</td>
							</tr>
							<tr>
								<td>1,008</td>
								<td>Fusce</td>
								<td>nec</td>
								<td>tellus</td>
								<td>sed</td>
							</tr>
							<tr>
								<td>1,009</td>
								<td>augue</td>
								<td>semper</td>
								<td>porta</td>
								<td>Mauris</td>
							</tr>
							<tr>
								<td>1,010</td>
								<td>massa</td>
								<td>Vestibulum</td>
								<td>lacinia</td>
								<td>arcu</td>
							</tr>
							<tr>
								<td>1,011</td>
								<td>eget</td>
								<td>nulla</td>
								<td>Class</td>
								<td>aptent</td>
							</tr>
							<tr>
								<td>1,012</td>
								<td>taciti</td>
								<td>sociosqu</td>
								<td>ad</td>
								<td>litora</td>
							</tr>
							<tr>
								<td>1,013</td>
								<td>torquent</td>
								<td>per</td>
								<td>conubia</td>
								<td>nostra</td>
							</tr>
							<tr>
								<td>1,014</td>
								<td>per</td>
								<td>inceptos</td>
								<td>himenaeos</td>
								<td>Curabitur</td>
							</tr>
							<tr>
								<td>1,015</td>
								<td>sodales</td>
								<td>ligula</td>
								<td>in</td>
								<td>libero</td>
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
