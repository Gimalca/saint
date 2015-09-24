<?php echo $header; ?><?php echo $column_left; ?>
<div id="content" class="main-container col2-left-layout"><?php echo $content_top; ?>

    <div class="breadcrumbs">
        <div class="container">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
            <?php } ?>
        </div>
    </div>
    <div class="myblog main container">
        <div class=" col-md-12">
            <div class="my-account">
                <div class="account-login">
                    <?php
                    $cols = $config->get('cat_columns_leading_blogs');

                    if( count($leading_blogs) ) { ?>


                    <?php foreach( $leading_blogs as $key => $blog ) { $key = $key + 1;?>
                    <div class="col-md-3 col-xs12 col-lg-3">
                        <?php require( '_item.tpl' ); ?>
                    </div>
                    <?php if( ( $key%$cols==0 || $cols == count($leading_blogs)) ){ ?>
                    <?php } ?>
                    <?php } ?>
                    <?php } ?>
                    <?php
                    $cols = $config->get('cat_columns_secondary_blogs');
                    $cols = !empty($cols)?$cols:1;
                    if ( count($secondary_blogs) ) { ?>

                    <?php foreach( $secondary_blogs as $key => $blog ) {  $key = $key+1; ?>
                    <div class="col-md-3 col-xs12 col-lg-3">
                        <?php require( '_item.tpl' ); ?>
                    </div>
                    <?php if( ( $key%$cols==0 || $cols == count($leading_blogs)) ){ ?>
                    <?php } ?>
                    <?php } ?>
                    <?php } ?>

                    <div class="pav-pagination pagination"><?php echo $pagination;?></div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {  
            $('.thumbnail').hover(
                    function () {
                        $(this).find('.caption').slideUp(250); //.fadeIn(250)
                    },
                    function () {
                        $(this).find('.caption').slideDown(250); //.fadeOut(205)
                    }
            );
        });
    </script>
    <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>