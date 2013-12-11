<?php echo $header ?>

<div id="mainConent" class="width1200">
    
	<div id="mainContentInner" class="clearfix">
        <!-- left column start -->
    	<?php echo $column_left?>
        <!-- column left end -->
        
        <!-- content_produkt_start -->
            
      <div id="content" class="clearfix">
        <div class="breadcrumb">
            <?php foreach ($breadcrumbs as $breadcrumb):?>
                <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
            <?php endforeach; ?>
        </div><!--/breadcrumb -->     
        
        <div class="product-info clearfix">
             <?php if ($thumb || $images):?> 
            <div class="left">
                <?php if ($thumb): ?> 
                	<div class="image">
                    	<a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" data-lightbox="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" alt=""  width="228px"/></a>
                    </div><!-- /image -->
                <?php endif; ?>
                <?php if ($images): ?>
                <div class="image-additional">
                        <a href="<?php echo $popup; ?>"><img src="<?php echo $thumb; ?>" width="74px" /></a>
                    <?php foreach($images as $image):?>
                        <a href="<?php echo $image['popup']; ?>"><img src="<?php echo $image['thumb'];  ?>" width="74px" /></a>
                    <?php endforeach;?>
                </div><!-- /image-additional -->
                <?php endif;?> 
            </div><!-- /left -->
            <?php endif;?>
            
        <div class="right">
        	<h1><?php echo $heading_title; ?></h1>
        	<div class="description">
            	<span><?php echo $text_stock; ?></span>
                 <?php echo $stock; ?><br>
                 
                <b><?php echo $text_size . $length_preffix; ?></b><br />
                <?php if($length > 0):?>
                    длина: <?php echo number_format($length,1) ?><br/>
                <?php endif;?>
                
                <?php if($width > 0):?>
                 ширина: <?php echo number_format($width,1)?><br/>
                <?php endif;?>
                
                <?php if($height > 0):?>
                    высота:  <?php echo number_format($height,1)?><br/>
                <?php endif;?> 
            </div><!--/description -->
            <div class="prod_price">
            	<strong><?php echo $text_price; ?></strong><?php echo $price; ?>  <br/>
                <?php if ($tax): ?> 
                    <span class="price-tax"><?php echo $text_tax; ?>  <?php echo $tax; ?></span>
                <?php endif;?>
            </div><!-- /price -->
            <div class="cart">
            	<div>
            		<?php echo $text_qty; ?> 
                    <input type="text" name="quantity" size="2" value="<?php echo $minimum; ?>" /> 
                    <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" /> 
                    <input type="button" class="button" id="button-cart" value="<?php echo $button_cart; ?>">
                </div>
            </div><!-- /cart -->
        </div><!-- /right -->
            
        </div><!-- /product-info -->    
        <h2><?php echo $tab_description; ?></h2>
        <div class="tab-description">
            <p><?php echo $description; ?></p>
        </div><!-- /tab-description--> 
        
        <?php if ($products):?> 
        <h2>Похожие товары</h2>
        <div id="tab-related">
            <div class="box-product">
            <?php foreach ($products as $product):?> 
                
                <div class="new_item ">
                    <div class="image">
                        <img src="<?php echo $product['thumb']; ?>" alt="" />
                    </div>
                    <div class="description name">
                        <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                    </div>
                    <?php if ($product['price']):?> 
                        <div class="price"><?php echo $product['price']; ?></div>
                    <?php endif;?>
                    <div class="cart">
                        <input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>',1,this);" >
                    </div>
                </div><!-- /new_item -->
                
            <?php endforeach;?>
            </div><!--/box-product -->
         </div><!-- /tab-related -->
        <?php endif;?>
           
     </div><!--/content -->     
     <!-- content_produkt_end -->
            
            
        </div><!-- /mainContentInner -->
        

<script type="text/javascript"><!--
$('#button-cart').bind('click', function() {
    
    // получаем родительский элимент
    parentObj = $(this).parent().parent().parent().parent();
    
    // получаем картинку
	img = $(parentObj).find('.left .image  a > img');
    
    // получаем координаты картинки
	imgTop = img.offset().top;
	imgLeft = img.offset().left;
	// получаем линк картинки	
	imgSource = $(img).attr('src');
	//создаем копию картинки
    imgCopy = "<img  width=" + "'220'"  + " src='" + imgSource + "'" + 'id="temp_cart_animate" ' + 'style="z-index:2000; position:absolute; top:' + imgTop +'px; left:'+ imgLeft + 'px; "' + ">";
    
    
      
    
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('.product-info .cart input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
			
			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						$('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
					}
				}
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
                
                //alert(prodName + '  успешно добавлен(а) в корзину');
				
				//$('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
		}
	});
});
//--></script>
        
        
        <!-- footer start -->
        <?php echo $footer?>
        <!-- /footer end -->
        
    </div><!--/mainConent -->
    
    <!-- content boottom start -->
   <?php echo $content_bottom?>
    <!-- content boottom end -->