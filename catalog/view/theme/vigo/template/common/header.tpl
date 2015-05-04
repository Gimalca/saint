<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>"><head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
                                                                                        

<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<!--<link href='http://fonts.googleapis.com/css?family=Scada' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Archivo+Narrow' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Source+Code+Pro' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>
-->

 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/mj-template.css" />
<!--VIGO vigo css Start-->
<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/design_default.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/style.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/reaponsive_767.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/reaponsive_991.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/jquery.akordian.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/jquery.bxslider.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/selectbox.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/settings.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/etalage.css" media="all" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/styles-noroute.css"/>

<!--VIGO vigo css End-->


<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>

<!--Mega Manu Js End-->
<script type="text/javascript" async src="http://www.google-analytics.com/ga.js"></script>
<script src="catalog/view/theme/vigo/javascript/jquery/prototype.js" type="text/javascript"></script>
<script src="catalog/view/theme/vigo/javascript/jquery/ccard.js" type="text/javascript"></script>
<script src="catalog/view/theme/vigo/javascript/jquery/validation.js" type="text/javascript"></script>
<script src="catalog/view/theme/vigo/javascript/jquery/builder.js" type="text/javascript"></script>
<script src="catalog/view/theme/vigo/javascript/jquery/effects.js" type="text/javascript"></script>
<script src="catalog/view/theme/vigo/javascript/jquery/dragdrop.js" type="text/javascript"></script>
<script src="catalog/view/theme/vigo/javascript/jquery/controls.js" type="text/javascript"></script>
<script src="catalog/view/theme/vigo/javascript/jquery/slider.js" type="text/javascript"></script>
<script src="catalog/view/theme/vigo/javascript/jquery/js.js" type="text/javascript"></script>
<script src="catalog/view/theme/vigo/javascript/jquery/form.js" type="text/javascript"></script>
<script src="catalog/view/theme/vigo/javascript/jquery/menu.js" type="text/javascript"></script>
<script src="catalog/view/theme/vigo/javascript/jquery/translate.js" type="text/javascript"></script>
<script src="catalog/view/theme/vigo/javascript/jquery/cookies.js" type="text/javascript"></script>
<script src="catalog/view/theme/vigo/javascript/jquery/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/vigo/javascript/jquery/jquery-noconflict.js" type="text/javascript"></script>
<script src="catalog/view/theme/vigo/javascript/jquery/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/vigo/javascript/jquery/bootstrap-3.0.0.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/vigo/javascript/jquery/html5shiv.js" type="text/javascript"></script>
<script src="catalog/view/theme/vigo/javascript/jquery/respond.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/vigo/javascript/jquery/ajaxaddto.js" type="text/javascript"></script>
<script src="catalog/view/theme/vigo/javascript/jquery/jquery.mousewheel-3.0.4.pack.js" type="text/javascript"></script>
<script src="catalog/view/theme/vigo/javascript/jquery/jquery.fancybox.pack.js" type="text/javascript"></script>
<script src="catalog/view/theme/vigo/javascript/jquery/jquery.slides.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/vigo/javascript/jquery/twitterfetcher.js" type="text/javascript"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/jquery.tinycarousel.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/jquery.themepunch.plugins.min.js"></script>

<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/vallenato.js"></script>
<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/tabcontent.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/jquery.nicescroll.js"></script>
<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/jquery.nicescroll.min.js"></script>

<script type="text/javascript" src="catalog/view/theme/vigo/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/slider.js"></script>

<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/jquery.bxslider.min.js"></script>
<!--<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/bxslider.custom.js"></script>-->
<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/jquery.etalage.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/jquery.zoom.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/jquery.akordeon.js"></script>
<script type="text/javascript" charset="UTF-8" src="https://maps.gstatic.com/cat_js/intl/en_us/mapfiles/api-3/16/1/%7Bcommon,map,util,marker%7D.js"></script>
<script type="text/javascript" charset="UTF-8" src="https://maps.gstatic.com/cat_js/intl/en_us/mapfiles/api-3/16/1/%7Bonion%7D.js"></script>
<script type="text/javascript" charset="UTF-8" src="https://maps.gstatic.com/cat_js/intl/en_us/mapfiles/api-3/16/1/%7Bcontrols,stats%7D.js"></script>
<!--EU COOKIE LAW>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/cookie.css" />
<script type="text/javascript" src="catalog/view/theme/vigo/javascript/support-opt-in.js"></script>
<script type="text/javascript" src="catalog/view/theme/vigo/javascript/require-opt-in.js"></script>
<!--end EU COOKIE LAW-->
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>

<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//-->
</script>

<?php } ?>
<script type="text/javascript">
/*var filternoconflict=jQuery.noConflict();*/

jQuery(document).ready(function(){
jQuery('html').niceScroll({zindex : 9999});
});
</script>


<?php echo $google_analytics; ?>
<?php $language_id = (int)$this->config->get('config_language_id') ; ?>
<?php if($language_id == 13 ) { ?>
<style type="text/css">
.bx-wrapper{direction:ltr;}
</style>
<?php } ?>
<?php if($footer_background_type == 1) { ?>
<style type="text/css">
.footer-container{
 	background-color:<?php echo $footer_background; ?>;
}
</style>
<?php } ?>
<?php if($footer_background_type == 2) { ?>
<style type="text/css">
.footer-container{
	background-image:url(<?php echo HTTPS_SERVER.'image/'.$footer_background; ?>);
}
.footer {
    background-color: rgba(46, 46, 46, 0.9);
}
</style>
<?php } ?>
<?php if($footer_background_type == 3) { ?>
<style type="text/css">
.footer-container{
	background-image:url(<?php echo HTTPS_SERVER.'image/data/vigo/pattern/'.$footer_background; ?>);
}
.footer {
    background-color: rgba(75, 86, 104, 0.9);
}
</style>
<?php } ?>
<!--text color start-->
<style type="text/css">
body, .products-grid .product-name a, .products-grid.producteffect5 .short_desc, .block .block-title strong, .block-from-blog p, .comments-widget .comment-box p, .comments-widget .avatar-line .text .time, .block-bestseller-home .block-title strong, .block-about-shop h2, .block-about-shop p, .block-about-shop h3, .block-about-shop span.function, .block-about-shop p, .block-twitter-feed .user span:first-child, .block-twitter-feed .user span, .block-twitter-feed p.tweet, .block-twitter-feed p.interact a, .block-twitter-feed p.timePosted, .box-title, label, p, input.input-text, textarea, .regular-price .price, .old-price .price, .special-price .price,  .block.block-layered-nav .akordeon-heading, .block.block-category-nav .block-title strong, .results, .main .category-products .toolbar .pager .links a, .main .category-products .toolbar .pager .links a, h1, h2, h3, h4, h5, h6, .product-view .product-shop .availability, .product-view .product-shop .availability span, .product-accordion .akordeon-heading, .review-counts,  select, .qty-changer a, .block.block-related .block-title strong span, #block_related .product-name a, .data-table thead th, .cart-table .item-options > div > b, .cart-table .item-options > div, #shopping-cart-table .product-name a, #wishlist-table .product-name a, .products-list .product-name a, .products-list .short_desc, .opc .step-title h2, .opc-review .product-name, .opc-review .cart-price .price, .opc-review .data-table tfoot td, .opc-review .data-table tfoot td .price, .products-grid.producteffect6 .product-name a, .products-grid.producteffect6 .regular-price .price, .products-grid.producteffect6 .old-price .price, .products-grid.producteffect6 .special-price .price{
	color:<?php echo $text_color; ?>
	}
</style>
<!--text color end-->


<!--Link color start-->
<style type="text/css">
a,  .header-container a, .header-container a.sign-link, .navbar-default .navbar-nav > li > a, .simple_menu li.level0 > a, .simple_menu li.submenu a span, .filter-products .tabs li a, .comments-widget .comment-box h2 a, .block-from-blog a.more-link, .comments-widget .avatar-line .text .name, .block-about-shop a.more-link, .block-twitter-feed p.tweet a, .block-twitter-feed p.tweet a span, .block-category-nav .akordeon-heading a, .block-category-nav .akordeon-heading a, .block-category-nav a, .block-layered-nav a, .breadcrumbs a, .block-account .block-content li a, .block-content .row .col-sm-6 .box .box-content li a, .link-wishlist, .link-compare, .mini-products-list .product-details .product-name a{
	color:<?php echo $link_color; ?>
	}

</style>
<!--Link color end-->

<!--Link hover color start-->
<style type="text/css">
a:hover,  .header-container a:hover, .header-container a.sign-link:hover, .navbar-default .navbar-nav > li:hover > a, .navbar-default .navbar-nav > li:focus > a, .simple_menu li.level0 > a:hover, .simple_menu li.submenu a:hover span, .filter-products .tabs li.active a, .filter-products .tabs li a:hover, .block-category-nav .akordeon-heading a:hover, .block-category-nav .akordeon-heading a:hover, .block-category-nav a:hover, .block-layered-nav a:hover, .breadcrumbs a:hover, .block-account .block-content li a:hover, .block-content .row .col-sm-6 .box .box-content li a:hover, .link-wishlist:hover, .link-compare:hover, .mini-products-list .product-details .product-name a:hover{
	color:<?php echo $link_hover_color; ?>
	}

</style>
<!--Link hover color end-->

<!--Button background color start-->
<style type="text/css">
ul.cart-button-set a.addtocart, ul.cart-button-set a.addtowishlist, ul.cart-button-set a.addtocompare, .button.btn-twitter-follow, button.button, #content .col-right #button-filter, .my-account input.button.btn-cart, a.button.btn-cart, .products-grid.producteffect2 .addtowishlist.link-wishlist, .products-grid.producteffect2 a.addtowishlist, .products-grid.producteffect2 .addtocompare.link-compare,.products-grid.producteffect2 a.addtocompare, .products-grid.producteffect2 .addtocart.button.btn-cart, .products-grid.producteffect2 a.addtocart, .products-grid.producteffect3 .addtocart.button.btn-cart, .products-grid.producteffect3 a.addtocart, .products-grid.producteffect3 .addtowishlist.link-wishlist, .products-grid.producteffect3 a.addtowishlist, .products-grid.producteffect3 .addtocompare.link-compare, .products-grid.producteffect3 a.addtocompare, .products-grid.producteffect5 .addtocart.button.btn-cart, .products-grid.producteffect5 a.addtocart, .products-grid.producteffect5 .addtowishlist.link-wishlist, .products-grid.producteffect5 a.addtowishlist, .products-grid.producteffect5 .addtocompare.link-compare,.products-grid.producteffect5 a.addtocompare{
	background-color:<?php echo $button_background_color; ?>
	}
</style>
<!--Button background color end-->

<!--Button border color start-->
<style type="text/css">
/*ul.cart-button-set a.addtocart, ul.cart-button-set a.addtowishlist, ul.cart-button-set a.addtocompare,*/ .button.btn-twitter-follow,  #content .col-right #button-filter, .my-account input.button.btn-cart, a.button.btn-cart, .products-grid.producteffect2 .addtowishlist.link-wishlist, .products-grid.producteffect2 a.addtowishlist, .products-grid.producteffect2 .addtocompare.link-compare,.products-grid.producteffect2 a.addtocompare, .products-grid.producteffect2 .addtocart.button.btn-cart, .products-grid.producteffect2 a.addtocart, .products-grid.producteffect3 .addtocart.button.btn-cart, .products-grid.producteffect3 a.addtocart, .products-grid.producteffect3 .addtowishlist.link-wishlist, .products-grid.producteffect3 a.addtowishlist, .products-grid.producteffect3 .addtocompare.link-compare, .products-grid.producteffect3 a.addtocompare, .products-grid.producteffect5 .addtocart.button.btn-cart, .products-grid.producteffect5 a.addtocart, .products-grid.producteffect5 .addtowishlist.link-wishlist, .products-grid.producteffect5 a.addtowishlist, .products-grid.producteffect5 .addtocompare.link-compare,.products-grid.producteffect5 a.addtocompare{
	border:2px solid <?php echo $button_border_color; ?>
	}
</style>
<!--Button border color end-->

<!--Button text color start-->
<style type="text/css">
/*ul.cart-button-set a.addtocart, ul.cart-button-set a.addtowishlist, ul.cart-button-set a.addtocompare,*/ .button.btn-twitter-follow, button.button, #content .col-right #button-filter, .my-account button.button span, .my-account input.button.btn-cart, a.button.btn-cart, .products-grid.producteffect2 .addtowishlist.link-wishlist, .products-grid.producteffect2 a.addtowishlist, .products-grid.producteffect2 .addtocompare.link-compare,.products-grid.producteffect2 a.addtocompare, .products-grid.producteffect2 .addtocart.button.btn-cart, .products-grid.producteffect2 a.addtocart, .products-grid.producteffect3 .addtocart.button.btn-cart, .products-grid.producteffect3 a.addtocart, .products-grid.producteffect3 .addtowishlist.link-wishlist, .products-grid.producteffect3 a.addtowishlist, .products-grid.producteffect3 .addtocompare.link-compare, .products-grid.producteffect3 a.addtocompare, .products-grid.producteffect5 .addtocart.button.btn-cart, .products-grid.producteffect5 a.addtocart, .products-grid.producteffect5 .addtowishlist.link-wishlist, .products-grid.producteffect5 a.addtowishlist, .products-grid.producteffect5 .addtocompare.link-compare,.products-grid.producteffect5 a.addtocompare{
	color:<?php echo $button_text_color; ?>
	}
</style>
<!--Button text color end-->

<!--Button hover background color start-->
<style type="text/css">
ul.cart-button-set a.addtocart:hover, ul.cart-button-set a.addtowishlist:hover, ul.cart-button-set a.addtocompare:hover, .button.btn-twitter-follow:hover, button.button:hover span, ul.cart-button-set a.addtocart.button:hover, #content .col-right #button-filter:hover, .my-account input.button.btn-cart:hover, .products-list a.btn-cart:hover, .products-grid.producteffect2 .addtowishlist.link-wishlist:hover, .products-grid.producteffect2 a.addtowishlist:hover, .products-grid.producteffect2 .addtocompare.link-compare:hover,.products-grid.producteffect2 a.addtocompare:hover, .products-grid.producteffect2 .addtocart.button.btn-cart:hover, .products-grid.producteffect2 a.addtocart:hover, .products-grid.producteffect3 .addtocart.button.btn-cart:hover, .products-grid.producteffect3 a.addtocart:hover, .products-grid.producteffect3 .addtowishlist.link-wishlist:hover, .products-grid.producteffect3 a.addtowishlist:hover, .products-grid.producteffect3 .addtocompare.link-compare:hover, .products-grid.producteffect3 a.addtocompare:hover, .products-grid.producteffect5 .addtocart.button.btn-cart:hover, .products-grid.producteffect5 a.addtocart:hover, .products-grid.producteffect5 .addtowishlist.link-wishlist:hover,.products-grid.producteffect5 a.addtowishlist:hover, .products-grid.producteffect5 .addtocompare.link-compare:hover,.products-grid.producteffect5 a.addtocompare:hover{
	background-color:<?php echo $button_hover_background_color; ?>
	}
</style>
<!--Button hover background color end-->

<!--Button hover border color start-->
<style type="text/css">
ul.cart-button-set a.addtocart:hover, ul.cart-button-set a.addtowishlist:hover, ul.cart-button-set a.addtocompare:hover, .button.btn-twitter-follow:hover, button.button:hover span, ul.cart-button-set a.addtocart.button:hover, #content .col-right #button-filter:hover, .my-account input.button.btn-cart:hover, .products-list a.btn-cart:hover, .products-grid.producteffect2 .addtowishlist.link-wishlist:hover, .products-grid.producteffect2 a.addtowishlist:hover, .products-grid.producteffect2 .addtocompare.link-compare:hover,.products-grid.producteffect2 a.addtocompare:hover, .products-grid.producteffect2 .addtocart.button.btn-cart:hover, .products-grid.producteffect2 a.addtocart:hover, .products-grid.producteffect3 .addtocart.button.btn-cart:hover, .products-grid.producteffect3 a.addtocart:hover, .products-grid.producteffect3 .addtowishlist.link-wishlist:hover, .products-grid.producteffect3 a.addtowishlist:hover, .products-grid.producteffect3 .addtocompare.link-compare:hover, .products-grid.producteffect3 a.addtocompare:hover, .products-grid.producteffect5 .addtocart.button.btn-cart:hover, .products-grid.producteffect5 a.addtocart:hover, .products-grid.producteffect5 .addtowishlist.link-wishlist:hover,.products-grid.producteffect5 a.addtowishlist:hover, .products-grid.producteffect5 .addtocompare.link-compare:hover,.products-grid.producteffect5 a.addtocompare:hover{
	border:2px solid <?php echo $button_hover_border_color; ?>
	}
</style>
<!--Button hover border color end-->

<!--Button hover text color start-->
<style type="text/css">
ul.cart-button-set a.addtocart:hover, ul.cart-button-set a.addtowishlist:hover, ul.cart-button-set a.addtocompare:hover, .button.btn-twitter-follow:hover, button.button:hover span, ul.cart-button-set a.addtocart.button:hover, #content .col-right #button-filter:hover, .my-account button.button:hover span, .my-account input.button.btn-cart:hover, .products-list a.btn-cart:hover, .products-grid.producteffect2 .addtowishlist.link-wishlist:hover, .products-grid.producteffect2 a.addtowishlist:hover, .products-grid.producteffect2 .addtocompare.link-compare:hover,.products-grid.producteffect2 a.addtocompare:hover, .products-grid.producteffect2 .addtocart.button.btn-cart:hover, .products-grid.producteffect2 a.addtocart:hover, .products-grid.producteffect3 .addtocart.button.btn-cart:hover, .products-grid.producteffect3 a.addtocart:hover, .products-grid.producteffect3 .addtowishlist.link-wishlist:hover, .products-grid.producteffect3 a.addtowishlist:hover, .products-grid.producteffect3 .addtocompare.link-compare:hover, .products-grid.producteffect3 a.addtocompare:hover, .products-grid.producteffect5 .addtocart.button.btn-cart:hover, .products-grid.producteffect5 a.addtocart:hover, .products-grid.producteffect5 .addtowishlist.link-wishlist:hover,.products-grid.producteffect5 a.addtowishlist:hover, .products-grid.producteffect5 .addtocompare.link-compare:hover,.products-grid.producteffect5 a.addtocompare:hover{
	color:<?php echo $button_hover_text_color; ?>
	}
</style>
<!--Button hover text color end-->

<!--Label new background color Start-->
<style type="text/css">
.sale-product-icon{background:<?php echo $label_new_background_color; ?>}
</style>
<!--Label new background color end-->

<!--Label new button color Start-->
<style type="text/css">
.sale-product-icon{border: 2px solid <?php echo label_new_border_color;?>}
</style>
<!--Label new button color End-->

<!--Label new Text color Start-->
<style type="text/css">
.sale-product-icon{color: <?php echo $label_new_text_color;?>}
</style>
<!--Label new Text color Start-->


<!--Label sale background color Start-->
<style type="text/css">
.new-product-icon{background:<?php echo $label_sale_background_color; ?>}
</style>
<!--Label sale background color end-->

<!--Label sale button color Start-->
<style type="text/css">
.new-product-icon{border: 2px solid <?php echo $label_sale_border_color;?>}
</style>
<!--Label sale button color End-->

<!--Label sale Text color Start-->
<style type="text/css">
.new-product-icon{color: <?php echo $label_sale_text_color;?>}
</style>
<!--Label sale Text color Start-->

</head>
<?php 
	$url = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'].'?'.$_SERVER['QUERY_STRING'];
    function add_querystring_var($url, $key, $value) {
        $url = preg_replace('/(.*)(?|&)' . $key . '=[^&]+?(&)(.*)/i', '$1$2$4', $url . '&');
        $url = substr($url, 0, -1);
        
        if (strpos($url, '?') === false) {
            return ($url . '?' . $key . '=' . $value);
        } else {
            return ($url . '&' . $key . '=' . $value);
        }
    }

?>

<?php  $actual_link = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'].'?'.$_SERVER["QUERY_STRING"]; ?>
<body class="">
<div class="wrapper">



<noscript>
    <div class="global-site-notice noscript">
        <div class="notice-inner">
            <p>
                <strong>JavaScript seems to be disabled in your browser.</strong><br />
                You must have JavaScript enabled in your browser to utilize the functionality of this website.                </p>
        </div>
    </div>
</noscript>
	<div class="page">
        <div class="header-container">
            <div class="top-links">
                <div class="container" style="padding:0px">
                    
                        <div class="social-icons" style="margin-top:7px">
                            <a class="facebook-icon" title="Facebook" href="http://www.facebook.com/">Facebook</a>
                            <a class="twitter-icon" title="Twitter" href="http://www.twitter.com/">Twitter</a>
                            <a class="instragram-icon" title="Instragram" href="http://www.instragram.com/">Instragram</a>
                            <a class="pinterest-icon" title="Pinterest" href="http://www.pinterest.com/">Flickr</a>
                            <a class="google-icon" title="google" href="http://www.google.com/">google</a>
                                                                   
                         </div>
                  
                     <div class="pull-right currency-switcher">
                         <?php echo $currency; ?>
                    </div>
                     <div class="pull-right language-switcher">
                        <?php echo $language; ?>
                    </div>
                    <ul class="right-links pull-right">
                        <li class="mini-cart last">
                            
                                        <?php echo $cart; ?>
                                   
                           
                         </li>
                    </ul>
                    <ul class="links right">
                    
                        <!--li class="first"><a class="top-link-home" href="<?php echo $home; ?>"><?php //echo $text_home; ?></a></li-->
                        <li class="header_wishlist"><a href="<?php echo $wishlist; ?>" class="top-link-wishlist"><?php //echo $text_wishlist; ?></a></li>
                        <li><a class="top-link-account" href="<?php echo $account; ?>"><?php //echo $text_account; ?></a></li>
                        
                        <!--li><a class="top-link-cart" href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a></li-->
                        <!--li><a class="top-link-checkout" href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li-->
                        <!--li class="header_wishlist">
                            <a href="<?php echo $wishlist; ?>" class="top-link-wishlist"><?php echo $text_wishlist; ?></a></li-->
                        <!--li class="last header_compare">
                            <a href="<?php echo $compare; ?>" class="top-link-compare"><?php echo $text_compare; ?></a></li-->
                    
                    </ul>
                    <div class="clear"></div>
                     
                </div>
            </div>
            <div class="">
                <div class="">
                     <!--div class="pull-left">
                    <?php if (!$logged) { ?>
                    <?php echo $text_welcome; ?>
                    <?php } else { ?>
                    <?php echo $text_logged; ?>
                    <?php } ?>
                    </div-->
                    <!--div class="pull-right language-switcher">
                        <?php echo $language; ?>
                    </div-->
                    <div class="pull-right currency-switcher" style="display:none">
                         <?php echo $currency; ?>
                    </div>      
                </div>
            </div>
            <div class="header container">
                 <a class="logo" href="<?php echo $home; ?>"><!--<?php echo $name; ?>-->
                     <!--img src="<?php echo $logo; ?>" alt="<?php echo $home; ?>" /-->
                     <img width="360px" src="image/logo-ejmp.png" alt="<?php echo $home; ?>" />
                 </a>
              
            </div>
        </div>

        <div class="navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                        <span><?php echo $text_header_menu;?></span>
                    </button>
                
                	
                   
                </div>
        		<div class="for-mobile">
                    	<div class="form-search">
                   			<div id="search">
                    		<button type="submit" title="Search" class="button-search  button btn-search"><span><span><?php echo $text_search;?></span></span></button>
                                <input id="mb_search" type="text" name="search" class="input-text" maxlength="128" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>"/>
                                <a class="btn-remove btn-remove2" href="javascript:void(0)">Close</a>
                                <button type="button" title="Search" class="button btn-search-flg"><span><span><?php echo $text_search;?></span></span></button>
                    		
        <script type="text/javascript">
        //&lt;![CDATA[
        jQuery("button.btn-search-flg").click(function(){
            jQuery(this).parent().children("button.btn-search-flg").hide();
            jQuery(this).parent().children("button.btn-search").show();
            jQuery(this).parent().children("#mb_search").show();
            jQuery(this).parent().children("#mb_search").focus();
            jQuery(this).parent().children("a.btn-remove").css('display','inline-block');
            jQuery("button.navbar-toggle").hide();
        });
        jQuery(".navbar .for-mobile a.btn-remove").click(function(){
            jQuery(this).parent().children("button.btn-search-flg").show();
            jQuery(this).parent().children("button.btn-search").hide();
            jQuery(this).parent().children("#mb_search").hide();
            jQuery(this).parent().children("a.btn-remove").hide();
            jQuery("button.navbar-toggle").show();
        });
        //]]&gt;
        </script>
                    	</div>
                        </div>
                    </div>
        
                <nav class="collapse navbar-collapse bs-navbar-collaspe " role="navigation" id="jsn-pos-mainnav">
                    
                        <a href="<?php echo $home; ?>" title="<?php echo $home; ?>" class="logo sticky-logo col-lg-12 col-md-12"><strong></strong><img src="<?php echo $logo; ?>" alt="<?php echo $home; ?>" /></a>
                   
                <?php if($megamenu==1) { ?>
                <?php if ($categories) { ?>
                    <ul id="nav_custom" class="nav navbar-nav">
                        <li class="level0">
                            <a href="http://200.47.182.254:8080/saint/index.php?route=common/home" class="main-menu"></a>
                        </li>
                        <?php foreach ($categories as $category) { ?>
                            
                       
                            <?php if($category['name'] != 'Blogs'): ?>
                             <li class="level0"><a href="<?php echo $category['href']; ?>"><span><?php echo $category['name'];?></span></a>
                            
                            <?php else: ?> 
                            <li class="level0"><a href="http://200.47.182.254:8080/saint/index.php?route=product/category&amp;path=163"><span>Bloggers</span></a>
                            <li class="level0"><a href="<?php echo $category['href']; ?>"><span><?php $category['name'] = 'Blog'; echo $category['name'];?></span></a>
                            <?php endif; ?>    
                            <span class="plus"></span>
                              <?php if ($category['children']) { ?>
                                    
                                    <?php for ($i = 0; $i < count($category['children']);) { ?>
                                        <ul class="level1">
                                          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                                          <?php for (; $i < $j; $i++) { ?>
                                            <?php if (isset($category['children'][$i])) { ?>
                                                <li class="level1 parent"><a href="<?php echo $category['children'][$i]['href']; ?>"><span><?php echo $category['children'][$i]['name']; ?></span></a>
                                                <span class="plus"></span>
                                                    <?php if ($category['children'][$i]['children_level2']) { ?>
                                                    
                                                         
                                                             <ul class="level2">
                                                                <?php for ($wi = 0; $wi < count($category['children'][$i]['children_level2']); $wi++) { ?>
                                                                
                                                                      <li class="level2">
                                                                            <a href="<?php echo $category['children'][$i]['children_level2'][$wi]['href']; ?>"  ><span><?php echo $category['children'][$i]['children_level2'][$wi]['name']; ?></span>
                                                                            </a>
                                                                            
                                                                      </li>
                                                                <?php } ?>
                                                            </ul>
                                                         
                                                    <?php } ?>	
                                                </li>
                                                
                                            <?php } ?>
                                          <?php } ?>
                                          
                                          <li class="level1 thumbnail-image-area" style="position: relative;">
												<?php echo html_entity_decode($category_image); ?>
                                          </li>
                                           
                                       	
                                        </ul>
                                    <?php } ?>
                                  
                              <?php } ?>
                            </li>
                           
                        <?php } ?>
                         
                        	<!--li class="level0 for-desktop custom-menu parent"><a href="#"><span>Custom</span></a-->
                            <ul class="level1" style="display: none;">
                            <li style="width: 100%;" class="level1 first">
                            <div class="row">
                        	 <?php echo html_entity_decode($custom_category); ?>
                            </div>
                            </li>
                            </ul>
                            </li>
                        
                       	
                             
                    </ul>
                <?php } ?>
                <?php } ?>
                 
                <?php if($megamenu==2) { ?>
                <?php if ($categories) { ?>
                    <ul  class="nav navbar-nav simple_menu for-desktop">
                        <?php foreach ($categories as $category) { ?>
                        
                            <li class="level0"><a href="<?php echo $category['href']; ?>"><span><?php echo $category['name']; ?></span></a>
                            
                              <?php if ($category['children']) { ?>
                                    
                                    <?php for ($i = 0; $i < count($category['children']);) { ?>
                                        <ul class="level1 nav-child">
                                          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                                          <?php for (; $i < $j; $i++) { ?>
                                            <?php if (isset($category['children'][$i])) { ?>
                                                <li class="level1 parent submenu"><a href="<?php echo $category['children'][$i]['href']; ?>"><span><?php echo $category['children'][$i]['name']; ?></span></a>
                                                
                                                    <?php if ($category['children'][$i]['children_level2']) { ?>
                                                    
                                                         
                                                             <ul class="level2 nav-child">
                                                                <?php for ($wi = 0; $wi < count($category['children'][$i]['children_level2']); $wi++) { ?>
                                                                
                                                                      <li class="level2">
                                                                            <a href="<?php echo $category['children'][$i]['children_level2'][$wi]['href']; ?>"  ><span><?php echo $category['children'][$i]['children_level2'][$wi]['name']; ?></span>
                                                                            </a>
                                                                            
                                                                      </li>
                                                                <?php } ?>
                                                            </ul>
                                                         
                                                    <?php } ?>	
                                                </li>
                                                
                                            <?php } ?>
                                          <?php } ?>
                                       </ul>
                                    <?php } ?>
                                  <?php } ?>
	                            </li>
                           <?php } ?>
                         </ul>
                    
                    <ul id="nav_custom" class="nav navbar-nav for-mobile">
                        <?php foreach ($categories as $category) { ?>
                        	<li class="level0"><a href="<?php echo $category['href']; ?>"><span><?php echo $category['name']; ?></span></a>
                            <span class="plus"></span>
                              <?php if ($category['children']) { ?>
                                    
                                    <?php for ($i = 0; $i < count($category['children']);) { ?>
                                        <ul class="level1">
                                          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                                          <?php for (; $i < $j; $i++) { ?>
                                            <?php if (isset($category['children'][$i])) { ?>
                                                <li class="level1 parent"><a href="<?php echo $category['children'][$i]['href']; ?>"><span><?php echo $category['children'][$i]['name']; ?></span></a>
                                                <span class="plus"></span>
                                                    <?php if ($category['children'][$i]['children_level2']) { ?>
                                                    
                                                         
                                                             <ul class="level2">
                                                                <?php for ($wi = 0; $wi < count($category['children'][$i]['children_level2']); $wi++) { ?>
                                                                
                                                                      <li class="level2">
                                                                            <a href="<?php echo $category['children'][$i]['children_level2'][$wi]['href']; ?>"  ><span><?php echo $category['children'][$i]['children_level2'][$wi]['name']; ?></span>
                                                                            </a>
                                                                            
                                                                      </li>
                                                                <?php } ?>
                                                            </ul>
                                                         
                                                    <?php } ?>	
                                                </li>
                                                
                                            <?php } ?>
                                          <?php } ?>
                                          
                                          <li class="level1 thumbnail-image-area" style="position: relative;">
												<?php echo html_entity_decode($category_image); ?>
                                          </li>
                                           
                                       	
                                        </ul>
                                    <?php } ?>
                                  
                              <?php } ?>
                            </li>
                        <?php } ?>
                        	<li class="level0 for-desktop custom-menu parent"><a href="#"><span>Custom</span></a>
                            <ul class="level1" style="display: none;">
                            <li style="width: 100%;" class="level1 first">
                            <div class="row">
                        	 <?php echo html_entity_decode($custom_category); ?>
                            </div>
                            </li>
                            </ul>
                            </li>
                    </ul>
                	<?php } ?>
                <?php } ?>
                 
               <div class="for-desktop">
                    <div class="form-search for-not-tablet">
                    <form id="search_mini_form" method="get" action="">
                    	<input type="hidden" name="route" value="product/search"/>
                            <input type="text" name="search" class="input-text search_inputbox" maxlength="25" placeholder="<?php //echo $text_search; ?>" />
                            
                                <button class="button-search button btn-search" title="Search" type="submit">
                                <span>
                                	
                                    <span><?php echo $text_search;?></span>
                                </span>
                            	</button>
                                </form>
                            <!--<button class="button button-search" title="Search" type="submit" >
                                <span><span><?php echo $text_search;?></span></span>
                            </button>-->
                        	<script type="text/javascript">
							jQuery(".search_inputbox").click(function(){
							jQuery(this).parent().children('button').addClass('active');
							}).blur(function(){
							jQuery(this).parent().children('button').removeClass('active');
							});
							</script>
                        
						
                            
                    </div>
                 </div>
                        	
                   
                    <div class="form-search for-tablet">
                        
                        <form id="tb_search_mini_form" method="get" action="">
                        	
                        	 <button type="submit" title="Search" class="button-search button btn-search" style="display: none;"><span><span><?php echo $text_search;?></span></span></button>
                             <input type="hidden" name="route" value="product/search"/>
                             <input id="tb_search" type="text" name="search" class="input-text" maxlength="25" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" style="display: none;" />
                            
                           <a class="btn-remove btn-remove2" href="javascript:void(0)" style="display: none;">Close</a>
                           <button type="button" title="Search" class="button btn-search-flg"><span><span>Search</span></span></button>
                            <!--<input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" class="input-text" id="tb_search"/>-->
                            <!--<button class="button button-search" title="Search" type="submit" >
                                <span><span><?php echo $text_search;?></span></span>
                            </button>-->
                            <script type="text/javascript">
                            //<![CDATA[
                            jQuery(".for-tablet button.btn-search-flg").click(function(){
                                jQuery(this).parent().children("button.btn-search-flg").hide();
                                jQuery(this).parent().children("button.btn-search").show();
                                jQuery(this).parent().children("#tb_search").show();
                                jQuery(this).parent().children("#tb_search").focus();
                                jQuery(this).parent().children("a.btn-remove").css('display','inline-block');
                                jQuery(".form-search.for-tablet").css("width","100%");
                            });
                            jQuery(".for-tablet a.btn-remove").click(function(){
                                jQuery(this).parent().children("button.btn-search-flg").show();
                                jQuery(this).parent().children("button.btn-search").hide();
                                jQuery(this).parent().children("#tb_search").hide();
                                jQuery(this).parent().children("a.btn-remove").hide();
                                jQuery(".form-search.for-tablet").css("width","30px");
                            });
                            //]]>
                            </script>
                            </form>
                         
                    </div>
                     
                
                </nav>
            </div>
              </div>     
		
<?php if ($error) { ?>
    
    <div class="warning"><?php echo $error ?><img src="catalog/view/theme/vigo/image/close.png" alt="" class="close" /></div>
    
<?php } ?>


<script type="text/javascript">
//<![CDATA[
    jQuery(document).ready(function(){
        var scrolled = false;
        jQuery(window).scroll(function(){
            if(200<jQuery(window).scrollTop() && !scrolled){
                jQuery('.navbar').addClass('sticky-menu').css('top','-50px').animate({top:'0px'}, 500);
                scrolled = true;
            }
            if(200>jQuery(window).scrollTop() && scrolled){
                jQuery('.navbar').removeClass('sticky-menu');
                scrolled = false;
            }
        });
        jQuery("#nav_custom li.level0").mouseover(function(){
            if(jQuery(window).width() >= 768){
                jQuery(this).children('ul.level1').fadeIn();
            }
            return false;
        }).mouseleave(function(){
            if(jQuery(window).width() >= 768){
                jQuery(this).children('ul.level1').hide();
            }
            return false;
        });
        jQuery("#nav_custom li span.plus").click(function(e){
            e.stopPropagation();
            if(jQuery(this).hasClass('expanded')){
                jQuery(this).removeClass('expanded');
                jQuery(this).parent().removeClass('expanded');
                jQuery(this).parent().children('ul').slideUp();
            } else {
                jQuery(this).parent().parent().children('li.expanded').children('ul').slideUp();
                jQuery(this).parent().parent().children('li.expanded').children('span.expanded').removeClass('expanded');
                jQuery(this).parent().parent().children('li.expanded').removeClass('expanded');
                jQuery(this).addClass('expanded');
                jQuery(this).parent().addClass('expanded');
                jQuery(this).parent().children('ul').slideDown();
            }
        });
        /*
        var flg = false;
        jQuery("#nav_custom a").mouseover(function(){
            var thumb_image = jQuery(this).parent().attr("thumb_image");
            if(thumb_image != "no-image")
                jQuery("#nav_custom li.thumbnail-image-area img").attr("src",thumb_image);
        });
        */
    });
//]]>
</script>  
<!-- Latest,    Featured,    Specials on hover black come -->
<script type="text/javascript">
jQuery(document).ready(function(){
jQuery('.category-products .product-image-area').mouseenter(function(){
jQuery(this).children('.hover-area').fadeIn();
}).mouseleave(function(){
jQuery(this).children('.hover-area').fadeOut();
});
jQuery('.category-products .product-image-area').each(function(){
var inarea = false;
jQuery(this).click(function(e){
if(jQuery(e.target).is('.cart-button-set a')){
return;
}
setLocation(jQuery(this).attr('product_url'));
});
jQuery(this).mouseenter(function(){
if(!jQuery(this).parent().parent().parent().parent().parent().hasClass('block') && inarea == false){
var hover_img = jQuery(this).attr('hover_img');
var base_img = jQuery(this).attr('base_img');
var img = jQuery(this).children('a.product-image').children('img');
//jQuery(img).attr('src', hover_img);
/********************************/
var ele = jQuery(img).clone().appendTo(jQuery(img).parent()).css({position:"absolute","top":"0px","left":"0px","z-index":"2"}).attr("src",base_img);
jQuery(img).css("z-index",1);
jQuery(img).attr('src', hover_img);
jQuery(ele).fadeOut(400,function(){jQuery(ele).remove();});
}
inarea = true;
}).mouseleave(function(){
if(!jQuery(this).parent().parent().parent().parent().parent().hasClass('block') && inarea == true){
var hover_img = jQuery(this).attr('hover_img');
var base_img = jQuery(this).attr('base_img');
var img = jQuery(this).children('a.product-image').children('img');
//jQuery(img).attr('src', base_img);
/********************************/
var ele = jQuery(img).clone().appendTo(jQuery(img).parent()).css({position:"absolute","top":"0px","left":"0px","z-index":"2"}).attr("src",hover_img);
jQuery(img).css("z-index",1);
jQuery(img).attr('src', base_img);
jQuery(ele).fadeOut(400,function(){jQuery(ele).remove();});
}
inarea = false;
});
});
});
</script>


        
<!--Image of all slider is fix size-->        
<script type="text/javascript">
        // <![CDATA[
            jQuery(document).ready(function(){
                var window_size = jQuery(window).width();
                var bxslider1,bxslider2,bxslider3;
                if(window_size<992 && window_size >= 768){
                    bxslider1=jQuery('#fp_new .products-grid').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 3,  maxSlides: 3,  slideWidth: 230,  slideMargin: 15});
                    bxslider2=jQuery('#fp_featured .products-grid').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 3,  maxSlides: 3,  slideWidth: 230,  slideMargin: 15});
                    bxslider3=jQuery('#fp_special .products-grid').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 3,  maxSlides: 3,  slideWidth: 230,  slideMargin: 15});
                } else if(window_size<768){
                    bxslider1=jQuery('#fp_new .products-grid').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 1,  maxSlides: 1});
                    bxslider2=jQuery('#fp_featured .products-grid').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 1,  maxSlides: 1});
                    bxslider3=jQuery('#fp_special .products-grid').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 1,  maxSlides: 1});
                }else {
                    bxslider1=jQuery('#fp_new .products-grid').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 4,  maxSlides: 4,  slideWidth: 270,  slideMargin: 20});
                    bxslider2=jQuery('#fp_featured .products-grid').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 4,  maxSlides: 4,  slideWidth: 270,  slideMargin: 20});
                    bxslider3=jQuery('#fp_special .products-grid').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 4,  maxSlides: 4,  slideWidth: 270,  slideMargin: 20});
                }
                var reloaded1, reloaded2, reloaded3;
                reloaded1 = true;
                jQuery('.filter-products ul.tabs li a').click(function(e){
                    jQuery(this).parent().parent().children('li').removeClass('active');
                    jQuery(this).parent().addClass('active');
                    var active_id = jQuery(this).attr('rel');
                    jQuery('.filter-products .tab-contents .tab.active').hide();
                    jQuery('.filter-products .tab-contents .tab.active').removeClass('active');
                    jQuery(active_id).show();
                    jQuery(active_id).addClass('active');
                    if(active_id == "#fp_featured" && !reloaded2){
                        if(window_size<992 && window_size >= 768){
                            bxslider2.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 3,  maxSlides: 3,  slideWidth: 230,  slideMargin: 15});
                        } else if(window_size<768){
                            bxslider2.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 1,  maxSlides: 1});
                        }else {
                            bxslider2.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 4,  maxSlides: 4,  slideWidth: 270,  slideMargin: 20});
                        }
                        reloaded2 = true;
                    } else if(active_id == "#fp_special" && !reloaded3){
                        if(window_size<992 && window_size >= 768){
                            bxslider3.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 3,  maxSlides: 3,  slideWidth: 230,  slideMargin: 15});
                        } else if(window_size<768){
                            bxslider3.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 1,  maxSlides: 1});
                        }else {
                            bxslider3.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 4,  maxSlides: 4,  slideWidth: 270,  slideMargin: 20});
                        }
                        reloaded3 = true;
                    }
                });
                setTimeout(function(){
                    jQuery('.filter-products .tab-contents .tab').hide();
                    jQuery('.filter-products .tab-contents .tab.active').show();
                }, 100);

                jQuery(window).resize(function(e){
                    e.preventDefault();
                    var window_size = jQuery(window).width();
                    var time_out;
                    if(time_out) clearTimeout(time_out);
                    time_out = setTimeout(function(){
                        jQuery('.filter-products .tab-contents .tab').show();
                        if(window_size<992 && window_size >= 768){
                            bxslider1.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 3,  maxSlides: 3,  slideWidth: 230,  slideMargin: 15});
                            bxslider2.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 3,  maxSlides: 3,  slideWidth: 230,  slideMargin: 15});
                            bxslider3.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 3,  maxSlides: 3,  slideWidth: 230,  slideMargin: 15});
                        } else if(window_size<768){
                            bxslider1.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 1,  maxSlides: 1});
                            bxslider2.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 1,  maxSlides: 1});
                            bxslider3.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 1,  maxSlides: 1});
                        }else {
                            bxslider1.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 4,  maxSlides: 4,  slideWidth: 270,  slideMargin: 20});
                            bxslider2.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 4,  maxSlides: 4,  slideWidth: 270,  slideMargin: 20});
                            bxslider3.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 4,  maxSlides: 4,  slideWidth: 270,  slideMargin: 20});
                        }
                    }, 500);
                    setTimeout(function(){
                        jQuery('.filter-products .tab-contents .tab').hide();
                        jQuery('.filter-products .tab-contents .tab.active').show();
                    }, 500);
                });
            });
        // ]]>
</script>

<!--bestseller-->
   
        
        
    <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

