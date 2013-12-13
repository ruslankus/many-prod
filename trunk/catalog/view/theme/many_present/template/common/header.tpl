<!doctype html>
<html class="no-js">
<head>
<meta charset="utf-8">
<?php if ($description): ?>
    <meta name="description" content="<?php echo $description; ?>" />
<?php endif; ?>

<?php if ($keywords): ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php endif; ?>

<?php foreach ($styles as $style): ?>
    <link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php endforeach; ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/many_present/css/bootstrap.css">

<link rel="stylesheet" type="text/css" href="catalog/view/theme/many_present/css/style.css">

<script src="catalog/view/theme/many_present/js/jquery-1.7.2.min.js"></script>

<script src="catalog/view/theme/many_present/js/modernizr.custom.44988.js"></script>
<script src="catalog/view/theme/many_present/js/colorbox/jquery.colorbox.js"></script>
<script src="catalog/view/theme/many_present/js/main.js"></script>
<?php foreach ($scripts as $script): ?>
    <script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php endforeach; ?>
<title><?php echo $title; ?></title>
</head>
<body>
	<header id="header" class="clearfix">
    	<div class="headerLeftBg clearfix">
        	<div class="headerRightBg">
           </div><!-- / headerRightbg -->
        </div><!-- / headerLeftBg -->
        
        <div class="headerInner">
        	<div class="headerContet width1200">
            	<div class="headerConentTop clearfix">
                
                    
        <?php if ($logo): ?>
            <div id="logo" class="headerBlocks logo">
                <?php if ($home == $og_url): ?>
                    <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" />
                <?php else: ?>
                    <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a>
                <?php endif; ?>
            </div><!-- /logo -->
        <?php endif; ?>
                
                	
                    
                    <?php echo $cart; ?> 
                    
                    <div class="phoneNumber">
                    	<p>(495) 933-38-26</p>
                    </div>
                </div><!-- /contentTop -->
                
                <div class="headerContentBottom">
                    <div id="slogan">                   
                    </div>
                	<div id="search">
                    	<div class="button-search"></div>
                        <input class="inpSearch" type="text" placeholder="Найти.." />
                    </div><!-- /search -->
                    
                    <div id="welcome">
                    <?php if (!$logged) : ?>
                        <p>Добро пожаловать! <?php echo $text_welcome; ?></p>
                    <?php else : ?>
                        <p><?php echo $text_logged; ?></p>
                    <?php endif;?>
                    </div><!-- /welcome -->
                </div>
            
        	</div><!-- /headerContetnt -->
        </div><!-- /headerInner -->
    </header>