<?php echo $header ?>

<div id="mainConent" class="width1200">
    
    	<div id="mainContentInner" class="clearfix">
            <!-- left column start -->
        	<?php echo $column_left?>
            <!-- column left end -->
            
            <!-- content_category start -->
      <div id="content" class="clearfix">
        <div class="breadcrumb">
            <?php foreach ($breadcrumbs as $breadcrumb):?>
                <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
            <?php endforeach; ?>
        </div><!--/breadcrumb -->     
        <h1><?php echo $heading_title; ?></h1>
        
        <?php if ($thumb || $description): ?>
        <div class="category-info clearfix">
            <?php if ($thumb): ?>
                <div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
            <?php endif; ?>
                
            <?php if ($description): ?>
                <?php echo $description; ?>
            <?php endif; ?>
        </div><!-- / cat-info -->
    <?php endif; ?>
    
    <?php if ($categories):?>
  <h2><?php echo $text_refine; ?></h2>
  <div class="category-list clearfix">
    <?php if (count($categories) <= 5): ?>
        <ul class="clearfix">
          <?php foreach ($categories as $category): ?>
          <li><a href="<?php echo $category['href']; ?>">
          <?php if($category['thumb']) ?>
            <img src="<?php echo $category['thumb']; ?>">
          <?php ?>
          <?php echo $category['name']; ?></a></li>
          <?php endforeach; ?>
        </ul>
        <?php else: ?>
        <?php for ($i = 0; $i < count($categories);): ?>
            <ul>
              <?php $j = $i + ceil(count($categories) / 4); ?>
              <?php for (; $i < $j; $i++): ?>
                  <?php if (isset($categories[$i])): ?>
                    <li><a href="<?php echo $categories[$i]['href']; ?>"><img src="<?php echo $categories[$i]['thumb']; ?>"><span><?php echo $categories[$i]['name']; ?></span></a></li>
                  <?php endif; ?>
              <?php endfor; ?>
            </ul>
        <?php endfor; ?>
    <?php endif; ?>
  </div><!-- / category-list -->
<?php endif; ?>

<?php if ($products): ?>

<div class="product-filter clearfix">

    <div class="limit"><span><?php echo $text_limit; ?></span>
      <select onchange="location = this.value;">
        <?php foreach ($limits as $limits): ?>
            <?php if ($limits['value'] == $limit): ?>
                <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
            <?php else:?>
                <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
            <?php endif; ?>
        <?php endforeach; ?>
      </select>
    </div><!--/limit -->  

    <div class="sort"><span><?php echo $text_sort; ?></span>
      <select onchange="location = this.value;">
        <?php foreach ($sorts as $sorts): ?>
            <?php if ($sorts['value'] == $sort . '-' . $order): ?>
                <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
            <?php else: ?>
                <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
            <?php endif; ?>
        <?php endforeach;?>
      </select>
    </div><!--/sort -->

</div><!-- /product-filter -->

 <div class="product-grid clearfix">
 
    <?php foreach ($products as $product): ?>
        <div class="new_item ">
            <?php if($product['thumb']):?>
        	<div class="image">
            	<a href="<?php echo $product['href']?>" title="<?php echo $product['name']; ?>"><img src="<?php echo $product['thumb']; ?>"  alt="<?php echo $product['name']; ?>" /></img></a>
            </div>
            <?php endif;?>
            <div class="description name">
            	<p><a href="<?php echo $product['href']?>"><?php echo $product['name']; ?></a></p>
            </div>
            <div class="price"><?php echo $product['price']; ?></div>
            <div class="cart">
            	<input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>',<?php echo $product['min_quant']?>,this);" >
            </div>
        </div><!-- /new_item -->
    <?php endforeach; ?>
 
 </div><!-- /product-grid -->
<div class="pagination"><?php echo $pagination; ?></div>  
<?php endif; ?>  

<?php if (!$categories && !$products): ?>
  <p></p><?php echo $text_empty; ?></p>
  <div class="buttons clearfix">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
<?php endif; ?>            
            
            
            
     </div><!--/content -->     
            <!-- content_categry_end -->
            
            
        </div><!-- /mainContentInner -->
        
        <!-- footer start -->
        <?php echo $footer?>
        <!-- /footer end -->
        
    </div><!--/mainConent -->
    
    <!-- content boottom start -->
   <?php echo $content_bottom?>
    <!-- content boottom end -->