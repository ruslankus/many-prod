<div class="box">
	<div class="box-heading">Каталог товаров</div>
    <div class="box-content">
    	<ul class="box-category">
         <?php foreach ($categories as $category): ?> 
            <?php if ($category['category_id'] == $category_id): ?> 
                <li><a class="active <?php echo(($category['children'])?'active_child':""); ?> " href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                <?php if ($category['children']): ?> 
                    <ul>
                        <?php foreach ($category['children'] as $child): ?>
                            <li>
                                <?php if ($child['category_id'] == $child_id):?>
                                    <a href="<?php echo $child['href']; ?>" class="active"> - <?php echo $child['name']; ?></a>
                                <?php else: ?>
                                    <a href="<?php echo $child['href']; ?>"> - <?php echo $child['name']; ?></a>
                                <?php endif; ?>
                            </li> 
                        <?php endforeach;?> 
                    </ul>
                <?php endif;  ?>
                </li>
            <?php else:?>
                <li><a <?php echo(($category['children'])? "class='child'" : ""); ?> href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php endif; ?>
            
         <?php endforeach;?>
     
        </ul>
    </div><!--/box-content -->
</div><!-- /box -->