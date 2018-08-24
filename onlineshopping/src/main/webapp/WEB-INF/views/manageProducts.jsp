<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

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
						action="${contextRoot}/manage/products"
						methods="POST"
						>
					
						<div class="form-group">
							<label class="control-label col-md-4">Name</label>
							<div class="col-md-8">
								<sf:input type="text" path="name" id="name" class="form-control"
									placeholder="Product Name" />
								<sf:errors path="name" cssClass="help-block" element="em"/>
								
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-md-4">Brand</label>
							<div class="col-md-8">
								<sf:input type="text" path="brand" id="brand" class="form-control"
									placeholder="Brand Name" /> 
								<sf:errors path="brand" cssClass="help-block" element="em"/>
								
									
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4">Description</label>
							<div class="col-md-8">
								<sf:textarea path="description" id="description" class="form-control"
									placeholder="Enter your description here!"></sf:textarea>
								<sf:errors path="description" cssClass="help-block" element="em"/>
								
								
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4">Unit Price</label>
							<div class="col-md-8">
								<sf:input type="number" path="unitPrice" id="unitPrice" class="form-control"
									placeholder="Enter Unit Price" />
								<sf:errors path="unitPrice" cssClass="help-block" element="em"/>
									
								
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4">Quantity</label>
							<div class="col-md-8">
								<sf:input type="number" path="quantity" id="quantity" class="form-control"
									placeholder="Enter Quantity" />
								
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4" for="categoryId">Category</label>
							<div class="col-md-8">
								<sf:select path="categoryId" id="categoryId" class="form-control"
								items="${categories}"
								itemLabel="name"
								itemValue="id"
								/>
							
										
																							
								</div>							
							</div>
						
					
						<div class="form-group">
							
							<div class="col-md-offset-4 col-md-4">
							
								<input type="submit" name="submit" id="submit" value="Submit" class="btn btn-primary"/>
								
								<sf:hidden path="id"/>
								<sf:hidden path="code"/>
								<sf:hidden path="supplierId"/>
								<sf:hidden path="active"/>
								<sf:hidden path="purchases"/>
								<sf:hidden path="views"/>
								
							</div>
						</div>						
			
					</sf:form>
				
				
				</div>
			</div>
		</div>
	</div>
</div>
				
				