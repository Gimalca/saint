<?php echo $header; ?><?php echo $column_left; ?>
<div id="content" class="main-container col2-left-layout"><?php echo $content_top; ?>
  
  <div class="breadcrumbs">
		<div class="container">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  		</div>
    </div>
  
<div class="myblog main container">
    <div class="col-right col-md-9 col-sm-8 col-xs-12">
    	<div class="my-account">
        	<div class="account-login">
        	<?php
                    	$cols = $config->get('cat_columns_leading_blogs');
                        if( count($leading_blogs) ) { ?>
                        
				
					<?php foreach( $leading_blogs as $key => $blog ) { $key = $key + 1;?>
                        <div class="postWrapper">
                        	<?php require( '_item.tpl' ); ?>
                        </div>
                        <?php if( ( $key%$cols==0 || $cols == count($leading_blogs)) ){ ?>
                        <?php } ?>
					  <?php } ?>
                	<?php } ?>

				<?php
				$cols = $config->get('cat_columns_secondary_blogs');
				$cols = !empty($cols)?$cols:1;
				if ( count($secondary_blogs) ) { ?>
				
					<?php foreach( $secondary_blogs as $key => $blog ) {  $key = $key+1; ?>
                        <div class="postWrapper">
                        <?php require( '_item.tpl' ); ?>
                        </div>
                        <?php if( ( $key%$cols==0 || $cols == count($leading_blogs)) ){ ?>
                        <?php } ?>
					<?php } ?>
				<?php } ?>
				
			<div class="pav-pagination pagination"><?php echo $pagination;?></div>
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
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>