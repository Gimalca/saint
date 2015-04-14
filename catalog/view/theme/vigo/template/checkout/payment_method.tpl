<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php if ($payment_methods) { ?>
<dl id="checkout-payment-method-load" class="sp-methods">
	<dl id="checkout-payment-method-load" class="sp-methods">
    	<dt><b><?php echo $text_payment_method; ?></b></dt>
        <?php foreach ($payment_methods as $payment_method) { ?>
        <dt>
        	<?php if ($payment_method['code'] == $code || !$code) { ?>
      <?php $code = $payment_method['code']; ?>
      <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" checked="checked" class="radio"/>
      <?php } else { ?>
      <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" class="radio"/>
      <?php } ?>
      <label for="<?php echo $payment_method['code']; ?>"><?php echo $payment_method['title']; ?>
        </dt>
        <?php } ?>
    </dl>
</dl>


<?php } ?>
<div class="comment_heading"><?php echo $text_comments; ?></div>
<textarea name="comment" rows="8" style="width: 98%;"><?php echo $comment; ?></textarea>

<?php if ($text_agree) { ?>
<ul class="form-list">
	<li class="control">
		<div class="input-box">
    <?php if ($agree) { ?>
    <input type="checkbox" name="agree" value="1" checked="checked" class="checkbox"/>
    <?php } else { ?>
    <input type="checkbox" name="agree" value="1" class="checkbox"/>
    <?php } ?>
        </div>
        <?php echo $text_agree; ?>
    </li>
</ul>
<div class="buttons-set">
	<button type="button" value="<?php echo $button_continue; ?>" id="button-payment-method" class="button" >
    <span><span><?php echo $button_continue; ?></span></span>
    </button>
</div>

<?php } else { ?>
<div class="buttons-set">
	<button type="button" value="<?php echo $button_continue; ?>" id="button-payment-method" class="button" >
    <span><span><?php echo $button_continue; ?></span></span>
    </button>
  
</div>
<?php } ?>
<script type="text/javascript"><!--
$('.colorbox').colorbox({
	width: 640,
	height: 480
});
//--></script> 