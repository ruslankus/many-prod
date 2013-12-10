      <div id="cart" class="clearfix">
                    	<div class="heading">
                        	<a href="#" title="<?php echo $heading_title; ?>">
                            	<span id="cart-total"><?php echo $text_items; ?></span>
                            </a>
                        </div><!-- heading -->
                        
                        <div class="content clearfix">
                        <?php if ($products || $vouchers):?> 
                        	<ul class="items-in-shopping-cart">
                                <?php foreach ($products as $product):?> 
                            	<li>
                                	<div class="image">
                                        <?php if ($product['thumb']):?>
                                    	   <a href="<?php echo $product['href']; ?>"  title="<?php echo $product['name']; ?>"><img src="<?php echo $product['thumb']; ?>" width="43" height="45" alt="<?php echo $product['name']; ?>" /></a>
                                        <?php endif;?>
                                    </div><!-- /image-->
                                    <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div><!-- /name -->
                                    <div class="quantity">x&nbsp;<?php echo $product['quantity']; ?></div><!-- /quantity -->
                                    <div class="price"><?php echo $product['total']; ?></div><!-- /price -->
                                    <div class="close"><a title="<?php echo $button_remove; ?>" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $product['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $product['key']; ?>' + ' #cart > *');"></a></div><!-- /close -->
                                </li>
                                <?php endforeach;?>
                            </ul><!-- /items-in-shopping-cart -->
                            <div class="saldo-action">
                            	<div class="saldo">
                                	<ul>
                                        <?php foreach ($totals as $total):?> 
                                    	   <li><p><?php echo $total['title']; ?></p><span><?php echo $total['text']; ?></span></li>
                                    	<?php endforeach;?>
                                    </ul>
                                </div><!-- /saldo -->
                                <div class="action">
                                	<a href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a>
                                    |
                                   <a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a> 
                                </div><!-- /action -->
                            </div><!-- /saldo-action -->
                          
                        <?php else:?>
                            <div class="empty"><?php echo $text_empty; ?></div>                        
                        <?php endif;?>   
                        </div><!-- /content -->
                        
                        
                       
                        
                        
                    </div><!-- /cart -->