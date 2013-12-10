    <?php echo $header ?>
    
    <div id="mainConent" class="width1200">
    
    	<div id="mainContentInner" class="clearfix">
            <!-- left column start -->
        	<?php echo $column_left?>
            <!-- column left end -->
            
         <!-- login_content_top start -->
         <div id="content">
             <div class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb):?>
                    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
                <?php endforeach; ?>
            </div><!--/breadcrumb -->  
            <?php if ($error_warning): ?>
                <div class="warning"><?php echo $error_warning; ?></div>
            <?php endif; ?>
             
           
                
            <div class="login-content clearfix">    
                
                <div class="left">
                	<h2><?php echo $text_new_customer; ?></h2>
                    <div class="account_content">
                        <h3><?php echo $text_register; ?></h3>
                        <p><?php echo $text_register_account; ?></p>
                        <a class="button" href="<?php echo $register; ?>"><?php echo $button_continue; ?></a>
                    </div><!-- /account_content -->
                </div><!--/left -->   
            
                
                <div class="right">
                	<h2><?php echo $text_returning_customer; ?></h2>
                    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data"> 
                        <div class="account_content">
                            <p><?php echo $text_i_am_returning_customer; ?></p>
                            <b><?php echo $entry_email; ?></b><br>
                            <input type="text" value=<?php echo $email; ?>"" name="email">
                            <br>
                            <br>
                            <b><?php echo $entry_password; ?></b><br>
                            <input type="password" value="<?php echo $password; ?>" name="password">
                            
                            <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a><br>
                            <br>
                            <input type="submit" class="button" value="<?php echo $button_login; ?>">
                        </div><!-- /account_content -->
                    </form>
                </div><!-- /right -->
            
            
            
            </div><!-- /login-content -->
        </div><!--/content -->
        <!-- login_top end -->
        </div><!-- /mainContentInner -->
        
        <!-- footer start -->
        <?php echo $footer?>
        <!-- /footer end -->
        
    </div><!--/mainConent -->
    
    <!-- content boottom start -->
   <?php echo $content_bottom?>
    <!-- content boottom end -->
<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#login').submit();
	}
});
//--></script>     
    
</body>
</html>
