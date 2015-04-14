<div class="block block-personal-info">
	<div class="block-title">
    	<strong><span><?php echo $text_your_details; ?></span></strong>
    </div>
	<div class="block-content">
    	<ul class="form-list">
            <li class="fields">
            	<div class="customer-name">
                    <div class="field name-firstname col-md-6 col-sm-6 col-xs-12">
                    	<div class="input-box">
                        	<input type="text" name="firstname" value="" class="input-text required-entry" placeholder="<?php echo $entry_firstname; ?>" */>
                        </div>
                    </div>
                    <div class="field name-lastname col-md-6 col-sm-6 col-xs-12">
                    	<div class="input-box">
                        	<input type="text" name="lastname" value="" class="input-text required-entry" placeholder="<?php echo $entry_lastname; ?> *"/>
                        </div>
                    </div>
                </div>
            </li>
            <li>
            	<div class="input-box input-email">
                	<input type="text" name="email" value="" class="input-text required-entry" placeholder="<?php echo $entry_email; ?> *"/>
                </div>
            </li>
            <li class="fields">
            	<div class="field">
                	<div class="input-box input-phone">
                    	<input type="text" name="telephone" value="" class="input-text required-entry" placeholder="<?php echo $entry_telephone; ?> *"/>
                    </div>
                </div>
                <div class="field">
                	<div class="input-box input-fax">
                    	<input type="text" name="fax" value="" class="input-text required-entry" placeholder="<?php echo $entry_fax; ?>"/>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</div>
<div class="block block-address-info">
    <div class="block-title">
    	<strong><span><?php echo $text_your_password; ?></span></strong>
    </div>
    <div class="block-content">
    	<ul class="form-list">
            <li class="fields">
                <div class="field">
                	<div class="input-box input-password">
                    	<input type="password" name="password" value="" class="input-text required-entry" placeholder="<?php echo $entry_password; ?> *"/>
                    </div>
                </div>
                <div class="field">
                	<div class="input-box input-password">
                    	<input type="password" name="confirm" value="" class="input-text required-entry" placeholder="<?php echo $entry_confirm; ?> *"/>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</div>
<div class="block block-address-info">
    <div class="block-title">
    	<strong><span><?php echo $text_your_address; ?></span></strong>
    </div>
    <div class="block-content">
    	<ul class="form-list">
            <li class="fields">
                <div class="field">
                	<div class="input-box input-company">
                    	<input type="text" name="company" value="" class="input-text required-entry" placeholder="<?php echo $entry_company; ?> *"/>
                    </div>
                </div>
                <div class="field">
                	<div class="input-box input-companyid">
                    	<input type="text" name="company_id" value="" class="input-text required-entry" placeholder="<?php echo $entry_company_id; ?> *"/>
                    </div>
                </div>
            </li>
            <li style="display: <?php echo (count($customer_groups) > 1 ? 'table-row' : 'none'); ?>;" class="control">
  <?php echo $entry_customer_group; ?><br />
  <?php foreach ($customer_groups as $customer_group) { ?>
  <?php if ($customer_group['customer_group_id'] == $customer_group_id) { ?>
  <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" id="customer_group_id<?php echo $customer_group['customer_group_id']; ?>" checked="checked" class="radio"/>
  <label for="customer_group_id<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></label>
  
  <?php } else { ?>
  <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" id="customer_group_id<?php echo $customer_group['customer_group_id']; ?>" class="radio"/>
  <label for="customer_group_id<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></label>
  
  <?php } ?>
  <?php } ?>
  </li>
  			<li id="tax-id-display">
	<input type="text" name="tax_id" value="" class="large-field" placeholder="<?php echo $entry_tax_id; ?> *"/>
</li>
			<li class="fields">
                <div class="field">
                	<div class="input-box input-address">
                    	<input type="text" name="address_1" value="" class="input-text required-entry" placeholder="<?php echo $entry_address_1; ?> *"/>
                    </div>
                </div>
                <div class="field">
                	<div class="input-box input-address">
                    	<input type="text" name="address_2" value="" class="input-text required-entry" placeholder="<?php echo $entry_address_2; ?>"/>
                    </div>
                </div>
            </li>
            <li class="fields">
                <div class="field">
                	<div class="input-box input-city">
                    	<input type="text" name="city" value="" class="input-text required-entry" placeholder="<?php echo $entry_city; ?> *"/>
                    </div>
                </div>
                <div class="field">
                	<div class="input-box input-postcode">
                    	<input type="text" name="postcode" value="<?php echo $postcode; ?>" class="input-text required-entry" placeholder="<?php echo $entry_postcode; ?> *"/>
                    </div>
                </div>
            </li>
            <li class="fields">
                <div class="field">
                	<div class="input-box input-country">
                    	<select name="country_id" class="large-field">
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
                    	<select name="zone_id" class="large-field">
</select>
                    </div>
                </div>
            </li>
			
		</ul>
    </div>
</div>
<div class="block block-newslatter-info">
    <div class="block-title">
    	<strong><span><?php echo $text_newslatter; ?></span></strong>
    </div>
    <div class="block-content">
    	<ul class="form-list">
        	<li class="control">
            	<div class="input-box">
                	<input type="checkbox" name="newsletter" value="1" />
                </div>
                <label for="newsletter"><?php echo $entry_newsletter; ?></label>
            </li>
            <?php if ($shipping_required) { ?>
            <li class="control">
            	<div class="input-box">
                	<input type="checkbox" name="shipping_address" value="1" id="shipping" checked="checked" />
                </div>
                <label for="shipping"><?php echo $entry_shipping; ?></label>
            </li>
            <?php } ?>
        </ul>
    </div>
</div>

<?php if ($text_agree) { ?>
<div class="buttons-set">
	<ul class="form-list">
    	<li class="control">
        	<div class="input-box">
            	<input type="checkbox" name="agree" value="1" />
            </div>
            <?php echo $text_agree; ?>
        </li>
    </ul>
	<p class="required"><php echo $text_required_fields; ?></p>
    <button value="<?php echo $button_continue; ?>" type="button" class="button" id="button-register">
    	<span><span><?php echo $button_continue; ?></span></span></button>
</div>

<?php } else { ?>
<div class="buttons-set">
	<button type="button" value="<?php echo $button_continue; ?>" id="button-register" class="button" >
    	<span><span><?php echo $button_continue; ?></span></span>
    </button>
</div>
<?php } ?>
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
<script type="text/javascript"><!--
$('.colorbox').colorbox({
	width: 640,
	height: 480
});
//--></script> 