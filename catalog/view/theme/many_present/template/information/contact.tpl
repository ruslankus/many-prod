    <?php echo $header ?>
    
    <div id="mainConent" class="width1200">
    
    	<div id="mainContentInner" class="clearfix">
            <!-- left column start -->
        	<?php echo $column_left?>
            <!-- column left end -->
            
            <!-- contact_content start -->
        <div id="content" class="clearfix">
            <div class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb):?>
                    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
                <?php endforeach; ?>
            </div><!--/breadcrumb --> 
            <h1 style="display: none;"><?php echo $heading_title; ?></h1>
            
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                 <div class="contact-info">
                    <h2><?php echo $text_location; ?></h2> 
                    <div class="contact_content clearfix">
                        <div class="left">
                        	<b><?php echo $text_address; ?></b><br>
                            <?php echo $store; ?><br>
                            <?php echo $address; ?>
                        </div><!-- /left -->
                        <div class="right">
                        	<b>Телефон:</b><br>
                        	123456789<br>
                        	<br>
                        </div><!--/right -->
                    </div><!-- /contact_content -->
                    
                     <h2><?php echo $text_contact; ?></h2>
                     <div class="contact_content">
                        <?php echo $entry_name; ?><br />
                        <input type="text" name="name" value="<?php echo $name; ?>" />
                        <br />
                        <?php if ($error_name):?>
                            <span class="error"><?php echo $error_name; ?></span>
                        <?php endif ?>
                        <br />
                        <?php echo $entry_email; ?><br />
                        <input type="text" name="email" value="<?php echo $email; ?>" />
                        <br />
                        <?php if ($error_email): ?>
                        <span class="error"><?php echo $error_email; ?></span>
                        <?php endif; ?>
                        
                        <br />
                        <?php echo $entry_enquiry; ?><br />
                        <textarea name="enquiry" cols="40" rows="10" style="width: 99%;"><?php echo $enquiry; ?></textarea>
                        <br />
                        <?php if ($error_enquiry): ?>
                            <span class="error"><?php echo $error_enquiry; ?></span>
                        <?php endif; ?>
                        
                        <br />
                        <?php echo $entry_captcha; ?><br />
                        <input type="text" name="captcha" value="<?php echo $captcha; ?>" />
                        <br />   
                        <img src="index.php?route=information/contact/captcha" alt="" />
                        <?php if ($error_captcha) { ?>
                            <span class="error"><?php echo $error_captcha; ?></span>
                        <?php } ?> 
                        
                     </div><!-- /contact_content -->
                     
                    <div class="buttons">
                        <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="button" /></div>
                    </div><!--/buttons --> 
                     
                </div><!--/contact-info-->
            </form>
        </div><!--/content --> 
            <!-- contact_content end -->
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
