<div class="block block-layered-nav">
    <div class="block-content">
        <div class="akordeon narrow-by-list">
        	<div class="box-filter" >
        	<?php foreach ($filter_groups as $filter_group) { ?>
        	<div class="akordeon-item">
                <div class="akordeon-item-head">
                    <div class="akordeon-item-head-container">
                        <div class="akordeon-heading">
                            <?php echo $filter_group['name']." "; ?>
                        	<?php echo $heading_title; ?>
                        </div>
                    </div>
                </div>
                <div class="akordeon-item-body">
                	<div class="akordeon-item-content">
                        <ul>
                          <?php foreach ($filter_group['filter'] as $filter) { ?>
                          <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
                          <li>
                            <input type="checkbox" value="<?php echo $filter['filter_id']; ?>" id="filter<?php echo $filter['filter_id']; ?>" checked="checked" />
                            <label for="filter<?php echo $filter['filter_id']; ?>" ><?php echo $filter['name']; ?></label>
                          </li>
                          <?php } else { ?>
                          <li>
                            <input type="checkbox" value="<?php echo $filter['filter_id']; ?>" id="filter<?php echo $filter['filter_id']; ?>"/>
                            <label for="filter<?php echo $filter['filter_id']; ?>" ><?php echo $filter['name']; ?></label>
                          </li>
                          <?php } ?>
                          <?php } ?>
                        </ul>
                    </div>
                </div>
         	</div>
            <?php } ?>
        </div>
        </div>
        
    </div>
</div>
<div class="refinebtn">
<a id="button-filter" class="button button-color"><?php echo $button_filter; ?></a>
</div>
<script type="text/javascript"><!--
$('#button-filter').bind('click', function() {
	filter = [];
	
	$('.box-filter input[type=\'checkbox\']:checked').each(function(element) {
		filter.push(this.value);
	});
	
	location = '<?php echo $action; ?>&filter=' + filter.join(',');
});
//--></script> 


<script type="text/javascript">
jQuery(document).ready(function(){
jQuery('.akordeon.narrow-by-list').akordeon({ buttons: true, toggle: true, expandedAll:true });
});
</script>                                                           


