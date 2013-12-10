// JavaScript Document
$(document).ready(function(e) {
    
	$('.left .image-additional a').click(function(e) {
		
		var src = $(this).attr('href');
		console.log(src);
		$('.product-info .left .image a img').attr('src',src);
		$('.product-info .left .image a').attr('href',src);
		//var pos = $('.img_thumb a:first-child');
		//$.scrollTo(pos);
		return false;
		
		
		
		
    });
	
});