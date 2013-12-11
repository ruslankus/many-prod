<div class="eventInner hide width1200">
		<div id="etiketka">
        <a href="#">Праздники</a>
        </div><!-- /etiketka -->
        <div id="carusel">
            <ul class="jcarousel-skin-opencart">
            <?php foreach ($banners as $banner): ?> 
                <li><div class="innerCarusel"><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" /></a><a class="eventLinks" href="<?php echo $banner['link']; ?>"><?php echo $banner['title']; ?></a></div></li>
            <?php endforeach;?>    
                           
            </ul>
    </div><!-- /carusel -->
    <script type="text/javascript"><!--
$(document).ready(function() {
	$('#carusel ul').jcarousel({ vertical: false, visible: 5, scroll: 3 });
	
	
});
--></script>
</div><!-- /eventInner -->