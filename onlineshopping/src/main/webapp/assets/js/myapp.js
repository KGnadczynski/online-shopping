$(function(){
	
	switch(menu) {
	
	
	case 'Contact us':
		$('#contact').addClass('active');
		break;
	case 'About us':
		$('#about').addClass('active');
		break;
	case 'All Products':
		$('#listProducts').addClass('active');
		break;
	case 'Manage Products':
		$('#manageProducts').addClass('active');
		break;	
	default:
		if(menu == "Home") break;
		$('#listProducts').addClass('active');
		$('#a_'+menu).addClass('active');
	break;
	}
		
	
	
	
	var $table = $('#productListTable');
	
	if($table.length) {
		//console.log('Inside the table!');
		
		var jsonUrl = '';
		if(window.categoryId == '') {
			jsonUrl = window.contextRoot + '/json/data/all/products';
		}
		else {
			jsonUrl = window.contextRoot + '/json/data/category/'+ window.categoryId +'/products';
		}
		
		$table.DataTable({
			
			lengthMenu: [[3,5,10,-1], ['3 Records', '5 Records', '10 Records', 'ALL']],
			pageLength: 5,
			ajax:{
				url: jsonUrl,
				dataSrc: ''
			},
			columns: [
				{
					data: 'code',
					mRender: function(data, type, row) {
						return '<img src="' + window.contextRoot
						+ '/resources/images/' + data
						+ '.jpg" class="dataTableImg"/>';
					}
				},
				{
					data: 'name'
				},
				{
					data: 'brand'
				},
				{
					data: 'unitPrice',
					mRender: function(data, type, row) {
						return '&#8377; ' + data
					}
				},
				{
					data: 'quantity',
					mRender: function(data, type, row) {
						if(data<1) {
							return '<p>Out of stock!</p>';
						}
						return data;
					}
				},
				{
					data: 'id',
					bSortable: false,
					mRender: function(data, type, row){
						
						var str = '';
						str += '<a href="'+window.contextRoot+ '/show/'+data+'/product">View</a><br>';
						
						if(row.quantity<1) {
							str += ' ';
							
						}
						else {
							str += '<a href="'+window.contextRoot+ '/cart/add/'+data+'/product">Add to cart</a>';
						}
						
						
						return str;
						
					}
				}
				
			]
		});
	}
	
	var $alert = $('alert');
	
	if($alert.length) {
		
		setTimeout(function(){
			$alert.fadeOut('slow');
		}, 3000)
	}
	
	
});