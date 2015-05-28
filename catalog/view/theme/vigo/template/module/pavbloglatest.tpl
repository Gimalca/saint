<div class="split">
    <div>&nbsp;</div>
</div>

<div class="row">
    <div class="col-sm-6 home_blog_part" >
        <div class="block block-from-blog">
            <!--div class="block-title">
                <strong><span><?php echo $heading_title; ?></span></strong>
                <?php echo $text_from_the_staff; ?>
            </div-->
            <div class="block-content" style="background-color:#fff; padding: 5px; ">
                <ul>
                    <?php if( !empty($blogs) ) { ?>
                    <?php foreach( $blogs as $key => $blog ) { $key = $key + 1; ?>
                    <li class="bx-clone">
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                                <?php if( $blog['thumb']  )  { ?>
                                <img src="<?php echo $blog['thumb'];?>" title="<?php echo $blog['title'];?>"/>
                                <?php } ?>
                            </div>
                        </div>
                        <div class="row">    
                            <div class="col-md-12 col-sm-12 details">
                                <h1>
                                    <a style="color: #2a6496" href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>"><?php echo $blog['title'];?></a>
                                </h1>
                                <div><?php echo rtrim(substr(html_entity_decode($blog['description']),0,500)); ?></div>

                                <div>                            <a  style="color: #2a6496" href="<?php echo $blog['link'];?>" class=""><?php echo $this->language->get('text_readmore');?> ></a></div>
                            </div>
                        </div>
                    </li>
                    <?php if( ( $key%$cols==0 || $key == count($blogs)) ){  ?>
                    <!--<div class="clearfix"></div>-->
                    <?php } ?>
                    <?php } ?>
                    <?php } ?>
                </ul>
            </div>
           <div class="box-subscribe">
                       
                      
                        <form action="#" method="post" name="newslatter" class="validate" target="_blank" novalidate>

                            <div class="block-content" style="padding-top: 0px; margin-bottom: 22px">
                                <div class="form-subscribe-header">
                                    <label for="newsletter">Recibe Noticias y promociones</label>
                                </div>
                                <div class="col-sm-8">
                                    <input type="text" name="email" id="newsletter" title="Sign up for our newsletter" class="input-text required-entry validate-email" placeholder="email" />
                                    
                                </div>
                                <div class=" col-sm-2">
                                    <button type="submit" title="Sign Up" class="button"><span><span>enviar</span></span></button>
                                </div>
                            </div>
                        </form>
                        <script type="text/javascript">
                            //<![CDATA[
                            var newsletterSubscriberFormDetail = new VarienForm('newsletter-validate-detail');
                            //]]>
                        </script>
                    </div>
        </div>
        
    </div>



    <!--<div class="box ">
            <div class="box-heading"><?php echo $heading_title; ?></div>
            <div class="box-content" >
                    <?php if( !empty($blogs) ) { ?>
                    <div class="pavblog-latest clearfix">
                            <?php foreach( $blogs as $key => $blog ) { $key = $key + 1;?>
                            <div class="pavcol<?php echo $cols;?>">
                                            <div class="blog-item">
                                                            <div class="blog-header clearfix">
                                                            <h4 class="blog-title">
                                                                    <a href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>"><?php echo $blog['title'];?></a>
                                                            </h4>
                                                            </div>
                                                            <div class="blog-body">
                                                                    <?php if( $blog['thumb']  )  { ?>
                                                                    <img src="<?php echo $blog['thumb'];?>" title="<?php echo $blog['title'];?>" align="left"/>
                                                                    <?php } ?>
                                                                    <div class="description">
                                                                                    <?php echo utf8_substr( $blog['description'],0, 200 );?>...
                                                                    </div>
                                                                    <a href="<?php echo $blog['link'];?>" class="readmore"><?php echo $this->language->get('text_readmore');?></a>
                                                            </div>	
                                                    </div>
                            </div>
                            <?php if( ( $key%$cols==0 || $key == count($blogs)) ){  ?>
                                    <div class="clearfix"></div>
                            <?php } ?>
                            <?php } ?>
                    </div>
                    <?php } ?>
            </div>
     </div>-->
    <script type="text/javascript">// &lt;![CDATA[
        jQuery(function ($) {
            $('.block-from-blog ul').bxSlider({adaptiveHeight: false, auto: false, autoStart: false, autoHover: false, mode:'horizontal', speed:1000, pager: false});
        });
    // ]]&gt;</script>