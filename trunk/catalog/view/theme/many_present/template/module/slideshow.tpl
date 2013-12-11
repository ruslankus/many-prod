<div class="fullwidthbanner-container hero_banner slider">
    <div class="slider-content">
        <?php foreach ($banners as $banner): ?>
        <div class="slide">
            <a href="<?php echo $banner['link'] ?>"><img src="<?php echo $banner['image']; ?>"/></a>
        </div>
        <?php endforeach; ?> 
    </div><!-- /slider-content-->
</div><!-- /fullwidthbanner-container -->