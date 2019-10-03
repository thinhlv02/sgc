<section class="product">
    <div class="container">
        <div class="col-sm-12 col-md-12">
            <div class="title-section">Sản phẩm</div>
            <!--            <div class="owl-carousel owl-carousel-product">-->
            <div class="">
                <?php foreach ($product as $row){ ?>
                    <div class="col-xs-12 col-sm-4 col-md-3 item-product">
                        <img src="<?php echo public_url('images/news/'.$row->icon)?>">
                        <div class="item-product-hover" data-toggle="modal" data-target="#modal-product-<?php echo $row->id?>">
                            <i class="fa fa-plus item-plus" aria-hidden="true"></i>
                        </div>
                        <div class="item-product-name"><?php echo $row->name?></div>
                    </div>
                    <div class="modal fade" role="dialog" id="modal-product-<?php echo $row->id?>">
                        <div class="modal-content modal-nds">
                            <div class="close-modal btn btn-success" data-dismiss="modal">Đóng</div>
                            <div class="container">
                                <div class="content-p">
                                    <?php echo $row->content?>
                                </div>
                            </div>
                            <!--                            <div class="close-footer btn-lg btn btn-success" data-dismiss="modal">Đóng</div>-->
                        </div>
                    </div>
                <?php }?>
            </div>
        </div>
    </div>
</section>