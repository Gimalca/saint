<div class="col2-set">
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
                        <input type="text" name="firstname" id="input-emailn"  value="" class="input-text required-entry" placeholder="<?php echo $entry_firstname; ?> *"/>
						</div>
                    </div>
                </div>
                <div class="customer-name">
                    <div class="field name-lastname">
                    	<div class="input-box">
                        <input type="text" name="lastname" id="input-emailn"  value="" class="input-text required-entry" placeholder="<?php echo $entry_lastname; ?> *"/>
						</div>
                    </div>
                </div>
            </li>
            <li class="fields">
            	<div class="input-box input-email">
                <input type="text" name="email" id="input-emailn"  value="" class="input-text required-entry" placeholder="<?php echo $entry_email; ?> *"/>
                </div>
            </li>
            <li class="fields">
                <div class="field">
                	<div class="input-box input-address">
                    <input type="text" name="address_1" id="input-emailn"  value="" class="input-text required-entry" placeholder="<?php echo $entry_address_1; ?> *"/>
                    </div>
                </div>
                <div class="field">
                	<div class="input-box input-address">
                    <input type="text" name="address_2" id="input-emailn"  value="" class="input-text required-entry" placeholder="<?php echo $entry_address_2; ?>"/>
                    </div>
                </div>
            </li>
            <li class="fields">
                <div class="field">
                	<div class="input-box input-city">
                    	<input type="text" name="city" id="input-emailn"  value="" class="input-text required-entry" placeholder="<?php echo $entry_city; ?> *"/>
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
                        <input type="text" id="input-emailn"  name="postcode" value="" class="input-text required-entry" placeholder="<?php echo $entry_postcode; ?> *"/>
                    </div>
                </div>
            </li>
            
            
            <li class="fields">
            	<div class="field">
                	<div class="input-box input-phone">
                    <input type="text" id="input-emailn"  name="telephone" value="" class="input-text required-entry" placeholder="<?php echo $entry_telephone; ?> *"/>
                    </div>
                </div>
                
            </li>
        </ul>
    
    <div class="block block-address-info">
    <div class="block-title">
    	<strong><span><?php echo $text_your_password; ?></span></strong>
    </div>
    <div class="block-content">
    	<ul class="form-list">
            <li class="fields">
                <div class="field">
                	<div class="input-box input-password">
                    	<input type="password" id="input-emailn" name="password" value="" class="input-text required-entry" placeholder="<?php echo $entry_password; ?> *"/>
                    </div>
                </div>
                <div class="field">
                	<div class="input-box input-password">
                    	<input type="password" id="input-emailn" name="confirm" value="" class="input-text required-entry" placeholder="<?php echo $entry_confirm; ?> *"/>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</div>
        </div>

    <div class="dividern col-md-2 col-sm-2 col-xs-12" id="personales">

    </div>

<div class="block block-newslatter-info col-md-5">
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
            <?php if ($text_agree) { ?>
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
        <?php } else { ?>
	<button type="button" value="<?php echo $button_continue; ?>" id="button-register" class="button" >
    	<span><span><?php echo $button_continue; ?></span></span>
    </button>
<?php } ?>
    </div>

<div class="buttons-set">
	<ul class="form-list">
    	
        </ul>
	
</div>


</div>
</div>


<script type="text/javascript"><!--

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