<html>
	<head>
		<meta content="minimum-scale=1.0, width=device-width, maximum-scale=1.0, user-scalable=no" name="viewport" />
		<title><?php echo $title; ?></title>
		<meta name="resource-type" content="document" />
		<meta name="robots" content="all, index, follow"/>
		<meta name="googlebot" content="all, index, follow" />
    <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300italic,300,400italic,700,700italic&subset=latin,vietnamese' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="<?php echo base_url();?>assets/themes/default/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?php echo base_url();?>assets/themes/default/js/autocomplete/jquery-ui.css"/>
    <link rel="stylesheet" href="<?php echo base_url();?>assets/themes/default/css/table.css">
    <link rel="stylesheet" href="<?php echo base_url();?>assets/themes/default/css/pagination.css">
    <link rel="stylesheet" href="<?php echo base_url();?>assets/themes/default/css/loading.css">
    <link rel="stylesheet" href="<?php echo base_url();?>assets/themes/default/css/loading-2.css">
    <link rel="stylesheet" href="<?php echo base_url();?>assets/themes/default/js/notification/amaran.min.css">
    <link rel="stylesheet" href="<?php echo base_url();?>assets/themes/default/css/animate.css">
    <link rel="stylesheet" href="<?php echo base_url();?>assets/themes/default/js/wave-effect/waves.min.css">
    <link rel="stylesheet" href="<?php echo base_url();?>assets/themes/default/css/style.css">
    <link rel="stylesheet" href="<?php echo base_url();?>assets/themes/default/css/responsive.css">
        
    <script src="<?php echo base_url();?>assets/themes/default/js/jquery.js"></script>
    <script>
        var base_url = '<?php echo base_url() ?>';
        var ckeditor_congig = {
            base_url : '<?php echo base_url() ?>',
            connector: 'ckfinder/connector',
            html_path: 'ckfinder/html'

        }
    </script>
    <script src="<?php echo base_url();?>assets/themes/default/js/wave-effect/waves.min.js"></script>
    <script src="<?php echo base_url();?>assets/themes/default/js/jquery.nicescroll.js"></script>
    <script src="<?php echo base_url();?>assets/themes/default/js/jquery.twbsPagination.min.js"></script>
    <script src="<?php echo base_url();?>assets/themes/default/js/highcharts.js"></script>
    <script src="<?php echo base_url();?>assets/themes/default/js/autocomplete/jquery-ui.js"></script>


    <!-- Validate -->
    <script src="<?php echo base_url();?>assets/themes/default/js/notification/jquery.amaran.min.js"></script>
    <script src="<?php echo base_url();?>assets/themes/default/js/validate/jquery.validate.js"></script>
    <script src="<?php echo base_url();?>assets/themes/default/js/validate/additional-methods.js"></script>
    <script src="<?php echo base_url();?>assets/themes/default/js/hasChange.js"></script>
    <!-- End Validate -->

    <script src="<?php echo base_url();?>assets/themes/default/js/confirmon/sweetalert.min.js"></script>
    <link rel="stylesheet" href="<?php echo base_url();?>assets/themes/default/js/confirmon/sweetalert.css">
    <!-- pickadate -->
    <link rel="stylesheet" href="<?php echo base_url();?>assets/themes/default/js/pickadate/themes/default.css">
    <link rel="stylesheet" href="<?php echo base_url();?>assets/themes/default/js/pickadate/themes/default.date.css">
    <script src="<?php echo base_url();?>assets/themes/default/js/pickadate/picker.js"></script>
    <script src="<?php echo base_url();?>assets/themes/default/js/pickadate/picker.date.js"></script>
    <script src="<?php echo base_url();?>assets/themes/default/js/pickadate/translations/vi_VN.js"></script>
    <!-- End pickadate -->

    <link rel="stylesheet" href="<?php echo base_url();?>assets/themes/default/js/zurb/responsive-tables.css">
    <script src="<?php echo base_url();?>assets/themes/default/js/zurb/responsive-tables.js"></script>
    
    <link rel="stylesheet" href="<?php echo base_url();?>assets/themes/default/js/jqTree/jqtree.css">
    <script src="<?php echo base_url();?>assets/themes/default/js/jqTree/tree.jquery.js"></script>

    <!-- google map -->
    <script src="<?php echo base_url();?>assets/themes/default/js/geocomplete.js"></script>
    <script src="<?php echo base_url();?>assets/themes/default/js/wow/wow.js"></script>

<?php
    if(!empty($meta))
    foreach($meta as $name=>$content){
        echo "\n\t\t";
        ?><meta name="<?php echo $name; ?>" content="<?php echo $content; ?>" /><?php
             }
    echo "\n";
 
    if(!empty($canonical))
    {
        echo "\n\t\t";
        ?><link rel="canonical" href="<?php echo $canonical?>" /><?php
 
    }
    echo "\n\t";
 
    foreach($css as $file){
         echo "\n\t\t";
        ?><link rel="stylesheet" href="<?php echo $file; ?>" type="text/css" /><?php
    } echo "\n\t";
    foreach($js as $file){
            echo "\n\t\t";
            ?><script src="<?php echo $file; ?>"></script><?php
    } echo "\n\t";
?>
  
  <script src="<?php echo base_url();?>assets/themes/default/js/myscript.js"></script>
  <script>
  new WOW().init();
  </script>
</head>
<body class="sidebar-mini">
	 <div id="to_top"></div>
	  <div class="overlays text-center"><div class="loading-container"><div class="loading"></div><div id="loading-text">loading</div></div></div>
	  <?php echo $output;?>

    <script type="text/javascript">
    // This is ok.
    Waves.init();
    Waves.attach('.btn');
</script>  
</body>
</html>
