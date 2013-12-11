<footer id="footer">
        	<div class="footerInnerTop clearfix">
            	<div class="column">
                	<h3><?php echo $text_information; ?></h3>
                    <ul>
                        <?php foreach ($informations as $information): ?> 
                    	<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li> 
                        <?php endforeach;?>
                    </ul>
                </div>
                
                <div class="column">
                	<h3><?php echo $text_service; ?></h3>
                    <ul>
                    	<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></li>
                        <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
                    </ul>
                </div>
                
                <div class="column">
                	<h3><?php echo $text_account; ?></h3>
                    <ul>
                    	<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                        <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></a></li>
                    </ul>
                </div>
                
                <div class="column">
                	<p class="footAdress">Адрес:<?php echo $address ?> </p>
                    <p class="footMail"><?php echo $email ?></p>
                </div>
                
                <div class="column">
                	<p class="footPhone"><?php echo $telephone ?></p>
                </div>
            </div><!-- /footerInnerTop -->
        	
            <div class="footerInnerBottom">
            	<p>manypresents.ru (C) 2013</p>
            </div><!-- /footerBottom -->
        </footer>