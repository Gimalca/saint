<?php if ($addresses) { ?>
<ul class="form-list">
<li class="control">
<input type="radio" name="shipping_address" value="existing" id="shipping-address-existing" checked="checked" class="radio"/>
<label for="shipping-address-existing"><?php echo $text_address_existing; ?></label>
</li>
<div id="shipping-existing">
  <select name="address_id" style="width: 100%; margin-bottom: 15px;" size="5" class="shopping_cart_sellect">
    <?php foreach ($addresses as $address) { ?>
    <?php if ($address['address_id'] == $address_id) { ?>
    <option value="<?php echo $address['address_id']; ?>" selected="selected"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?></option>
    <?php } else { ?>
    <option value="<?php echo $address['address_id']; ?>"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?></option>
    <?php } ?>
    <?php } ?>
  </select>
</div>
<li class="control">
  <input type="radio" name="shipping_address" value="new" id="shipping-address-new" class="radio"/>
  <label for="shipping-address-new"><?php echo $text_address_new; ?></label>
</li>
</ul>
<?php } ?>
<div id="shipping-new" style="display: <?php echo ($addresses ? 'none' : 'block'); ?>;">
  <ul class="form-list">
        <li class="fields">
        	<div class="customer-name">
            	<div class="field name-firstname col-md-6 col-sm-6 col-xs-12">
                	<div class="input-box">
                    <input type="text" name="firstname" value="" class="large-field input-text" placeholder="Enter your first name*"/>
                    </div>
				</div>
                <div class="field name-lastname col-md-6 col-sm-6 col-xs-12">
                	<div class="input-box">
                    <input type="text" name="lastname" value="" class="large-field input-text" placeholder="Enter your last name*"/>
                    </div>
                </div>
            </div>
        </li>
        <li class="fields">
            <div class="field">
	            <div class="input-box input-company">
                <input type="text" name="company" value="" class="large-field input-text" placeholder="company"/>
                </div>
            </div>
        </li>
        
        <li class="fields">
            <div class="field">
	            <div class="input-box input-address">
                <input type="text" name="address_1" value="" class="large-field input-text" placeholder="Address*"/>
                </div>
            </div>
            <div class="field">
    	        <div class="input-box input-address">
                <input type="text" name="address_2" value="" class="large-field input-text" placeholder="Address 2"/>
                </div>
            </div>
        </li>
        <li class="fields">
            <div class="field">
	            <div class="input-box input-city">
                <input type="text" name="city" value="" class="large-field input-text" placeholder="city*"/>
                </div>
            </div>
            <div class="field">
    	        <div class="input-box input-postcode">
                <input type="text" name="postcode" value="<?php echo $postcode; ?>" class="large-field input-text" placeholder="Postcode*"/>
                </div>
            </div>
        </li>
        <li class="fields">
            <div class="field">
    	        <div class="input-box input-country">
                <select name="country_id" class="large-field input-text" placeholder="Select Country*">
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
            </div>
            <div class="field">
	            <div class="input-box input-region">
                <select name="zone_id" class="large-field input-text" placeholder="Select State*"></select>
                </div>
            </div>
        </li>
    </ul>
  
</div>
<div id="shipping-buttons-container" class="buttons-set">
	<p class="required"><?php echo $text_required_fields; ?></p>
	<button class="button" value="<?php echo $button_continue; ?>" id="button-shipping-address" title="Continue" type="button">
    <span><span><?php echo $button_continue; ?></span></span>
    </button>
</div>


<script type="text/javascript"><!--
$('#shipping-address input[name=\'shipping_address\']').live('change', function() {
	if (this.value == 'new') {
		$('#shipping-existing').hide();
		$('#shipping-new').show();
	} else {
		$('#shipping-existing').show();
		$('#shipping-new').hide();
	}
});
//--></script> 
<script type="text/javascript"><!--
$('#shipping-address select[name=\'country_id\']').bind('change', function() {
	if (this.value == '') return;
	$.ajax({
		url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('#shipping-address select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/vigo/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#shipping-postcode-required').show();
			} else {
				$('#shipping-postcode-required').hide();
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
			
			$('#shipping-address select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('#shipping-address select[name=\'country_id\']').trigger('change');
//--></script>