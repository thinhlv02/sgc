<meta charset="UTF-8">
<title><?php echo isset($title) ? $title : 'SGC Media ., JSC'?></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="<?php echo base_url('public/css/style.css'); ?>">
<link href="<?php echo base_url('public/css/responsive.css'); ?>" rel="stylesheet">
<?php if(isset($css)){
    foreach ($css as $row){?>
        <link rel="stylesheet" href="<?php echo base_url('public/css/'.$row); ?>">
<?php }}?>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="<?php echo base_url('public/js/page.js'); ?>"></script>

<?php if(isset($js)){
    foreach ($js as $row){?>
        <script src="<?php echo base_url('public/js/'.$row); ?>"></script>
    <?php }}?>