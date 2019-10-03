
<section class="news">
    <div class="container">
        <div class="col-sm-12 col-md-12">
            <div class="title-section"><h2><?php echo $this->lang->line('news'); ?></h2></div>
            <div >
                <?php foreach ($news as $row){ ?>
                    <a href="<?php echo base_url('tin-tuc/'.create_slug($row->title).'-'.$row->id.'.html')?>">
                    <div class="col-xs-12 col-sm-12 col-md-6">
                        <div class="item-news">
                            <div class="img-news col-xs-12 col-sm-12 col-md-6">
                                <img src="<?php echo base_url('public/images/news/'.$row->img)?>">
                            </div>
                            <div class="title-news"><?php echo $language == 'vn' ? $row->title : $row->title_en?></div>
                            <div class="content-news">
                                <?php echo substr( strip_tags($language == 'vn' ? $row->content : $row->content_en),  0, 150 ).'...'?>
                            </div>
                        </div>
                    </div>
                    </a>
                <?php }?>
            </div>
            <div style="text-align: center">
                <a href="<?php echo base_url('tin-tuc.html')?>" class="btn btn-success" style="margin-top: 20px">Xem thêm</a>
            </div>

        </div>
    </div>
</section>
<style>
    .img-news img{
        height: 130px;
    }
</style>