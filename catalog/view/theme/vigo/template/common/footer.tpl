<div class="footer-container">
    <div class="footer">
        <div class="container">
 
            <div class="row footer-middle">
                <div class="block-content col-lg-6">
                    <div class="form-subscribe-header">
                       Newsletter
                    </div>
                    <div class="input-box col-lg-6">
                        <input type="text" name="email" id="newsletter" title="Sign up for our newsletter" class="input-text required-entry validate-email" placeholder="Tu Email" />
                    </div>
                    <div class="actions">
                        <button type="submit" title="Sign Up" class="button"><span><span>Enviar</span></span></button>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="social-icons">
                         <div class="form-subscribe-header">
                       Síguenos
                    </div>
                            <a class="facebook-icon" title="Facebook" href="http://www.facebook.com/">Facebook</a>
                            <a class="twitter-icon" title="Twitter" href="http://www.twitter.com/">Twitter</a>
                            <a class="instragram-icon" title="Instragram" href="www.instragram.com/">Instragram</a>
                            <a class="pinterest-icon" title="Pinterest" href="www.pinterest.com/">Flickr</a>
                            <a class="google-icon" title="google" href="www.google.com/">google</a>

                    </div>
                   
                </div>
                <!--div class="">
                    <div class="block">
                        <div class="block-title">
                            <strong><span><?php echo $text_information; ?></span></strong>
                        </div>    
                        <div class="block-content">
                             <ul>
                              <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
                              <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
                              <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
                              <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
                              <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
                              <li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li>
                               
                            </ul>
                        </div>
                    </div>
                </div-->
                <!--div class="">
                    <div class="block">
                        <div class="block-title">
                            <strong><span><?php echo $text_account; ?></span></strong>
                        </div>
                        <div class="block-content">
                            <ul class="links">
                                <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                                    <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                                    <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                                    <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
                                <li><a href="<?php echo $download; ?>"><?php echo $text_downloads; ?></a></li>
                                <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                            </ul>
                        </div>
                    </div>
                </div-->    
                <!--div class="">
                    <div class="block">
                        <div class="block-title">
                            <strong><span><?php echo $text_service; ?></span></strong>
                        </div>
                        
                       <div class="block-content">
                            <ul>
                              <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                              <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                              
                              <?php if ($informations) { ?>
                              <?php foreach ($informations as $information) { ?>
                                <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                              <?php } ?>
                              <?php } ?>
                            </ul>
                        </div>
                        </div>
                </div-->    

                <!--div class="">
                    <div class="block">
                        <div class="block-title">
                            <strong><span><?php echo $text_contactinfo; ?></span></strong>
                        </div>
                        <div class="block-content">
                            <div class="contactinfo">
                                
                                <?php echo $address; ?> 
                                                        </div>
                        </div>
                  </div>
              </div-->

            </div>
            <script type="text/javascript">
                //<![CDATA[
                if (jQuery(".footer-middle").children('div').length > 0) {
                    jQuery(".footer-middle").children('div').addClass('col-sm-' + (12 / jQuery(".footer-middle").children('div').length));
                }
                //]]
            </script>
            <div class="split scroll-top"><a href="javascript:void(0)"></a></div>
            <div class="row footer-bottom">
                 <address><?php echo $copyright; ?></address><?php $powered; ?>
                
                
            </div>
        </div>
    </div>
</div>
</div>
</div>
<script type="text/javascript">//<![CDATA[
    jQuery(document).ready(function () {
        jQuery('#bestseller-list').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false});
    });
//]]</script>

<script type="text/javascript">
    //<![CDATA[
    if (jQuery(".footer-top").children('div').length > 0) {
        jQuery(".footer-top").children('div').addClass('col-sm-' + (12 / jQuery(".footer-top").children('div').length));
    }
    //]]
</script>
<script type="text/javascript">
//<![CDATA[
    if (jQuery(".footer-middle").children('div').length > 0) {
        jQuery(".footer-middle").children('div').addClass('col-sm-' + (12 / jQuery(".footer-middle").children('div').length));
    }
//]]
</script>
<script type="text/javascript">
//&lt;![CDATA[
    jQuery('.footer .scroll-top a').click(function () {
        jQuery('html, body').animate({scrollTop: 0}, 600, "easeOutCubic");
        return false;
    });
//]]
</script>

</body></html>