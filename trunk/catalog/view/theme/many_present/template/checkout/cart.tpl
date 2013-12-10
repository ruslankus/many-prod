<?php echo $header; ?>

    <div id="mainConent" class="width1200">
    
    	<div id="mainContentInner" class="clearfix">
            <!-- left column start -->
        	<?php echo $column_left?>
            <!-- column left end -->
            
            <!-- cart_top start -->
             <div id="content" class="clearfix">
                
             
                <div class="breadcrumb">
                    <?php foreach ($breadcrumbs as $breadcrumb):?>
                        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
                    <?php endforeach; ?>
                </div><!--/breadcrumb -->  
           
                <h1><?php echo $heading_title; ?>
                <?php if ($weight):?>
                    &nbsp;(<?php echo $weight; ?>)
                <?php endif ?>
                </h1>
                
                <!-- errors sections  start--->
                
                <?php if ($error_warning):?>
                    <div class="warning"><?php echo $error_warning; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
                <?php endif; ?>
                
                
                <!-- errors sections  end--->
                
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                    <table border="0" cellspacing="0" id="cartTable">
                        <thead>
                        	<tr>
                            	<td class="image">Фото</td>
                                <td class="name">Наименование товара</td>
                                <td class="model">Модель</td>
                                <td class="quantity">Кол-во</td>
                                <td class="price">Цена</td>
                                <td class="total">Итого</td>
                            </tr>
                        </thead>
                        <tbody>
                         <?php foreach ($products as $product):?> 
                            <tr>
                            	<td class="image">
                                <?php if ($product['thumb']):?>
                                    <a href="<?php echo $product['href']; ?>">
                                        <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
                                    </a>
                                <?php endif; ?>
                                </td>
                            	<td class="name">
                                    <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                    <?php if (!$product['stock']): ?>
                                        <span class="stock">***</span>
                                    <?php endif; ?>
                                </td>
                            	<td class="model" ><?php echo $product['model']; ?></td>
                            	<td class="quantity">
                                	<input type="text" size="1" value="<?php echo $product['quantity']; ?>" name="quantity[<?php echo $product['key']; ?>]">
                                    <input type="image" title="Применить" alt="Применить" src="catalog/view/theme/default/image/update.png" >
                                    <a href="<?php echo $product['remove']; ?>">
                                    	<img src="catalog/view/theme/default/image/remove.png" width="14" height="15" />
                                    </a>
                                </td>
                            	<td class="price"><?php echo $product['price']; ?></td>
                            	<td class="total"><?php echo $product['total']; ?></td>
                            </tr>                     
                        
                        <?php endforeach;?>      
                        </tbody>
                    </table>
                </form> 
                
               <div class="cart-total clearfix">
            
                <table id="table_total">
                    <tbody>
                     <?php foreach ($totals as $total):?>    
                        <tr>
                            <td class="right"><?php echo $total['title']; ?>:</td>
                            <td class="right"><?php echo $total['text']; ?></td>
                        </tr>
                     <?php endforeach; ?>              
                    </tbody>
                </table>
            
            </div><!-- /cart-total -->
            
            <div class="cart_buttons">
                <div class="right">
                    <a class="button" href="<?php echo $checkout; ?>"><?php echo $button_checkout; ?></a>
                </div> 
                
                <div class="center">
                	<a class="button" href="<?php echo $continue; ?>"><?php echo $button_shopping; ?></a>
                </div>
            
            </div><!-- /buttons -->
            
        </div><!-- content ->
            <!-- cart_top end -->
            
            
    </div><!-- /mainContentInner -->
        
        <!-- footer start -->
        <?php echo $footer?>
        <!-- /footer end -->
        
    </div><!--/mainConent -->
    
    <!-- content boottom start -->
   <?php echo $content_bottom?>
    <!-- content boottom end -->
</body>
</html>