$(function(){
	
	switch(menu) {
	
	
	case 'Contact us':
		$('#contact').addClass('active');
		break;
	case 'About us':
		$('#about').addClass('active');
		break;
	
	default:
		$('#home').addClass('active');
	break;
	}
		
});