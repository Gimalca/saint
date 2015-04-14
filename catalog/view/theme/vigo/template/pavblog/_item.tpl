<div class="block block-blog blogpage">
    <div class="blog-title">
        <span><?php echo $blog['title'];?></span>
    </div>
    <div class="block-content">
    	<div class="postBanner">
	
    <p>
     	<?php if( $blog['thumb'] && $config->get('cat_show_image') )  { ?>
        	<img src="<?php echo $blog['thumb'];?>" title="<?php echo $blog['title'];?>" align="left"/>
        <?php } ?>
   </p>
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
                <li>
                	
                    <span class="blogauther"><?php echo $this->language->get('text_postedby');?><?php echo " ".$blog['author'];?></span>
                </li>
                <?php } ?>
                <?php if( $config->get('cat_show_title') ) { ?>
               
                <li>
                    <?php if(empty($tags)){$tags= array('Mda' => 'Moda');};?>
                	<a class="lable-tag1" href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>">
                	<?php echo $this->language->get('text_tags');?><?php foreach( $tags as $tag => $tagLink ) { ?>
                        <a href="<?php echo $tagLink; ?>" title="<?php echo $tag; ?>" > <?php echo $tag; ?> </a>,
                    <?php } ?>
	                
                     </a>
                </li>
               
                <?php } ?>
            	
               
                <?php if( $config->get('cat_show_category') ) { ?>
                
                <?php } ?>
                
                
            </ul>
        </div>
        
        

        <!--<div class="postTitle for-mobile">
                    <h2>
                        <a href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>">
                            <?php echo $blog['title'];?>
                       </a>
                    </h2>
                </div>-->
        
        <div class="postContent">
            <?php if( $config->get('cat_show_description') ) {?>
                <?php echo $blog['description'];?>&nbsp;
            <?php } ?>
                   
            <?php if( $config->get('cat_show_readmore') ) { ?>
                <a href="<?php echo $blog['link'];?>" class="trego-blog-read-more more-link"><?php echo $this->language->get('text_readmore');?> ></a>
            <?php } ?>
            
            
            <?php if( $config->get('cat_show_hits') ) { ?>
            	
                <span class="lable-hits"><?php echo $blog['hits'];?></span>
                
            
            <?php } ?>
        </div>
    </div>
</div>