<div class="fullwidthbanner-container hero_banner slider">
    <div class="slider-content">
        <?php foreach ($banners as $banner): ?>
        <div class="slide">
            <img src="<?php echo $banner['image']; ?>"/>
        </div>
        <?php endforeach; ?> 
    </div><!-- /slider-content-->
</div><!-- /fullwidthbanner-container -->