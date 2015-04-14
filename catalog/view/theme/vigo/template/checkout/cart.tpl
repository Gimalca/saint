<?php echo $header; ?>
<?php if ($attention) { ?>
<div class="attention"><?php echo $attention; ?><img src="catalog/view/theme/vigo/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><img src="catalog/view/theme/vigo/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?><img src="catalog/view/theme/vigo/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content" class="main-container col1-layout"><?php echo $content_top; ?>
  
  
  
  <div class="breadcrumbs">
		<div class="container">
        <div class="page-title"><?php echo $heading_title; ?></div>
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
    </div>
  </div>
  
  <div class="main container">
	<div class="col-main">
      <div class="cart">
    	<div class="page-title title-buttons">
        	<h1><?php echo $heading_title; ?></h1>
    	</div>
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            <fieldset>
              <table id="shopping-cart-table" class="data-table cart-table">
                <thead>
                  <tr class="first last">
                    <!--<th  rowspan="1"><?php echo $column_image; ?></th>-->
                    <th rowspan="1" colspan="2"><span class="nobr"><?php echo $column_name; ?></span></th>
                    <th colspan="1"><span class="nobr"><?php echo $column_model; ?></span></th>
                    <th rowspan="1"><span class="nobr"><?php echo $column_quantity; ?></span></th>
                    <th colspan="1"><span class="nobr"><?php echo $column_price; ?></span></th>
                    <th colspan="1"><span class="nobr"><?php echo $column_total; ?></span></th>
                    <th class="last" rowspan="1">
                    	<input type="image" src="catalog/view/theme/vigo/images/icon_remove_15x15.png" alt="<?php echo $button_update; ?>" title="<?php echo $button_update; ?>" />
                    </th>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($products as $product) { ?>
                    <?php if($product['recurring']): ?>
                      <tr>
                          <td colspan="6" style="border:none;"><img src="catalog/view/theme/vigo/image/reorder.png" alt="" title="" style="float:left;" />
                          <span style="float:left; line-height:18px; margin-left:10px;"> 
                              <strong><?php echo $text_recurring_item ?></strong>
                              <?php echo $product['profile_description'] ?>
                          </span>
                          </td>
                        </tr>
                    <?php endif; ?>
                  <tr>
                    <td class="no-border-right pr-img-td"><?php if ($product['thumb']) { ?>
                   <a class="btn-remove btn-remove2 for-mobile" href="<?php echo $product['remove']; ?>"></a>
                      <a class="product-image" href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                      <?php } ?></td>
                    <td class="a-left product-name-td">
                    	<h2 class="product-name">
                        	<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                        </h2>
                      <?php if (!$product['stock']) { ?>
                      <span class="stock">***</span>
                      <?php } ?>
                      
                      <div class="item-options">
                      <?php foreach ($product['option'] as $option) { ?>
                      	<div>
                        	<?php echo $option['name']; ?>: <b><?php echo $option['value']; ?></b>
                        </div>
                      <?php } ?>
                      <?php if($product['recurring']): ?>
                        <div>
                        	<?php echo $text_payment_profile ?>: <b><?php echo $product['profile_name'] ?></b>
                        </div>
                        <?php endif; ?>
                        <?php if ($product['reward']) { ?>
                          <div><?php echo $product['reward']; ?></div>
                          <?php } ?>
                      </div>
                    </td>
                    
                    
                    <td class="model"><?php echo $product['model']; ?></td>
                    <td class="a-center qty-td">
                    	<div class="qty-holder">
                        	<input type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="input-text qty"/>
                            <div class="qty-changer">
                                <a class="qty_inc" href="javascript:void(0)">
                                    <span>+</span>
                                </a>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="qtl-refress">
                        	<input type="image" src="catalog/view/theme/vigo/images/update.png" alt="<?php echo $button_update; ?>" title="<?php echo $button_update; ?>" />
                        </div>
                    </td>
                    <td class="a-center unit-price">
                    	<span class="mobile-show"><?php echo $column_price; ?></span>
                    	<span class="cart-price">
	                        <span class="price"><?php echo $product['price']; ?></span>
                        </span>
                    </td>
                    <td class="a-center sub-total">
                    	<span class="mobile-show"><?php echo $column_total; ?></span>
                        <span class="cart-price">
                        	<span class="price"><?php echo $product['total']; ?></span>
                        </span>
                   </td>
                   	<td class="a-center rm-td for-desktop last">
                    	<a class="btn-remove btn-remove2" href="<?php echo $product['remove']; ?>"></a>
                    </td>
                  </tr>
                  <?php } ?>
                  <?php foreach ($vouchers as $vouchers) { ?>
                  <tr>
                    <td class="image"></td>
                    <td class="name">
                    	<h2 class="product-name">
                        	<?php echo $vouchers['description']; ?>
                        </h2>
                    </td>
                    <td class="model"></td>
                    <td class="a-center qty-td">
                    <div class="qty-holder">
                        	<input type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="input-text qty qty_vau"/>
                            <div class="qty-changer">
                                <a class="qty_vau_inc" href="javascript:void(0)">
                                    <span>+</span>
                                </a>
                            </div>
                            <div class="clear"></div>
                        </div>
                    
                     </td>
                    <td class="price"><?php echo $vouchers['amount']; ?></td>
                    <td class="total"><?php echo $vouchers['amount']; ?></td>
                    <td class="a-center rm-td for-desktop last">
                    	<a class="btn-remove btn-remove2" href="<?php echo $vouchers['remove']; ?>"></a>
                    </td>
                  </tr>
                  <?php } ?>
                </tbody>
              </table>
    
              <script type="text/javascript">
					decorateTable('shopping-cart-table')
				</script>
            </fieldset>
        </form>
        
        <div class="cart-collaterals">
        	<?php if ($coupon_status || $voucher_status || $reward_status || $shipping_status) { ?>
        	<div class="cart-extra col-md-8 col-xs-12">
				<ul class="cart-extra-tab">
      <?php if ($coupon_status) { ?>
      <li class="highlight">
        <span class="radio_button_hide_shopping_cart"><?php if ($next == 'coupon') { ?>
          <input type="radio" name="next" value="coupon" id="use_coupon" checked="checked" />
          <?php } else { ?>
          <input type="radio" name="next" value="coupon" id="use_coupon" />
          <?php } ?></span>
        <span id="cart_page_span1" class="active"><label for="use_coupon"><?php echo $text_use_coupon; ?></label></span>
      </li>
      <?php } ?>
      <?php if ($voucher_status) { ?>
      <li class="highlight">
        <span class="radio_button_hide_shopping_cart"><?php if ($next == 'voucher') { ?>
          <input type="radio" name="next" value="voucher" id="use_voucher" checked="checked" />
          <?php } else { ?>
          <input type="radio" name="next" value="voucher" id="use_voucher" />
          <?php } ?></span>
        <span id="cart_page_span2"><label for="use_voucher"><?php echo $text_use_voucher; ?></label></span>
      </li>
      <?php } ?>
      <?php if ($reward_status) { ?>
      <li class="highlight">
        <span class="radio_button_hide_shopping_cart"><?php if ($next == 'reward') { ?>
          <input type="radio" name="next" value="reward" id="use_reward" checked="checked" />
          <?php } else { ?>
          <input type="radio" name="next" value="reward" id="use_reward" />
          <?php } ?></span>
        <span id="cart_page_span3"><label for="use_reward"><?php echo $text_use_reward; ?></label></span>
      </li>
      
      <?php } ?>
      <?php if ($shipping_status) { ?>
      <li class="highlight">
        <span class="radio_button_hide_shopping_cart"><?php if ($next == 'shipping') { ?>
          <input type="radio" name="next" value="shipping" id="shipping_estimate" checked="checked" />
          <?php } else { ?>
          <input type="radio" name="next" value="shipping" id="shipping_estimate" />
          <?php } ?></span>
        <span id="cart_page_span4"><label for="shipping_estimate"><?php echo $text_shipping_estimate; ?></label></span>
      </li >
      
      <?php } ?>
    </ul>
			<script type="text/javascript">
				jQuery("#cart_page_span1").click(function(){
				jQuery(this).parent().children('span').addClass('active');
				}).blur(function(){
				jQuery(this).parent().children('span#cart_page_span1').removeClass('active');
				});
			</script>
            <script type="text/javascript">
				jQuery("#cart_page_span2").click(function(){
				jQuery(this).parent().children('span').addClass('active');
				}).blur(function(){
				jQuery(this).parent().children('span#cart_page_span2').removeClass('active');
				});
			</script>
            <script type="text/javascript">
				jQuery("#cart_page_span3").click(function(){
				jQuery(this).parent().children('span').addClass('active');
				}).blur(function(){
				jQuery(this).parent().children('span#cart_page_span3').removeClass('active');
				});
			</script>
            <script type="text/javascript">
				jQuery("#cart_page_span4").click(function(){
				jQuery(this).parent().children('span').addClass('active');
				}).blur(function(){
				jQuery(this).parent().children('span#cart_page_span4').removeClass('active');
				});
			</script>
  				<div class="akordeon">
                	
                <div class="cart-module">
    <div id="coupon" class="content" style="display: <?php echo ($next == 'coupon' ? 'block' : 'block'); ?>;">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
      	<div class="discount">
			<div class="discount-form">
            	<label for="coupon_code"><?php echo $entry_coupon; ?></label>
                <div class="input-box">
                	<input type="text" name="coupon" value="<?php echo $coupon; ?>" class="input-text"/>
			        <input type="hidden" name="next" value="coupon" />
                </div>
                <div class="buttons-set">
                	<button type="submit" value="<?php echo $button_coupon; ?>" class="button" >
                    	<span><span><?php echo $button_coupon; ?></span></span>
        			</button>
                </div>
            </div>
        </div>
      </form>
    </div>
    <div id="voucher" class="content " style="display: <?php echo ($next == 'voucher' ? 'block' : 'none'); ?>;">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
      	<div class="discount">
			<div class="discount-form">
            	<label for="voucher_code"><?php echo $entry_voucher; ?></label>
            </div>
            <div class="input-box">
            	<input type="text" name="voucher" value="<?php echo $voucher; ?>" class="input-text"/>
		        <input type="hidden" name="next" value="voucher" />
            </div>
            <div class="buttons-set">
            	<button type="submit" value="<?php echo $button_voucher; ?>" class="button" >
                	<span><span><?php echo $button_voucher; ?></span></span>
                </button>
            </div>
        </div>
      </form>
    </div>
    <div id="reward" class="content" style="display: <?php echo ($next == 'reward' ? 'block' : 'none'); ?>;">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
      		<div class="discount">
				<div class="discount-form">
                	<label for="reward_code"><?php echo $entry_reward; ?></label>
                </div>
                <div class="input-box">
                	<input type="text" name="reward" value="<?php echo $reward; ?>" class="input-text"/>
			        <input type="hidden" name="next" value="reward" />
                </div>
                <div class="buttons-set">
                	<button type="submit" value="<?php echo $button_reward; ?>" class="button" >
                    	<span><span><?php echo $button_reward; ?></span></span>
                    </button>
                </div>
            </div>
      </form>
    </div>
    <div id="shipping" class="content " style="display: <?php echo ($next == 'shipping' ? 'block' : 'none'); ?>;">
    	<div class="shipping">
			<div class="shipping-form">
            	<label for="reward_code"><?php echo $text_shipping_detail; ?></label>
                <ul class="form-list">
					<li>
                        <div class="input-box medium-size">
                        	<select name="country_id">
                              <option value=""><?php echo $text_select; ?></option>
                              <?php foreach ($countries as $country) { ?>
                              <?php if ($country['country_id'] == $country_id) { ?>
                              <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                              <?php } else { ?>
                              <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                              <?php } ?>
                              <?php } ?>
                            </select>
                        </div>
                    </li>
					<li>
                        <div class="input-box medium-size">
                        	<select name="zone_id"></select>
                        </div>
                    </li>
					<li>
                        <div class="input-box medium-size">
                        	<input type="text" name="postcode" value="<?php echo $postcode; ?>" class="input-text validate-postcode" placeholder="postcode *"/>
                            <button type="button" value="<?php echo $button_quote; ?>" id="button-quote" class="button medium-size" ><span><span><?php echo $button_quote; ?></span></span></button>
                        </div>
                    </li>
				</ul>
            </div>
        </div>
    </div>
  </div>
                </div>
            </div>	
			<?php } ?>
        	
        	<div class="totals col-md-4 col-xs-12">
            	
                <table id="total" class="shopping-cart-totals-table">
                    <colgroup>
                        <col />
                        <col width="1"  />
                    </colgroup>
                    <tbody>
                        <?php foreach ($totals as $total) { ?>
                        <tr>
                            <td colspan="1" class="a-right" style=""> <?php echo $total['title']; ?></td>
                            <td class="a-right" style="">
                                <span class="price"><?php echo $total['text']; ?></span>
                           </td>
                       </tr>
                       <?php } ?>
                    </tbody>
                </table>
  
            </div>
        </div>
        
        <ul class="checkout-types">
            <li class="first">
            	<a href="<?php echo $continue; ?>">
                    <button class="button btn-continue" type="button" value="<?php echo $button_shopping; ?>">
                        <span><span><?php echo $button_shopping; ?></span></span>
                    </button>
                </a>
            </li>
            <li class="">
            	<a href="<?php echo $checkout; ?>">
                    <button class="button btn-continue" type="button" value="<?php echo $button_checkout; ?>">
                        <span><span><?php echo $button_checkout; ?></span></span>
                    </button>
               </a>
            	
            </li>
		</ul>
        
      </div>
<script type="text/javascript">
    jQuery(document).ready(function(){
        jQuery(".qty_inc").click(function(){
            jQuery(this).parent().parent().children("input.qty").val((+jQuery(this).parent().parent().children("input.qty").val() + 1) || 0);
        });
    });
</script>
<script type="text/javascript">
    jQuery(document).ready(function(){
        jQuery(".qty_vau_inc").click(function(){
            jQuery(this).parent().parent().children("input.qty_vau").val((+jQuery(this).parent().parent().children("input.qty_vau").val() + 1) || 0);
        });
    });
</script>

    </div>
  </div>
  

  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('input[name=\'next\']').bind('change', function() {
	$('.cart-module > div').hide();
	
	$('#' + this.value).show();
});
//--></script>
<?php if ($shipping_status) { ?>

<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/vigo/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#postcode-required').show();
			} else {
				$('#postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
	    			
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script>
<script type="text/javascript"><!--
$('#button-quote').live('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/quote',
		type: 'post',
		data: 'country_id=' + $('select[name=\'country_id\']').val() + '&zone_id=' + $('select[name=\'zone_id\']').val() + '&postcode=' + encodeURIComponent($('input[name=\'postcode\']').val()),
		dataType: 'json',		
		beforeSend: function() {
			$('#button-quote').attr('disabled', true);
			$('#button-quote').after('<span class="wait">&nbsp;<img src="catalog/view/theme/vigo/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('#button-quote').attr('disabled', false);
			$('.wait').remove();
		},		
		success: function(json) {
			$('.success, .warning, .attention, .error').remove();			
						
			if (json['error']) {
				if (json['error']['warning']) {
					$('#notification').html('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/vigo/image/close.png" alt="" class="close" /></div>');
					
					$('.warning').fadeIn('slow');
					
					$('html, body').animate({ scrollTop: 0 }, 'slow'); 
				}	
							
				if (json['error']['country']) {
					$('select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
				}	
				
				if (json['error']['zone']) {
					$('select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
				}
				
				if (json['error']['postcode']) {
					$('input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
				}					
			}
			
			if (json['shipping_method']) {
				html  = '<h2><?php echo $text_shipping_method; ?></h2>';
				html += '<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">';
				html += '  <ul class="cart-extra-tab">';
				
				for (i in json['shipping_method']) {
					html += '<li>';
					html += '  <span><b>' + json['shipping_method'][i]['title'] + '</b></span>';
					html += '</li>';
				
					if (!json['shipping_method'][i]['error']) {
						for (j in json['shipping_method'][i]['quote']) {
							html += '<li class="highlight">';
							
							if (json['shipping_method'][i]['quote'][j]['code'] == '<?php echo $shipping_method; ?>') {
								html += '<span><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" checked="checked" /></span>';
							} else {
								html += '<span><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" /></span>';
							}
								
							html += '  <span><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['title'] + '</label></span>';
							html += '  <span style="text-align: right;"><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['text'] + '</label></span>';
							html += '</li>';
						}		
					} else {
						html += '<li>';
						html += '  <span><div class="error">' + json['shipping_method'][i]['error'] + '</div></span>';
						html += '</li>';						
					}
				}
				
				html += '  </ul>';
				html += '  <br />';
				html += '  <input type="hidden" name="next" value="shipping" />';
				
				<?php if ($shipping_method) { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" />';	
				<?php } else { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" disabled="disabled" />';	
				<?php } ?>
							
				html += '</form>';
				
				$.colorbox({
					overlayClose: true,
					opacity: 0.5,
					width: '600px',
					height: '400px',
					href: false,
					html: html
				});
				
				$('input[name=\'shipping_method\']').bind('change', function() {
					$('#button-shipping').attr('disabled', false);
				});
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/vigo/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#postcode-required').show();
			} else {
				$('#postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
	    			
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script>
<?php } ?>
<?php echo $footer; ?>
