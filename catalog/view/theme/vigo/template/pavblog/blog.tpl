<?php echo $header; ?>
  <?php echo $column_left; ?>
<div id="content" class="col2-left-layout blag"><?php echo $content_top; ?>
  	<div class="breadcrumbs">
        <div class="container">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
            <?php } ?>
        </div>
    </div>
    <div class="myblog main container">
    	<div class="col-left col-md-9 col-sm-8 col-xs-12">
			<div class="my-account">
              <div class="account-login">
				<div class="block block-blog blogpage">
                	
                    <div class="blog-title">
        <span><?php echo $blog['title'];?></span>
    </div>
                    
                    <div class="block-content">
                    	<div class="postBanner">
                	<!--<div class="postDate for-desktop">
    	<div class="blog_name">
                	<a href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>">
                		<?php echo $blog['title'];?>
 		            </a>
                </div>
        <div class="blog_date">
                	<?php echo date("d",strtotime($blog['created']));?> 
                    <?php echo date("M",strtotime($blog['created']));?> ,
                    <?php echo date("Y",strtotime($blog['created']));?>
                </div>
    </div>-->
                	<p>
                <img src="<?php echo $blog['thumb_large'];?>" title="<?php echo $blog['title'];?>"/> </p>
                </div>
                		
                        <div class="product-options-bottom add-to-box">
                        <ul class="add-to-links">
                <li><div class="blog_date">
                
                <?php echo date("d",strtotime($blog['created']));?> 
                <?php echo strtoupper(date("M",strtotime($blog['created'])));?>
                <?php echo date("Y",strtotime($blog['created']));?>
                
                </div>
                </li>
                <?php if( $config->get('cat_show_comment_counter') ) { ?>
                <li>
                	<div class="blog_date">
                    	<?php echo $blog['comment_count'];?>
                    	<?php echo $this->language->get("text_comment_count");?>
		                
                    </div>
                </li>
                <?php } ?>
               <li>
                <div class="blogimage">
                	 <div  class="line"></div>
                </div>
                </li>
                 <?php if( $config->get('cat_show_author') ) { ?>
                <li><span class="blogauther">
                	<?php echo $this->language->get('text_postedby');?><?php echo " ".$blog['author'];?></span>
                </li>
                <?php } ?>
            	<?php if( $config->get('cat_show_title') ) { ?>
               
                <li>
                	<a class="lable-tag1" href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>">
                	<?php echo $this->language->get('text_tags');?><?php foreach( $tags as $tag => $tagLink ) { ?>
                        <a href="<?php echo $tagLink; ?>" title="<?php echo $tag; ?>" ><?php echo $tag; ?></a>,
                    <?php } ?>
	                
                     </a>
                </li>
               
                <?php } ?>
                
               
                <?php if( $config->get('cat_show_category') ) { ?>
                <!--<li>
                	<a class="lable-category" href="<?php echo $blog['category_link'];?>" title="<?php echo $blog['category_title'];?>">
                    <?php echo $blog['category_title'];?>
                	</a>
                </li>-->
                <?php } ?>
                <?php if( $config->get('cat_show_hits') ) { ?>
            	
                <span class="lable-hits leftblog"><?php echo $blog['hits'];?></span>
                
            
            <?php } ?>
                
                
            </ul>
             
            
           <!-- <ul class="add-to-links">
            	<?php if( $config->get('cat_show_title') ) { ?>
                
                <li>
                	<a class="lable-tag" href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>">
                	<?php echo $blog['title'];?>
	                </a>
                </li>
                <?php } ?>
                <?php if( $config->get('cat_show_author') ) { ?>
                <li>
                	<span class="lable-author"><?php echo $blog['author'];?></span>
                </li>
                <?php } ?>
                <?php if( $config->get('cat_show_category') ) { ?>
                <li>
                	<a class="lable-category" href="<?php echo $blog['category_link'];?>" title="<?php echo $blog['category_title'];?>">
                    <?php echo $blog['category_title'];?>
                	</a>
                </li>
                <?php } ?>
                <?php if( $config->get('cat_show_hits') ) { ?>
                <li>
                	<span class="lable-hits"><?php echo $this->language->get("text_hits");?><?php echo $blog['hits'];?></span>
                </li>
                <?php } ?>
                <?php if( $config->get('cat_show_comment_counter') ) { ?>
                <li>
                	<span class="lable-comment">
                    	<?php echo $this->language->get("text_comment_count");?>
		                <?php echo $blog['comment_count'];?>
                    </span>
                </li>
                <?php } ?>
            </ul>-->
        </div>
                		
                        <div class="postTitle for-mobile">
                            <h2><?php echo $heading_title; ?></h2>
                        </div>
                     
                        <div class="postContent">
                            <?php echo $description;?>
                        </div>
                        
                        <div class="postContent">
                            <?php echo $content;?>
                             <div class="sharing-tool-area">
                                <span class="label">Share: </span>
                                <div class="addthis_toolbox addthis_default_style addthis_32x32_style" >
                                    <a class="addthis_button_preferred_1"></a>
                                    <a class="addthis_button_preferred_2"></a>
                                    <a class="addthis_button_preferred_3"></a>
                                    <a class="addthis_button_preferred_4"></a>
                                    <a class="addthis_button_compact"></a>
                                    <a class="addthis_counter addthis_bubble_style"></a>
                                    </div>  
                                </div>
                                <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js"></script>
                        </div>
                        
                        <?php if( $blog['video_code'] ) { ?>
                		<div class="postContent">
                    	<?php echo html_entity_decode($blog['video_code'], ENT_QUOTES, 'UTF-8');?>
                        
                    </div>
                       <?php } ?>
                       
                    
        <!--social-->   
                        <!--<div class="product-view">
                                <div class="sharing-tool-area">
                                <span class="label">Share: </span>
                                <div class="addthis_toolbox addthis_default_style addthis_32x32_style" >
                            <a class="addthis_button_preferred_1"></a>
                            <a class="addthis_button_preferred_2"></a>
                            <a class="addthis_button_preferred_3"></a>
                            <a class="addthis_button_preferred_4"></a>
                            <a class="addthis_button_compact"></a>
                            <a class="addthis_counter addthis_bubble_style"></a>
                            </div>  
                            </div>
                            </div>-->
                        
                        <!--<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js"></script>-->         
                                 
                        <!--<div class="col2-set">
                            <?php if( !empty($samecategory) ) { ?>
                            <div class="block block-same-category col-md-6 col-sm-6 col-xs-12">
                                <div class="block-title">
                                    <strong><span><?php echo $this->language->get('text_in_same_category');?></span></strong>
                                </div>
                                <div class="block-content">
                                    <ul class="form-list">
                                        <?php foreach( $samecategory as $item ) { ?>
                                        <li>
                                            <a href="<?php echo $this->url->link('pavblog/blog',"id=".$item['blog_id']);?>"><?php echo $item['title'];?></a>
                                        </li>
                                        <?php } ?>
                                    </ul>
                                </div>
                            </div>
                            <?php } ?>
                            
                            <?php if( !empty($related) ) { ?>
                            <div class="block block-related-category col-md-6 col-sm-6 col-xs-12">
                                <div class="block-title">
                                    <strong><span><?php echo $this->language->get('text_in_related_by_tag');?></span></strong>
                                </div>
                                <div class="block-content">
                                    <ul class="form-list">
                                        <?php foreach( $related as $item ) { ?>
                                        <li>
                                            <a href="<?php echo $this->url->link('pavblog/blog',"id=".$item['blog_id']);?>"><?php echo $item['title'];?></a>
                                        </li>
                                        <?php } ?>
                                    </ul>
                                </div>
                            </div>
                            <?php } ?>
                        </div>-->
                        
                        <div class="pav-comment">
                	<?php if( $config->get('blog_show_comment_form') ) { ?>
                    		<?php if( $config->get('comment_engine') == 'diquis' ) { ?>
                        	<div id="disqus_thread"></div>
                            <script type="text/javascript">
                                            /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
                                            var disqus_shortname = '<?php echo $config->get('diquis_account');?>'; // required: replace example with your forum shortname
                    
                                            /* * * DON'T EDIT BELOW THIS LINE * * */
                                            (function() {
                                                var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
                                                dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
                                                (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
                                            })();
                                        </script>
                            <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
                            <a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>
                            
                            <?php } elseif( $config->get('comment_engine') == 'facebook' ) { ?>
                            
                            	<div id="fb-root"></div>
                                <script>(function(d, s, id) {
                                          var js, fjs = d.getElementsByTagName(s)[0];
                                          if (d.getElementById(id)) {return;}
                                          js = d.createElement(s); js.id = id;
                                          js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=<?php echo $config->get("facebook_appid");?>";
                                          fjs.parentNode.insertBefore(js, fjs);
                                        }(document, 'script', 'facebook-jssdk'));</script>
                                <div class="fb-comments" data-href="<?php echo $link; ?>" 
                                                data-num-posts="<?php echo $config->get("comment_limit");?>" data-width="<?php echo $config->get("facebook_width")?>">
                                        </div>
                           <?php }else { ?>
                           	
                                <?php if( count($comments) ) { ?>
                                   <div class="block block-comment block-account">
                                        <div class="block-title">
                                                    <strong>
                                                    <span><?php echo $this->language->get('text_list_comments'). "(". $blog['comment_count']. ")"; ?></span>
                                                    </strong>
                                                    </div>
                                                    
                                        <div class="block-content">
                                        <?php $i=1; ?>
                                        <?php foreach( $comments as $comment ) {  $default='';?>
                                        	
                                           <div class="comment-item clearfix comment" id="comment<?php echo $comment['comment_id'];?>">
                                            <div class="commentWrapper">
                                            <div class="commentDetails">
                      <div class="comments-widget">
                        <div class="avatar-line">
                            <div class="avatar-image">
                            
                            <?php if($i%2==0){ ?>
                            <img alt="" src="catalog/view/theme/vigo/images/testimonial_user_2.jpg" >
                            <?php } else { ?>
                            <img alt="" src="catalog/view/theme/vigo/images/testimonial_user_3.jpg" >
                            <?php } ?>
                            </div>
                            <div class="text text_name_date">
                                
                                <a class="name" href="#"><b><?php echo $comment['user'];?></b></a>
                                 <span class="time"><?php echo date("d",strtotime($comment['created'])).".".date("m",strtotime($comment['created'])).".".date("Y",strtotime($comment['created']));?></span>                        
                            </div>	
                            <div class="comment-box1 arrow_box">
                            <?php echo $comment['comment'];?>
                        </div>												
                        </div>
                        
                     </div>
                                                        
                                           </div>    
                                           </div>
                                           </div>
                                       <?php $i++;   } ?>
                                       </div>
                                       
                                       
                                       
                                       
                                       
                                       
                                   </div>
                               
                               <!--<div class="pave-listcomments">
                                    <div class="pagination"><?php echo $pagination;?></div>
                               </div>-->
                           <?php } ?>
                                
                                
                                
                                
                           	  <form action="<?php echo $comment_action;?>" method="post" id="comment-form">
                                    <div class="block block-write-comment">
                                        <div class="leavecomment-title">
                                            <span>
                                                <?php echo $this->language->get("text_leave_a_comment")?>
                                                
                                            </span>
                                        </div>
                                        <div class="block-content">
                                            <div class="message" style="display:none"></div>
                                            <div id="tab-review" class="tab-content">
                                                <ul class="form-list">
                                                    <div class="takecomment col-md-6 col-sm-6 col-xs-12">
                                                    <li>
                                                        <div class="input-box name-firstname">
                                                        <input class="input-text required-entry" type="text" placeholder="   <?php echo $this->language->get('entry_yname').": *";?>" value="" name="comment[user]">
                                                        </div>
                                                    </li>
                                                        
                                                    <li>
                                                        <div class="input-box input-email">
                                                        <input class="input-text required-entry" type="text" placeholder="   <?php echo $this->language->get('entry_yemail').": *";?>" value="" name="comment[email]">
                                                        </div>
                                                    </li>
                                                    <span class="Commentinfo"><?php echo $this->language->get('email_notpublished');?></span><br />
                                                    <span class="Commentinfo"><?php echo $this->language->get('required_field');?></span>
                                                    </div>
                                                    <div class="commentmassage col-md-6 col-sm-6 col-xs-12">
                                                    <li>
                                                        <div class="input-box input-comment">
                                                        <textarea class="input-text required-entry" placeholder="   <?php echo $this->language->get('entry_ycomment').": *";?>"  rows="8" cols="40" name="comment[comment]"></textarea>
                                                        </div>
                                                    </li>
                                                    
                                                    <?php if( $config->get('enable_recaptcha') ) { ?>
                                                    <li class="col-md-6 first">
                                                            <div class="input-box input-captch">
                                                            <input class="input-text required-entry" type="text" placeholder="   <?php echo $entry_captcha.": *"; ?>" value="" name="captcha">
                                                            </div>
                                                        </li>
                                                    <?php } ?>
                                                    <input type="hidden" name="comment[blog_id]" value="<?php echo $blog['blog_id']; ?>" />
                                                        
                                                    <li class="col-md-6 last">
                                                            <div class="input-box input-captch-image">
                                                            <img id="captcha" alt="" src="index.php?route=product/product/captcha">
                                                            </div>
                                                        </li>
                                                        
                                                    <input type="hidden" name="comment[blog_id]" value="<?php echo $blog['blog_id']; ?>" />
                                                        
                                                    <li class="wide form-button blogbutton">
                                                            <button class="btn btn-submit button" type="submit">
                                                                <span><?php echo $this->language->get('text_postcomment');?></span>
                                                            </button>
                                                        </li>
                                                        </div>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                              </form>
                              
                              <script type="text/javascript">
                                                    $( "#comment-form .message" ).hide();
                                                    $("#comment-form").submit( function(){
                                                        $.ajax( {type: "POST",url:$("#comment-form").attr("action"),data:$("#comment-form").serialize(), dataType: "json",}).done( function( data ){
                                                            if( data.hasError ){
                                                                $( "#comment-form .message" ).html( data.message ).show();	
                                                            }else {
                                                                location.href='<?php echo str_replace("&amp;","&",$link);?>';
                                                            }
                                                        } );
                                                        return false;
                                                    } );
                                                    
                                                </script>
                                    
                           
                                    
                                        
                             
                    	  <?php } ?>
                    <?php } ?>
                </div>
                    </div>
            	
                
                    	
                <?php echo $content_bottom; ?>
                
                
                </div>
              </div>
           </div>
       </div>
            
    	<div class="col-main sidebar col-md-3 col-sm-4 col-xs-12">
    	<?php echo $column_right; ?>
        <div class="block block-banner">
                <div class="block-content">
                    <div id="callouts">
<img src="catalog/view/theme/vigo/images/col_right_callout.jpg" alt="" />
<img src="catalog/view/theme/vigo/images/col_right_callout_1.jpg" alt="" />
<img src="catalog/view/theme/vigo/images/col_right_callout_2.jpg" alt="" />
					</div>
<script src="catalog/view/theme/vigo/javascript/jquery/jquery.slides.min.js" type="text/javascript">
</script>

                    <script type="text/javascript">
                jQuery(document).ready(function(){
                    jQuery("#callouts").slidesjs({width:340, height:340, play: {active: false,auto:true}, navigation:{active:false},pagination:{active:true}});
                });
            </script>
                </div>
            </div>
    </div>
    </div>
</div>
 
  
<?php echo $footer; ?>
