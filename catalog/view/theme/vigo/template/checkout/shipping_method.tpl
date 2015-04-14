<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php if ($shipping_methods) { ?>
	<dl id="checkout-payment-method-load" class="sp-methods">
		<dl id="checkout-payment-method-load" class="sp-methods">
        	<?php foreach ($shipping_methods as $shipping_method) { ?>
            	<dt><b><?php echo $shipping_method['title']; ?></b></dt>
            	<?php if (!$shipping_method['error']) { ?>
				<?php foreach ($shipping_method['quote'] as $quote) { ?>
                
        	<dt>
            	<?php if ($quote['code'] == $code || !$code) { ?>
      <?php $code = $quote['code']; ?>
      <input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" checked="checked" class="radio"/>
      <?php } else { ?>
      <input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" class="radio"/>
      <?php } ?>
      <label for="<?php echo $quote['code']; ?>"><?php echo $quote['title']; ?></label>
      <label>-></label>
      <label for="<?php echo $quote['code']; ?>"><?php echo $quote['text']; ?></label>
            </dt>
       <?php } ?>
  <?php } else { ?>
  <dt>
  <div class="error"><?php echo $shipping_method['error']; ?></div>
  </dt>
  <?php } ?>
  <?php } ?>
        </dl>
    </dl>

<?php } ?>
<div class="comment_heading"><?php echo $text_comments; ?></div>

<textarea name="comment" rows="8" style="width: 98%;"><?php echo $comment; ?></textarea>
<div id="shipping-method-buttons-container" class="buttons-set">
	<button type="button" value="<?php echo $button_continue; ?>" id="button-shipping-method" class="button" >
    	<span><span><?php echo $button_continue; ?></span></span>
    </button>
</div>
