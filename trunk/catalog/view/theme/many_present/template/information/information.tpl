    <?php echo $header ?>
    
    <div id="mainConent" class="width1200">
    
    	<div id="mainContentInner" class="clearfix">
            <!-- left column start -->
        	<?php echo $column_left?>
            <!-- column left end -->
            
            <!-- info_content start -->
        <div id="content" class="clearfix">
            <div class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb):?>
                    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
                <?php endforeach; ?>
            </div><!--/breadcrumb --> 
            <h1><?php echo $heading_title; ?></h1>
            
            <?php echo $description; ?>
            
            <div class="buttons">
                <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
            </div>
        
        </div><!--/content --> 
            <!-- info_content end -->
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
