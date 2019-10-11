<div class="col-md-3 left_col">
    <div class="left_col scroll-view">
        <div class="navbar nav_title" style="border: 0;">
            <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>SGC Manage</span></a>
        </div>

        <div class="clearfix"></div>

        <!-- menu profile quick info -->
        <div class="profile clearfix">
            <div class="profile_pic">
                <img src="<?php echo admin_theme() ?>production/images/img.jpg" alt="..."
                     class="img-circle profile_img">
            </div>
            <div class="profile_info">
                <span>Xin chào,</span>
                <h2><?php echo $admin->fullname ?></h2>
            </div>
        </div>
        <!-- /menu profile quick info -->

        <br/>

        <!-- sidebar menu -->
        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
            <div class="menu_section">
                <h3>Menu</h3>
                <ul class="nav side-menu">
                    <li><a href="<?php echo admin_url('product') ?>"><i class="fa fa-product-hunt" aria-hidden="true"></i>
                            Sản phẩm & dịch vụ</a></li>
                    <li><a href="<?php echo admin_url('news') ?>"><i class="fa fa-newspaper-o" aria-hidden="true"></i>
                            Tin tức, sự kiện</a></li>
                    <li>
                        <a href="<?php echo admin_url('content') ?>"><i class="fa fa-file-text-o" aria-hidden="true"></i>
                            Nội dung</a>
                    </li>
                    <li><a href="<?php echo admin_url('feedback') ?>"><i class="fa fa-envelope-o" aria-hidden="true"></i>
                            Hòm thư</a></li>
                    <li><a href="<?php echo admin_url('contact') ?>"><i class="fa fa-info-circle" aria-hidden="true"></i>
                            Liên hệ</a></li>
                    <li><a href="<?php echo admin_url('recruitment') ?>"><i class="fa fa-handshake-o" aria-hidden="true"></i>
                            Tuyển dụng</a></li>
                    <li><a href="<?php echo admin_url('email') ?>"><i class="fa fa-paper-plane-o" aria-hidden="true"></i>
                            Email nhận tin</a></li>
                </ul>
            </div>

        </div>
        <!-- /sidebar menu -->

        <!-- /menu footer buttons -->
        <div class="sidebar-footer hidden-small">
            <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="Logout">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
            </a>
        </div>
        <!-- /menu footer buttons -->
    </div>
</div>