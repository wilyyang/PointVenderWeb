<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
					<h4 class="modal-title" id="exampleModalLabel"></h4>
				</div>
				<div class="modal-body">
					<div class="form-group row">
						<div class="col-xs-4">
							<label style="color: red;" id="error_label"></label>
						</div>
					</div>

					<div class="form-group row">
						<div class="col-xs-3">
							<label for="code1">Code 1</label> <input class="form-control"
								name="code1" id="code1" type="text">
						</div>
						<div class="col-xs-3">
							<label for="code2">Code 2</label> <input class="form-control"
								name="code2" id="code2" type="text">
						</div>
						<div class="col-xs-6">
							<label for="name">품명</label> <input class="form-control"
								name="name" id="name" type="text">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-xs-6">
							<label for="category">분류</label> <input class="form-control"
								name="category" id="category" type="text">
						</div>
						<div class="col-xs-6">
							<label for="option">옵션</label> <input class="form-control"
								name="option" id="option" type="text">
						</div>
					</div>

					<div class="form-group row">
						<div class="col-xs-6">
							<label for="standard">표준</label> <input type="number" min="1"
								class="form-control" name="standard" id="standard">
						</div>
						<div class="col-xs-4">
							<label for="unit">단위</label> <input class="form-control"
								name="unit" id="unit" type="text">
						</div>
					</div>

					<div class="form-group row">
						<div class="col-xs-8">
							<label for="barcode">바코드</label> <input class="form-control"
								name="barcode" id="barcode" type="text">
						</div>
					</div>

					<div class="form-group row">
						<div class="col-xs-4">
							<label for="incomingPrice">입고가</label> <input type="number"
								min="1" class="form-control" name="incomingPrice"
								id="incomingPrice">
						</div>
						<div class="col-xs-4">
							<label for="outgoingPrice">출고가</label> <input type="number"
								min="1" class="form-control" name="outgoingPrice"
								id="outgoingPrice">
						</div>
						<div class="col-xs-4">
							<label for="sellingPrice">판매가</label> <input type="number"
								min="1" class="form-control" name="sellingPrice"
								id="sellingPrice">
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