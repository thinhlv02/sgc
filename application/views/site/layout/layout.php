<!DOCTYPE html>
<html lang="en">
<head>
    <?php $this->load->view('site/layout/head')?>
</head>
<body>
<?php $this->load->view('site/layout/menu')?>
<!--<div class="main-content">-->
    <?php $this->load->view('site/layout/banner')?>
    <?php $this->load->view($temp)?>
    <?php $this->load->view('site/layout/footer')?>
<!--</div>-->
</body>
</html>