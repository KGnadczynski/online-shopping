<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<div class="container">


	<div class="row">

		<c:if test="${not empty message}">

			<div class="col-xs-12">

				<div class="alert alert-success alert-dismissible">

					<button type="button" class="close" data-dismiss="alert">&times;</button>

					${message}

				</div>

			</div>

		</c:if>

		<div class="col-md-offset-2 col-md-8">

			<div class="panel panel-primary">

				<div class="panel-heading">

					<h4>Product Management</h4>

				</div>

				<div class="panel-body">

					<sf:form class="form-horizontal" modelAttribute="product"
						action="${contextRoot}/manage/products" methods="POST"
						enctype="multipart/form-data">

						<div class="form-group">
							<label class="control-label col-md-4" for="name">Name</label>
							<div class="col-md-8">
								<sf:input type="text" path="name" id="name" class="form-control"
									placeholder="Product Name" />
								<sf:errors path="name" cssClass="help-block" element="em" />

							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4" for="brand">Brand</label>
							<div class="col-md-8">
								<sf:input type="text" path="brand" id="brand"
									class="form-control" placeholder="Brand Name" />
								<sf:errors path="brand" cssClass="help-block" element="em" />


							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4" for="description">Description</label>
							<div class="col-md-8">
								<sf:textarea path="description" id="description"
									class="form-control" placeholder="Enter your description here!"></sf:textarea>
								<sf:errors path="description" cssClass="help-block" element="em" />


							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4" for="unitPrice">Unit
								Price</label>
							<div class="col-md-8">
								<sf:input type="number" path="unitPrice" id="unitPrice"
									class="form-control" placeholder="Enter Unit Price" />
								<sf:errors path="unitPrice" cssClass="help-block" element="em" />


							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4" for="quantity">Quantity</label>
							<div class="col-md-8">
								<sf:input type="number" path="quantity" id="quantity"
									class="form-control" placeholder="Enter Quantity" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4" for="file">Select
								an Image</label>
							<div class="col-md-8">
								<sf:input type="file" path="file" id="file" class="form-control" />
								<sf:errors path="file" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4" for="categoryId">Category</label>
							<div class="col-md-8">
								<sf:select path="categoryId" id="categoryId"
									class="form-control" items="${categories}" itemLabel="name"
									itemValue="id" />



							</div>
						</div>


						<div class="form-group">

							<div class="col-md-offset-4 col-md-4">

								<input type="submit" name="submit" id="submit" value="Submit"
									class="btn btn-primary" />

								<sf:hidden path="id" />
								<sf:hidden path="code" />
								<sf:hidden path="supplierId" />
								<sf:hidden path="active" />
								<sf:hidden path="purchases" />
								<sf:hidden path="views" />

							</div>
						</div>

					</sf:form>


				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-xs-12">
			<h3>Available Products</h3>
		</div>
		<div class="col-xs-12">
			<div style="overflow: auto">

				<table id="adminProductsTable"
					class="table table-striped table-bordered">

					<thead>
						<tr>
							<th>Id</th>
							<th>&#160;</th>
							<th>Name</th>
							<th>Qty. Avail</th>
							<th>Unit Price</th>
							<th>Activate</th>
							<th>Edit</th>
						</tr>
					</thead>
					
					<tbody>
						<tr>
							<td>4</td>
							<td>
								<img class="adminDataTableImg" src="${contextRoot}/resources/images/PRDMNO123PQRX.jpg"
								alt="Macbook Pro"/>
							</td>
							<td>Macbook Pro</td>
							<td>3</td>
							<td>&#8377; 54000.00/-</td>
							<td>
								<label class="switch">
									<input type="checkbox" checked="checked" value="4"/>
									<div class="slider"></div>
								</label>
							</td>
							<td>
								<a href="${contextRoot}/manage/4/product" class="btn btn-warning">
								<span class="glyphicon glyphicon-pencil"></span>
								</a>
							
							</td>
						</tr>
						<tr>
							<td>4</td>
							<td>
								<img class="adminDataTableImg" src="${contextRoot}/resources/images/PRDMNO123PQRX.jpg"
								alt="Macbook Pro"/>
							</td>
							<td>Macbook Pro</td>
							<td>3</td>
							<td>&#8377; 54000.00/-</td>
							<td>
								<label class="switch">
									<input type="checkbox" value="4"/>
									<div class="slider"></div>
								</label>
							</td>
							<td>
								<a href="${contextRoot}/manage/4/product" class="btn btn-warning">
								<span class="glyphicon glyphicon-pencil"></span>
								</a>
							
							</td>
						</tr>
					
					
					</tbody>

					<tfoot>
						<tr>
							<th>Id</th>
							<th>&#160;</th>
							<th>Name</th>
							<th>Qty. Avail</th>
							<th>Unit Price</th>
							<th>Activate</th>
							<th>Edit</th>
						</tr>
					</tfoot>


				</table>

			</div>
		</div>



	</div>
</div>

