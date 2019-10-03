<!--<div class="sub-nav">-->
<!--    <ul>-->
<!--        <li class="li-home" title="Trang chủ"><i class="fa fa-home" aria-hidden="true"></i></li>-->
<!--        <li class="li-intro" title="Giới thiệu"><i class="fa fa-info-circle" aria-hidden="true"></i></li>-->
<!--        <li class="li-product" title="Sản phẩm"><i class="fa fa-product-hunt" aria-hidden="true"></i></li>-->
<!--        <li class="li-recruitment" title="Tuyển dụng"><i class="fa fa-handshake-o" aria-hidden="true"></i></li>-->
<!--        <li class="li-contact" title="Liên hệ"><i class="fa fa-envelope-o" aria-hidden="true"></i></li>-->
<!--    </ul>-->
<!--</div>-->
<div class="sub-nav">
    <div class="logo"><img src="<?php echo base_url('public/images/logo.png')?>"></div>
    <div style="float: right; line-height: 60px; margin-right: 20px">
        <a href="<?php echo base_url('vn/'.getLastUri())?>"><img src="<?php echo public_url('images/flag_vn.png')?>" style="width: 33px; height: 22px; <?php echo $language == 'vn' ? 'border: 3px solid #4dbb6d' : 'border: 3px solid transparent;'?>"></a>
        <a href="<?php echo base_url('en/'.getLastUri())?>"><img src="<?php echo public_url('images/flag_us.png')?>" style="width: 33px; height: 22px; <?php echo $language == 'en' ? 'border: 3px solid #4dbb6d' : 'border: 3px solid transparent;'?>"></a>
    </div>
    <div class="nav-small">
        <i class="fa fa-bars" aria-hidden="true"></i>
        <ul class="ul-sm">
            <li><a href="<?php echo base_url()?>"><?php echo $this->lang->line('home'); ?></a></li>
            <li><a href="<?php echo base_url('gioi-thieu.html')?>"><?php echo $this->lang->line('about'); ?></a></li>
            <li><a href="<?php echo base_url('tin-tuc.html')?>"><?php echo $this->lang->line('news_menu'); ?></a></li>
            <li><a href="<?php echo base_url('san-pham.html')?>"><?php echo $this->lang->line('product'); ?></a></li>
            <li><a href="<?php echo base_url('tuyen-dung.html')?>"><?php echo $this->lang->line('recruit'); ?></a></li>
            <li><a href="<?php echo base_url('lien-he.html')?>"><?php echo $this->lang->line('contact'); ?></a></li>
        </ul>
    </div>
    <ul class="ul-large">
        <li class="li-home <?php echo isset($li_home) ? 'menu-active' : ''?>" title="Trang chủ"><a href="<?php echo base_url()?>"><?php echo $this->lang->line('home'); ?></a></li>
        <li class="li-intro <?php echo isset($li_intro) ? 'menu-active' : ''?>" title="Giới thiệu"><a href="<?php echo base_url('gioi-thieu.html')?>"><?php echo $this->lang->line('about'); ?></a></li>
        <li class="li-news <?php echo isset($li_news) ? 'menu-active' : ''?>" title="Tin tức"><a href="<?php echo base_url('tin-tuc.html')?>"><?php echo $this->lang->line('news_menu'); ?></a></li>
        <li class="li-product <?php echo isset($li_product) ? 'menu-active' : ''?>" title="Sản phẩm"><a href="<?php echo base_url('san-pham.html')?>"><?php echo $this->lang->line('product'); ?></a></li>
        <li class="li-recruitment <?php echo isset($li_recruitment) ? 'menu-active' : ''?>" title="Tuyển dụng"><a href="<?php echo base_url('tuyen-dung.html')?>"><?php echo $this->lang->line('recruit'); ?></a></li>
        <li class="li-contact <?php echo isset($li_contact) ? 'menu-active' : ''?>" title="Liên hệ"><a href="<?php echo base_url('lien-he.html')?>"><?php echo $this->lang->line('contact'); ?></a></li>
    </ul>

</div>