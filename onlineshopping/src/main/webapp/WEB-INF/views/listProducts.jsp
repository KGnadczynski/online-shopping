<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">

	<div class="row">

		<div class="col-md-3">

			<%@include file="./shared/sidebar.jsp"%>

		</div>
		<div class="col-md-9">

			<div class="row">

				<div class="col-lg-12">
					<c:if test="${userClickAllProducts == true}">
						<script type="text/javascript">
							window.categoryId = ''; 
						</script>
						
						
						<ol class="breadcrumb">

							<li><a href="${contextRoot}/home">Home</a> &#160;</li>
							
							<li class="active">All Products</li>


						</ol>
					</c:if>
					
					<c:if test="${userClickCategoryProducts == true}">
					
						<script type="text/javascript">
							window.categoryId = '${category.id}'; 
						</script>
						
						<ol class="breadcrumb">

							<li><a href="${contextRoot}/home">Home</a> &#160;</li>
							<li class="active">Category &#160;</li>
							<li class="active">${category.name} &#160;</li>
							


						</ol>
					</c:if>

				</div>


			</div>


			<div class="row">
			
				<div class="col-xs-12">
				
				<table id="productListTable" class="table table-striped table-borderd">
				
					<thead>
					
							<tr>
								<th></th>
								<th>Name</th>
								<th>Brand</th>
								<th>Price</th>
								<th>Qty. Available</th>
								<th></th>
							</tr>	
					
					</thead>
					<tfoot>
					
							<tr>
								<th></th>
								<th>Name</th>
								<th>Brand</th>
								<th>Price</th>
								<th>Qty. Available</th>
								<th></th>
							</tr>	
					
					</tfoot>
				
				
				</table>
				
				</div>
			
			</div>

		</div>





	</div>



</div>