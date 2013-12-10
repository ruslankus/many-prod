// JavaScript Document
$(document).ready(function(e) {
    
	/*
	$("#cart").hover(function(){
		
		$('#cart').load('index.php?route=module/cart #cart > *');
		$(this).find('.content').show();	
	},function(){
		$(this).find('.content').hide();
	});
	*/
	
	
	/* Ajax Cart */
	$('#cart > .heading a').live('click', function() {
		$('#cart').addClass('cart_active');
		$('#cart').load('index.php?route=module/cart #cart > *');
		$('#cart').live('mouseleave', function() {
	$(this).removeClass('cart_active');
		});
	}); 
	
	
	/* кнопка закрыть */
	$('.success img, .warning img, .attention img, .information img').live('click', function() {
		$(this).parent().fadeOut('slow', function() {
			$(this).remove();
		});
	}); 
	
	
	//$('#carusel ul').jcarousel({ vertical: false, visible: 5, scroll: 3 });
	
	$('#etiketka a').click(function(e) {
        
		var obj  = $('.eventInner');
		
		
		if($(obj).hasClass('.hide') ){
			
			obj.removeClass('.hide');
		}
		else{
			$(obj).addClass('.hide');
		}
		
		return false;
		
    });

	
	
	
	
	
	//$('#carusel ul').jcarousel({ vertical: false, visible: 5, scroll: 3 });
	
	$('#etiketka a').click(function(e) {
        
		var obj  = $('.eventInner');
		if(obj.hasClass('hide')){
			obj.removeClass('hide')
		}
		else{
			obj.addClass('hide');
		}
		
		return false;
		
    });
	
	$("#event").mouseleave(function(e) {
        $('.eventInner').addClass('hide');
		
		return false;
    });

	
});


function getURLVar(key) {
	var value = [];
	var query = String(document.location).split('?');
	if (query[1]) {
		var part = query[1].split('&');
		
		for (i = 0; i < part.length; i++) {
			var data = part[i].split('=');
			
			if (data[0] && data[1]) {
				value[data[0]] = data[1];
			}
		}// end for
		
		if (value[key]) {
			return value[key];
		} else {
			return '';
		}
	}// end if
}// end getURLVar 


function addToCart(product_id, quantity,obj) {
	//console.log(product_id,quantity,obj);
	
	quantity = typeof(quantity) != 'undefined' ? quantity : 1;
	//получаем родительский элемент
	parentObj = $(obj).parent().parent();
	//console.log(parentObj);
	
	// получаем нзавание продукта
	//prodName = $(parentObj).find('.name p > a').html();
	
	// получаем картинку
	img = $(parentObj).find('.image  a > img');
	//console.log(img);
	
	// получаем координаты картинки
	imgTop = img.offset().top;
	imgLeft = img.offset().left;
	// получаем линк картинки	
	imgSource = $(img).attr('src');
	//создаем копию картинки
    imgCopy = "<img  src='" + imgSource + "'" + 'id="temp_cart_animate" ' + 'style="z-index:2000; position:absolute; top:' + imgTop +'px; left:'+ imgLeft + 'px; "' + ">";
	
	quantity = typeof(quantity) != 'undefined' ? quantity : 1;
	
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: 'product_id=' + product_id + '&quantity=' + quantity,
		dataType: 'json',
		success: function(json) {
			
			$('.success, .warning, .attention, .information, .error').remove();
			
			if (json['redirect']) {
				location = json['redirect'];
			}
			
			if (json['success']) {
				
				
				
				//$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
				//$('.success').fadeIn('slow');
				// наша копия ожила
				$(imgCopy).prependTo("body");
				// и палетели
				$('#temp_cart_animate').animate(
				{
					top: $(window).scrollTop(),
					left: $(".headerConentTop").width()
					//right:1000px;
				},
				700,
				function() {$('#temp_cart_animate').remove();});
				
				
				$('#cart-total').html(json['total']);
				$('#cart').load('index.php?route=module/cart #cart > *');
				//$('html, body').animate({ scrollTop: 0 }, 'slow');
				//alert(prodName + ' добавлен в корзину');
			}
		}
	});
}// end  addToCart

function flyToCart(product_id, quantity,obj) {

	quantity = typeof(quantity) != 'undefined' ? quantity : 1;
	
	//получаем родительский элемент
	parentObj = $(obj).parent().parent();
	
	// получаем картинку
	img = $(parentObj).find('.image > img');
	
	// получаем координаты картинки
	imgTop = img.offset().top;
	imgLeft = img.offset().left;
	
	
	
	imgSource = $(img).attr('src');
	
	//создаем копию картинки
    imgCopy = "<img  src='" + imgSource + "'" + 'id="temp_cart_animate" ' + 'style="z-index:2000; position:absolute; top:' + imgTop +'px; left:'+ imgLeft + 'px; "' + ">";
	
    console.log(imgTop,imgLeft,imgCopy);
		
	$(imgCopy).prependTo("body");
	
    $('#temp_cart_animate').animate(
    {
        top: $(window).scrollTop(),
        left: $(".headerConentTop").width()
		//right:1000px;
    },
    700,
    function() {$('#temp_cart_animate').remove();});
	
	
	
	
}// end flyToCart;
