<section class="news">
    <div class="container">
        <div class="col-sm-12 col-md-8">
            <div>
                <?php foreach ($news as $row){ ?>
                    <div class="item-news">
                        <div style="display: block">
                            <a href="<?php echo base_url('tin-tuc/'.create_slug($row->title).'-'.$row->id.'.html')?>">
                                <div class="col-xs-12 col-sm-12 col-md-12 row">

                                        <div class="col-xs-12 col-sm-12 col-md-12 row">
                                            <img src="<?php echo base_url('public/images/news/'.$row->img)?>">
                                        </div>
                                        <div class="title-news"><?php echo $language == 'vn' ? $row->title : $row->title_en?></div>
                                        <div class="content-news">
                                            <?php echo substr( strip_tags($language == 'vn' ? $row->content : $row->content_en),  0, 210 ).'...'?>
                                        </div>

                                </div>
                            </a>

                        </div>
                        <a class="btn btn-danger" href="<?php echo base_url('tin-tuc/'.create_slug($row->title).'-'.$row->id.'.html')?>">Đọc tiếp</a>
            </div>
                <?php }?>
            </div>
            <div class="navigation"><?php echo $paginator?></div>
        </div>
        <div class="col-sm-12 col-md-4">
            <div class="title-section"><h2><?php echo $this->lang->line('recently'); ?></h2></div>
            <div>
                <?php foreach ($news_left as $row){ ?>
                    <a href="<?php echo base_url('tin-tuc/'.create_slug($row->title).'-'.$row->id.'.html')?>">
                        <div class="row col-xs-12 col-sm-12 col-md-12 item-news">
                            <div class="img-news col-xs-6 col-sm-6 col-md-6"><img src="<?php echo base_url('public/images/news/'.$row->img)?>"></div>
                            <div class="title-news-detail"><?php echo $language == 'vn' ? $row->title : $row->title_en?></div>
                            <div class="content-news"><?php echo substr( strip_tags($language == 'vn' ? $row->content : $row->content_en),  0, 150 ).'...'?></div>
                        </div>
                    </a>
                <?php }?>
            </div>
        </div>
    </div>
</section>
<style>
    .item-news img{width: 100%; margin-bottom: 20px}
    .item-news {display: block}
    .title-news{font-size: 26px; color: #535353; margin-top: 20px; margin-bottom: 10px; margin-left: 0px}
    .content-news{margin-left: 0px; margin-bottom: 20px}
</style>