<div class="footer-container">
    <div class="footer">
        <div class="container">
            <div class="col-md-12 row">
                <div class="col-md-2" id="posicion-footer">
                    <ul>
                        <li id="footer-titulo" class="tamaño">COMPAÑIA</li>
                        <ul>
                             <?php 
                           
                             if ($informations) { ?>
                              <?php foreach ($informations as $information) { ?>
                              	<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                              <?php } ?>
                              <?php } ?>
                            <li id="tamaño">Sobre Nosotros</li>
                            <li id="tamaño">Haz Negocios Con Nosotros</li>
                            <li id="tamaño">Ubicacion</li>
                            <li id="tamaño">Blog</li>
                            <li id="tamaño">Bloggers</li>
                        </ul>
                    </ul>
                </div>
                <div class="col-md-3" id="posicion-footer">
                    <ul>
                        <li id="footer-titulo" class="tamaño">ATENCION AL CLIENTE </li>
                        <ul>
                            <li id="tamaño">Devoluciones y Garantias</li>
                            <li id="tamaño">Informacion sobre Envios</li>
                            <li id="tamaño">Metodos de Pago</li>
                            <li id="tamaño">Politica de Privacidad</li>
                        </ul>
                    </ul>
                </div>
                <div class="col-md-2" id="posicion-footer">
                    <ul>
                        <li id="footer-titulo" class="tamaño">INFORMACION</li>
                        <ul>
                            <li id="tamaño">Preguntas Frecuentes</li>
                            <li id="tamaño">Tabla de Tallas</li>
                            <li id="tamaño">Contactanos</li>
                        </ul>
                    </ul>
                </div>
                <div class="col-md-5" style="margin-top: 50px;">
                    <div id="newsletter-footer">  
                        <form name="subscribe" id="subscribe">
                            <div id="footer-titulo" class="col-md-12" style="margin-bottom: 11px;">
                                Newsletter
                                y promociones especiales
                            </div>

                            <div class="input-box col-md-7" >

                                <input type="text" value="" name="subscribe_email" id="subscribe_email" class="input-text required-entry validate-email" placeholder="Email" />
                                <input type="hidden" value="-" name="subscribe_name" id="subscribe_name">
                                <div id="subscribe_result"></div>
                            </div>
                            <button id="boton-footer"  onclick="email_subscribe()" type="button" title="Suscribete" class="button"><span><span style="color: white;font-size: 12px;">Suscribete</span></span></button>
                            <!--div class="social-icons col-md-12 col-xs-offset-1">
                            <div class="form-subscribe-header" id="newsletter-footer">
                                Síguenos
                            </div>
                            <div class="col-md-12"  style="margin-left: 0px; padding-left: 0px;">
                                <a class="facebook-icon" href="http://www.facebook.com/">Facebook</a>
                                <a class="twitter-icon" title="Twitter" href="http://www.twitter.com/">Twitter</a>
                                <a class="instragram-icon" title="Instragram" href="www.instragram.com/">Instragram</a>
                                <a class="pinterest-icon" title="Pinterest" href="www.pinterest.com/">Flickr</a>
                                <a class="google-icon" title="google" href="www.google.com/">google</a>
                              </div>
                            </div-->
                        </form>
                    </div>
                 

                   
                </div>
            </div>
           
            <script language="javascript">
		
            function email_subscribe(){
                    $.ajax({
                                    type: 'post',
                                    url: 'index.php?route=module/newslettersubscribe/subscribe',
                                    dataType: 'html',
                        data:$("#subscribe").serialize(),
                                    success: function (html) {
                                            eval(html);
                                    }}); 
            }
            function email_unsubscribe(){
                    $.ajax({
                                    type: 'post',
                                    url: 'index.php?route=module/newslettersubscribe/unsubscribe',
                                    dataType: 'html',
                        data:$("#subscribe").serialize(),
                                    success: function (html) {
                                            eval(html);
                                    }}); 
            }
      
            $('.fancybox_sub').fancybox({
                    width: 180,
                    height: 180,
                    autoDimensions: false
            });
            </script>
      
                    
                    
                </div>
            </div>
            <div class="col-md-12 footer-pay">
                <img class="img-responsive"  src="image/data/pay_method.jpg" alt="Instagram">
            </div>
            </div>
            
            
            <script type="text/javascript">
                //<![CDATA[
                if (jQuery(".footer-middle").children('div').length > 0) {
                    jQuery(".footer-middle").children('div').addClass('col-sm-' + (12 / jQuery(".footer-middle").children('div').length));
                }
                //]]
            </script>
            <div style=" color: #666; padding: 5px; font-size: 9px; text-transform: uppercase ">© 2015 Saint. All Rights reserved.  Desarrolaldo por <a style="color: #777" target="_blank" href="http://gimalca.com">Gimalca.</a></div>
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