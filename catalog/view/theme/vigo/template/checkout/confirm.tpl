<?php if (!isset($redirect)) {  //print_r($confirm_data)?>

<div class="left">
     
	<ul >
	<!-- mp_trans_disable_start -->
		<li class="name">
			<h5><?php echo $confirm_data['firstname'].' '.$confirm_data['lastname'] ?></h5>
		</li>
		
		<li class="addr1"><?php echo $confirm_data['payment_address_1'] ?></li>
		
		<li class="city-state-zip">
			<?php echo $confirm_data['payment_city'].', '.$confirm_data['payment_zone'].' '.$confirm_data['payment_postcode'] ?>
			
				
		</li>
		
		<li class="country" data-shipcountry="VE"><?php echo $confirm_data['payment_country'] ?></li>
		<!-- mp_trans_disable_end -->
	</ul>
</div>

<div class="right col-lg-6 ">
    
  <ul id="" >
        
        <li class="name">
            <h5><?php echo $confirm_data['payment_method'] ?></h5>
        </li>
        <li class="eta" > <?php echo $confirm_data['shipping_method'] ?></li>
    </ul>

</div>

<div id="checkout-review-load" class="order-review checkout-product">
	<div id="checkout-review-table-wrapper">
  <table id="checkout-review-table" class="data-table">
  	<colgroup>
    	<col />
        <col width="1" />
        <col width="1" />
        <col width="1" />
        <col width="1" />
    </colgroup>
    <thead>
    	<tr class="for-mobile first">
			<th class="last" colspan="5"><span><?php echo $text_product;?></span></th>
		</tr>
      <tr class="for-desktop last">
        <th rowspan="1"><span><?php echo $column_name; ?></span></th>
        <th class="a-center" colspan="1"><span><?php echo $column_model; ?></span></th>
        <th class="a-center" rowspan="1"><span><?php echo $column_quantity; ?></span></th>
        <th class="a-center" colspan="1"><span><?php echo $column_price; ?></span></th>
        <th class="a-center last" rowspan="1"><span><?php echo $column_total; ?></span></th>
      </tr>
    </thead>
    <tbody>
      <?php foreach ($products as $product) { ?>  
      <?php if($product['recurring']): ?>
        <tr>
            <td colspan="6" style="border:none;"><image src="catalog/view/theme/vigo/image/reorder.png" alt="" title="" style="float:left;" /><span style="float:left;line-height:18px; margin-left:10px;"> 
                <strong><?php echo $text_recurring_item ?></strong>
                <?php echo $product['profile_description'] ?>
                </span>
            </td>
        </tr>
      <?php endif; ?>
      <tr class="for-desktop">
        <td class="a-center">
        	<a href="<?php echo $product['href']; ?>">
            	<h3 class="product-name"><?php echo $product['name']; ?></h3>
            </a>
           	<dl class="item-options">
          <?php foreach ($product['option'] as $option) { ?>
          	<dt><?php echo $option['name']; ?>:</dt><dd> <?php echo $option['value']; ?></dd>
          <?php } ?>
          <?php if($product['recurring']): ?>
          	<dt><?php echo $text_payment_profile ?>:</dt><dd> <?php echo $product['profile_name'] ?></dd>
          <?php endif; ?>
          </dl>
        </td>
        <td class="a-center"><?php echo $product['model']; ?></td>
        <td class="a-center"><?php echo $product['quantity']; ?></td>
        <td class="a-center"><span class="cart-price">
		<span class="price"><?php echo $product['price']; ?></span></span></td>
        <td class="a-center last"><span class="cart-price">
		<span class="price"><?php echo $product['total']; ?></span></span></td>
      </tr>
      <tr class="for-mobile even">
        <td class="a-center last" colspan="5">
        	<div class="a-center">
            	<a href="<?php echo $product['href']; ?>">
            	<h3 class="product-name"><?php echo $product['name']; ?></h3>
                </a>
                <dl class="item-options">
              <?php foreach ($product['option'] as $option) { ?>
                <dt><?php echo $option['name']; ?>:</dt><dd> <?php echo $option['value']; ?></dd>
              <?php } ?>
              <?php if($product['recurring']): ?>
                <dt><?php echo $text_payment_profile ?>:</dt><dd> <?php echo $product['profile_name'] ?></dd>
              <?php endif; ?>
              </dl>
            </div>
            <div class="a-center">
                <span class="label"> <?php echo $column_model; ?> : </span>
                <?php echo $product['model']; ?>
            </div>
            <div class="a-center">
                <span class="label"><?php echo $column_quantity; ?> : </span>
                <?php echo $product['quantity']; ?>
            </div>
            <div class="a-center sub-total">
                <span class="label"><?php echo $column_price; ?> : </span>
                <span class="cart-price">
                <span class="price"><?php echo $product['price']; ?></span>
                </span>
            </div>
            <div class="a-center sub-total">
                <span class="label"><?php echo $column_total; ?> : </span>
                <span class="cart-price">
                <span class="price"><?php echo $product['total']; ?></span>
                </span>
            </div>
        </td>
      </tr>
      <?php } ?>
      <?php foreach ($vouchers as $voucher) { ?>
      <tr>
        <td class="name"><?php echo $voucher['description']; ?></td>
        <td class="model"></td>
        <td class="quantity">1</td>
        <td class="price"><?php echo $voucher['amount']; ?></td>
        <td class="total"><?php echo $voucher['amount']; ?></td>
      </tr>
      <?php } ?>
    </tbody>
    <tfoot>
      <?php foreach ($totals as $total) { ?>
      <tr>
        <td colspan="4" class="price a-right"><b><?php echo $total['title']; ?>:</b></td>
        <td class="total a-right last"><span class="price"><?php echo $total['text']; ?></span></td>
      </tr>
      <?php } ?>
    </tfoot>
  </table>
</div>
</div>
<div class="payment" id="checkout-review-submit">
	<div id="review-buttons-container" class="buttons-set">
    	<?php echo $payment; ?>
    </div>
</div>
<?php } else { ?>
<script type="text/javascript"><!--
location = '<?php echo $redirect; ?>';
//--></script> 
<?php } ?>