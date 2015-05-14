<div>
<div class="block block-personal-info">
    <div class="col-md-1 col-sm-1"></div>
    <div class="block-content col-md-4">
    <div class="block-title">
    	<strong><span><?php echo $text_your_details; ?></span></strong>
    </div>    
    	<ul class="form-list">
            <li class="fields">
                <div class="field">
                    <div class="input-box input-country">
                        <select name="country_id" id="input-emailn" class="large-field">
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
            </li>
            <li class="field">
            	<div class="customer-name">
                    <div class="field name-firstname">
                    	<div class="input-box">
                        <input type="text" name="firstname" id="input-emailn"  value="<?php echo $firstname; ?>" class="input-text required-entry" placeholder="<?php echo $entry_firstname; ?> *"/>
						</div>
                    </div>
                </div>
                <div class="customer-name">
                    <div class="field name-lastname">
                    	<div class="input-box">
                        <input type="text" name="lastname" id="input-emailn"  value="<?php echo $lastname; ?>" class="input-text required-entry" placeholder="<?php echo $entry_lastname; ?> *"/>
						</div>
                    </div>
                </div>
            </li>
            <li class="fields">
            	<div class="input-box input-email">
                <input type="text" name="email" id="input-emailn"  value="<?php echo $email; ?>" class="input-text required-entry" placeholder="<?php echo $entry_email; ?> *"/>
                </div>
            </li>
            <li class="fields">
                <div class="field">
                	<div class="input-box input-address">
                    <input type="text" name="address_1" id="input-emailn"  value="<?php echo $address_1; ?>" class="input-text required-entry" placeholder="<?php echo $entry_address_1; ?> *"/>
                    </div>
                </div>
                <div class="field">
                	<div class="input-box input-address">
                    <input type="text" name="address_2" id="input-emailn"  value="<?php echo $address_2; ?>" class="input-text required-entry" placeholder="<?php echo $entry_address_2; ?>"/>
                    </div>
                </div>
            </li>
            <li class="fields">
                <div class="field">
                	<div class="input-box input-city">
                    	<input type="text" name="city" id="input-emailn"  value="<?php echo $city; ?>" class="input-text required-entry" placeholder="<?php echo $entry_city; ?> *"/>
                    </div>
                </div>
            </li>
            <li class="fields">
                <div class="field">
                    <div class="input-box input-region">
                        <select name="zone_id" class="large-field" id="input-emailn" >
                        </select>
                    </div>
                </div>
            </li>
            <li class="fields">
                <div class="field">
                    <div class="input-box input-postcode">
                        <input type="text" id="input-emailn"  name="postcode" value="<?php echo $postcode; ?>" class="input-text required-entry" placeholder="<?php echo $entry_postcode; ?> *"/>
                    </div>
                </div>
            </li>
            
            
            <li class="fields">
            	<div class="field">
                	<div class="input-box input-phone">
                    <input type="text" id="input-emailn"  name="telephone" value="<?php echo $telephone; ?>" class="input-text required-entry" placeholder="<?php echo $entry_telephone; ?> *"/>
                    </div>
                </div>
                
            </li>
        </ul>
    </div>
</div>
    <div class="dividern col-md-2 col-sm-2 col-xs-12" id="personales">

    </div>

<?php if ($shipping_required) { ?>

  <?php if ($shipping_address) { ?>
  <input type="checkbox" name="shipping_address" value="1" id="shipping" checked="checked" />
  <?php } else { ?>
  <input type="checkbox" name="shipping_address" value="1" id="shipping" />
  <?php } ?>
  <label for="shipping"><?php echo $entry_shipping; ?></label>
  
<?php } ?>
<div class="buttons-set" style="text-align: right;">
    <button type="button" value="<?php echo $button_continue; ?>" id="button-guest" class="button" style="float:none;" >
		<span><span><?php echo $button_continue; ?></span></span>
    </button>
</div>
</div>
<div>dbdgdgbffdgb</div>
<script type="text/javascript"><!--
$('#payment-address input[name=\'customer_group_id\']:checked').live('change', function() {
	var customer_group = [];
	
<?php foreach ($customer_groups as $customer_group) { ?>
	customer_group[<?php echo $customer_group['customer_group_id']; ?>] = [];
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_display'] = '<?php echo $customer_group['company_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_required'] = '<?php echo $customer_group['company_id_required']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_display'] = '<?php echo $customer_group['tax_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_required'] = '<?php echo $customer_group['tax_id_required']; ?>';
<?php } ?>	

	if (customer_group[this.value]) {
		if (customer_group[this.value]['company_id_display'] == '1') {
			$('#company-id-display').show();
		} else {
			$('#company-id-display').hide();
		}
		
		if (customer_group[this.value]['company_id_required'] == '1') {
			$('#company-id-required').show();
		} else {
			$('#company-id-required').hide();
		}
		
		if (customer_group[this.value]['tax_id_display'] == '1') {
			$('#tax-id-display').show();
		} else {
			$('#tax-id-display').hide();
		}
		
		if (customer_group[this.value]['tax_id_required'] == '1') {
			$('#tax-id-required').show();
		} else {
			$('#tax-id-required').hide();
		}	
	}
});

$('#payment-address input[name=\'customer_group_id\']:checked').trigger('change');
//--></script> 
<script type="text/javascript"><!--
$('#payment-address select[name=\'country_id\']').bind('change', function() {
	if (this.value == '') return;
	$.ajax({
		url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('#payment-address select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/vigo/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#payment-postcode-required').show();
			} else {
				$('#payment-postcode-required').hide();
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
			
			$('#payment-address select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('#payment-address select[name=\'country_id\']').trigger('change');
//--></script>