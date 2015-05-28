<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<script type="text/javascript">
//&lt;![CDATA[
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
        })
        jQuery("#nav_custom li.level0").mouseover(function(){
            if(jQuery(window).width() >= 768){
                jQuery(this).children('ul.level1').fadeIn();
            }
            return false;
        }).mouseleave(function(){
            if(jQuery(window).width() >= 768){
                jQuery(this).children('ul.level1').fadeOut();
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
//]]&gt;
</script>

<div id="content" class="main-container col1-layout"><?php echo $content_top; ?>
  
  <div class="breadcrumbs">
		<div class="container">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
    </div>
  </div>
  
  <div class="main container">
	<div class="col-main">
    	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCaH2tdZkIU8u8CjrZWLunNDKrCbckeuqE&amp;sensor=true" type="text/javascript"></script>
        
        <script type="text/javascript">
        function initialize() {
            var pos = new google.maps.LatLng(-34.398, 150.884);
            var mapOptions = {
                center: pos,
                zoom: 18,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("store_map"), mapOptions);
            var marker = new google.maps.Marker({
                position: pos,
                map: map,
                title: 'Vigoshop Store'
            });
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
    	<div id="store_map"></div>
		<div id="messages_product_view"></div>
        <div class="contacts-area col-md-8 col-sm-8 col-xs-12">
  			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            	<div class="block block-contactform">
                    <div class="block-title">
                    	<strong><span><?php echo $text_contact; ?></span></strong>
                    </div>
                    <div class="block-content">
                    	<ul class="form-list col-md-6 col-sm-12 col-xs-12 first">
                        	<li class="fields">
                                <div class="field">
                                	<div class="input-box name-firstname">
                                    <input type="text" name="name" value="<?php echo $name; ?>" class="input-text required-entry" placeholder="   Enter Your Name*"/>
                                    </div>
                                    <?php if ($error_name) { ?>
                                    <span class="error"><?php echo $error_name; ?></span>
                                    <?php } ?>
                                </div>
                                <div class="field">
                                	<div class="input-box input-email">
                                    <input type="text" name="email" value="<?php echo $email; ?>" class="input-text required-entry"  placeholder="   Enter Your Email*"/>
                                    </div>
                                    <?php if ($error_email) { ?>
                                    <span class="error"><?php echo $error_email; ?></span>
                                    <?php } ?>
                                </div>
                                
                            </li>
                            <li class="wide required for-desktop">
                                <p class="required">
                                </p>
                            </li>
						</ul>
                        <ul class="form-list col-md-6 col-sm-12 col-xs-12">
                        	<li class="wide">
                            	<div class="field">
	                            	<div class="input-box input-comment">
                                <textarea name="enquiry" cols="40" rows="10" style="width: 99%;" class="input-text required-entry" placeholder="   Enter Your Message*"><?php echo $enquiry; ?></textarea>
                                </div>
                                </div>
                                <div class="field col-md-6 inputcaptch">
									<div class="input-box input-captch">
                                    	<input type="text" name="captcha" value="<?php echo $captcha; ?>" class="input-text required-entry"  placeholder="Enter Captch*"/>
                                    </div>
                                </div>
                                <div class="field col-md-6">
									<div class="input-box input-captch-image">
                            <img src="index.php?route=information/contact/captcha" alt="captch image" />
                            <?php if ($error_captcha) { ?>
                            <span class="error"><?php echo $error_captcha; ?></span>
                            <?php } ?>
                                    </div>
                                </div>
                                <?php if ($error_enquiry) { ?>
                                <span class="error"><?php echo $error_enquiry; ?></span>
                                <?php } ?>
                            </li>
                            <li class="wide required for-mobile">
	                            <p class="required"></p>
                            </li>
                            <li class="wide form-button">
                            <button class="button" title="Post Comment" type="submit" value="<?php echo $button_continue; ?>">
	                            <span><span><?php echo $button_continue; ?></span></span>
                            </button>
                            </li>
                        </ul>
                    </div>
                </div>
            </form>
    	</div>
        <div class="block block-contactdetails col-md-4 col-sm-4 col-xs-12">
            <div class="block-title">
                <strong><span>Contact Details</span></strong>
            </div>
   			<div class="block-content">
            	<div class="row phone">
            		<div class="row-header">Phone:</div>
            		<div class="row-info">
                    	<p>8 (900) 415-7812</p>
                        <p>8 (890) 147-1479</p>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="row mobile">
		        	<div class="row-header">Mobile:</div>
		            <div class="row-info">
        	        	<p>+484 70-106-70-87</p>
                        <p>+484 70-025-48-35</p>
                    </div>
            		<div class="clear"></div>
        		</div>
                <div class="row email">
                    <div class="row-header">E-mail:</div>
                    <div class="row-info">
                        <p>eternalsoft@gmail.com</p>
                        <p>eternalsoft_support.gmail.com</p>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="row skype">
                    <div class="row-header">Skype:</div>
                    <div class="row-info">
                        <p>eternalsoft_store</p>
                        <p>eternalsoft_support</p>
                    </div>
                    <div class="clear"></div>
        		</div>
        	</div>
		</div>
    </div>
  </div>
 
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>