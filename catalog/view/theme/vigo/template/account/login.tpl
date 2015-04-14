<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>

<div id="content" class="main-container col2-left-layout"><?php echo $content_top; ?>
  
  <div class="breadcrumbs">
		<div class="container">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
      </div>
  </div>
  
  <div class="main container">
  	<div class="col-main col-md-9 col-sm-8 col-xs-12">
    	<div class="my-account">
        	<div class="account-login">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            	<div class="col2-set">
                	<div class="block block-new-users col-md-6 col-sm-6 col-xs-12">
                    	<div class="block-title">
                        	<strong><span><?php echo $text_new_customer; ?></span></strong>
                        </div>
                        <div class="block-content">
                        	<p><b><?php echo $text_register; ?></b></p>
        					<p><?php echo $text_register_account; ?></p>
                        </div>
                        <div class="buttons-set for-mobile">
                        	<a href="<?php echo $register; ?>">
                            <button class="button" title="Save" type="button" value="<?php echo $button_continue; ?>"><span><span><?php echo $button_continue; ?></span></span></button>
                            </a>
                        </div>
                    </div>
                    <div class="block block-registered-users col-md-6 col-sm-6 col-xs-12">
                      
                    	<div class="block-title">
                        	<strong><span><?php echo $text_returning_customer; ?></span></strong>
                        </div>
                        <div class="block-content">
                        	<p><?php echo $text_i_am_returning_customer; ?></p>
                            <ul class="form-list">
                                <li>
	                                <div class="input-box input-email">
                                    <input type="text" name="email" value="<?php echo $email; ?>" class="input-text validate-password required-entry" placeholder="<?php echo $entry_email;?> *"/>
                                    </div>
                                </li>
                                <li>
	                                <div class="input-box input-password">
                                    <input type="password" name="password" value="<?php echo $password; ?>" class="input-text validate-password required-entry" placeholder="<?php echo $entry_password; ?> *"/>
                                    </div>
                                </li>
                            </ul>
                            <p class="required"><?php echo $text_required_fields;?></p>
                        </div>
                        <div class="buttons-set for-mobile">
           <a class="f-right" href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
          <button type="submit" value="<?php echo $button_login; ?>" class="button" id="send2" name="send" title="Login">
          <span><span><?php echo $button_login; ?></span></span>
          </button>
          <?php if ($redirect) { ?>
          <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
          <?php } ?>
                        </div>
                      
                    </div>
                 
                </div>
                <div class="col2-set for-desktop">
                	<div class="new-users col-md-6 col-sm-6 col-xs-12">
                    	<div class="buttons-set">
                        	<a href="<?php echo $register; ?>">
                            <button class="button" title="Save" type="button" value="<?php echo $button_continue; ?>"><span><span><?php echo $button_continue; ?></span></span></button>
                            </a>
                        </div>
					</div>
                    <div class="registered-users col-md-6 col-sm-6 col-xs-12">
                    	<div class="buttons-set">
           <a class="f-right" href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
          <button type="submit" value="<?php echo $button_login; ?>" class="button" id="send2" name="send" title="Login">
          <span><span><?php echo $button_login; ?></span></span>
          </button>
          <?php if ($redirect) { ?>
          <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
          <?php } ?>
                        </div>
                    </div>
                </div>
                </form>
            </div>
  
        </div>
    </div>
    <div class="col-left sidebar col-md-3 col-sm-4 col-xs-12">
    	<?php echo $column_left; ?>
   </div>
 </div>
        
	<?php echo $column_right; ?>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#login').submit();
	}
});
//--></script> 
<?php echo $footer; ?>