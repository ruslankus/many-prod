<div class="box" id="bestsellers">
    <div class="box-heading"><?php echo $heading_title; ?></div>
    <?php foreach ($products as $product):?> 
    <div class="product clearfix">
        <?php if ($product['thumb']): ?> 
    	<div class="left">
        	<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" width="55" height="55" alt="<?php echo $product['name']; ?>"/></a>
        </div><!-- /left-->
        <?php endif;?>
        <div class="right">
        	<p><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></p>
            <?php if ($product['price']):?> 
            <p class="price"><?php echo $product['price']; ?></p>
            <?php endif;?>
        </div><!-- right -->
    </div><!-- /product -->
    <?php endforeach;?>
 </div><!--/ bestsellers -->