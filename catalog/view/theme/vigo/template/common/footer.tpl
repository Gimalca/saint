<div class="footer-container">
    <div class="footer">
        <div class="container">
            <div class="col-md-12">
                <div class="col-md-3" id="posicion-footer">
                    <ul>
                        <li id="footer-titulo" class="tamaño">COMPAÑIA</li>
                        <ul>
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
                <div class="col-md-4" style="margin-top: 21px;">
                    <div id="newsletter-footer">
                        <div class="col-md-12" style="margin-bottom: 11px;">
                            Suscríbete al Newsletter<br>
                            y promociones especiales<br>
                        </div>
                        
                       <div class="input-box col-md-6" style="width: 222px;">
                        <input type="text" name="email" id="newsletter" title="Sign up for our newsletter" class="input-text required-entry validate-email" placeholder="Email" />
                        </div>
                        <button id="boton-footer" type="submit" title="Sign Up" class="button"><span><span style="color: white;font-size: 12px;">Suscribete</span></span></button>
                        <div class="social-icons col-md-12 col-xs-offset-1">
                        <div class="form-subscribe-header" id="newsletter-footer">
                            Síguenos
                        </div>
                        <div class="col-md-12">
                            <a class="facebook-icon" href="http://www.facebook.com/">Facebook</a>
                            <a class="twitter-icon" title="Twitter" href="http://www.twitter.com/">Twitter</a>
                            <a class="instragram-icon" title="Instragram" href="www.instragram.com/">Instragram</a>
                            <a class="pinterest-icon" title="Pinterest" href="www.pinterest.com/">Flickr</a>
                            <a class="google-icon" title="google" href="www.google.com/">google</a>
                        </div>
                            

                    </div>

            </div>
                </div>
            </div>
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
                <address class="col-md-12"><?php echo $copyright; ?></address><?php $powered; ?>
                
                
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