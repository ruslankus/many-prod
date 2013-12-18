    <?php echo $header ?>
    
    <div id="mainConent" class="width1200">
    
    	<div id="mainContentInner" class="clearfix">
            <!-- left column start -->
        	<?php echo $column_left?>
            <!-- column left end -->
            
            <!-- content_search start -->
             <div id="content" class="clearfix">
            
                <div class="breadcrumb">
                    <?php foreach ($breadcrumbs as $breadcrumb):?>
                        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
                    <?php endforeach; ?>
                </div><!--/breadcrumb --> 
                
               <h1><?php echo $heading_title; ?></h1> 
               <b><?php echo $text_critea; ?></b>
               
            <div class="searchArea">   
                <p><?php echo $entry_search; ?>
                <?php if ($search): ?>
                    <input type="text" name="search"    value="<?php echo $search; ?>" />
                <?php else: ?>
                    <input type="text" name="search"     value="<?php echo $search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '000000'" style="color: #999;" />
                <?php endif; ?>
                
                <select name="category_id">
                    <option value="0"><?php echo $text_category; ?></option>
                    <?php foreach ($categories as $category_1): ?>
                    
                        <?php if ($category_1['category_id'] == $category_id): ?>
                        <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
                        <?php  else:?>
                        <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
                        <?php endif; ?>
                    
                        <?php foreach ($category_1['children'] as $category_2): ?>
                            <?php if ($category_2['category_id'] == $category_id): ?>
                            <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
                            <?php else: ?>
                            <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
                            <?php endif; ?>
                        
                                <?php foreach ($category_2['children'] as $category_3): ?>
                                    <?php if ($category_3['category_id'] == $category_id): ?>
                                    <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
                                    <?php else: ?>
                                    <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
                                    <?php endif; ?>
                                <?php endforeach; ?>
                                
                        <?php endforeach ?>
                    <?php endforeach; ?>
                </select>
                
                    <?php if ($sub_category): ?>
                        <input type="checkbox" name="sub_category" value="1" id="sub_category" checked="checked" />
                    <?php else:?>
                        <input type="checkbox" name="sub_category" value="1" id="sub_category" />
                    <?php endif; ?>
                    
                    <label for="sub_category"><?php echo $text_sub_category; ?></label>     
                            
                </p>
                
                <?php if ($description): ?>
                    <input type="checkbox" name="description" value="1" id="description" checked="checked" />
                <?php else: ?>
                    <input type="checkbox" name="description" value="1" id="description" />
                <?php endif; ?>
                
                <label for="description"><?php echo $entry_description; ?></label> 
                
            </div> <!-- /searchArea -->
            
            <div class="buttons clearfix">
                <div class="right">
                    <input type="button" value="<?php echo $button_search; ?>" id="button-search" class="button" />
                </div>
            </div>
            
            <h2><?php echo $text_search; ?></h2>
            
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
                            	<a href="<?php echo $product['href']?>" title="<?php echo $product['name']; ?>"><img src="<?php echo $product['thumb']; ?>"  alt="" /></img></a>
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
                
                <?php else: ?>
                    <div class="search_info"><?php echo $text_empty; ?></div>                 
                <?php endif;?>  
                
               
               
            
            
            </div><!--/content -->
            <!-- content_search end -->
        </div><!-- /mainContentInner -->
        
<script type="text/javascript"><!--
$('#content input[name=\'search\']').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').bind('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').attr('disabled', 'disabled');
		$('input[name=\'sub_category\']').removeAttr('checked');
	} else {
		$('input[name=\'sub_category\']').removeAttr('disabled');
	}
});

$('select[name=\'category_id\']').trigger('change');

$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';
	
	var search = $('#content input[name=\'search\']').attr('value');
	
	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').attr('value');
	
	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}
	
	var sub_category = $('#content input[name=\'sub_category\']:checked').attr('value');
	
	if (sub_category) {
		url += '&sub_category=true';
	}
		
	var filter_description = $('#content input[name=\'description\']:checked').attr('value');
	
	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});


//--></script>
        
        <!-- footer start -->
        <?php echo $footer?>
        <!-- /footer end -->
        
    </div><!--/mainConent -->
    
    <!-- content boottom start -->
   <?php echo $content_bottom?>
    <!-- content boottom end -->
</body>
</html>