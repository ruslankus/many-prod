<div class="box" id="new_items">
	<div class="box-heading">Новинки</div>	
    
        <div class="new_items_wrapper box-product clearfix">
    	<?php foreach ($products as $product): ?>
            <div class="new_item ">
                <?php if($product['thumb']):?>
            	<div class="image">
                	<a href="<?php echo $product['href']?>"><img src="<?php echo $product['thumb']; ?>"  alt="" /></a>
                </div>
                <?php endif;?>
                <div class="description name">
                	<p><a href="<?php echo $product['href']?>"><?php echo $product['name']; ?></a></p>
                </div>
                <div class="price"><?php echo $product['price']; ?>
                </div>
                <div class="cart">
                	<input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>',<?php echo $product['min_quant']?>,this);" >
                </div>
            </div><!-- /new_item -->
        <?php endforeach; ?>
        
                              
    </div><!-- /block_wrapper -->
</div><!-- / new_items -->