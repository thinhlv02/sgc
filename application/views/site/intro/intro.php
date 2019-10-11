<section>
    <div class="container">
        <div class="col-sm-12 col-md-12">
            <div class="title-section"><h2><?php echo $this->lang->line('style'); ?></h2></div>
            <div class="owl-carousel owl-carousel-intro">
                <?php foreach ($styles as $row){ ?>
                    <blockquote>
                        <h2 class="title-slide">
                            <i class="fa <?php echo $row->icon?> icon-style" aria-hidden="true"></i>
                            <?php echo $language == 'vn' ? $row->title : $row->title_en?>
                        </h2>
                        <div class="content-slide">
                            <p><?php echo $language == 'vn' ? $row->content : $row->content_en?></p>
                        </div>
                    </blockquote>
                <?php }?>
<!--                <blockquote>-->
<!--                    <h2 class="title-slide">-->
<!--                        <i class="fa fa-female icon-style" aria-hidden="true"></i>-->
<!--                        Không đồng phục công sở-->
<!--                    </h2>-->
<!--                    <div class="content-slide">-->
<!---->
<!--                        <p>Đến với SGC, chỉ cần trang phục lịch sự, phù hợp với môi trường Công ty. Chúng tôi tôn trọng sở thích và phong cách ăn mặc của bạn.</p>-->
<!--                    </div>-->
<!--                </blockquote>-->
<!--                <blockquote>-->
<!--                    <h2 class="title-slide">-->
<!--                        <i class="fa fa-flag-o icon-style" aria-hidden="true"></i>-->
<!--                        Tôn trọng ý kiến cá nhân-->
<!--                    </h2>-->
<!--                    <div class="content-slide">-->
<!--                        <p>Tranh luận – mâu thuẫn vì mục tiêu chung của Công ty. SGC chúng tôi khuyến khích các bạn.</p>-->
<!--                    </div>-->
<!--                </blockquote>-->
<!--                <blockquote>-->
<!--                    <h2 class="title-slide"><i class="fa fa-futbol-o icon-style" aria-hidden="true"></i>Hoạt động – phong trào thú vị</h2>-->
<!--                    <div class="content-slide">-->
<!--                        <p>Bạn sẽ được tham gia các hoạt động thể dục – thể thao, các trò chơi, các chương trình giao lưu,… nhằm đòi hỏi tinh thần đồng đội và ý chí, sáng tạo của mỗi thành viên.</p>-->
<!--                    </div>-->
<!--                </blockquote>-->
<!--                <blockquote>-->
<!--                    <h2 class="title-slide"><i class="fa fa-handshake-o icon-style" aria-hidden="true"></i>Không phân biệt bạn là ai? Như thế nào?</h2>-->
<!--                    <div class="content-slide">-->
<!--                        <p>Cho dù bạn không có bằng cấp, cho dù bạn là người nước nào,…? Chỉ cần bạn có năng lực, SGC chúng tôi luôn sẵn sàng cộng tác làm việc cùng bạn.</p>-->
<!--                    </div>-->
<!--                </blockquote>-->
<!--                <blockquote>-->
<!--                    <h2 class="title-slide"><i class="fa fa-level-up icon-style" aria-hidden="true"></i>Học hỏi kinh nghiệm – phát huy năng lực</h2>-->
<!--                    <div class="content-slide">-->
<!--                        <p>Bạn sẽ được trau dồi, mở mang thêm kiến thức, tích lũy thêm kinh nghiệm từ các đồng nghiệp của mình, cũng như phát huy được khả năng sáng tạo, năng lực làm việc của bạn.</p>-->
<!--                    </div>-->
<!--                </blockquote>-->
            </div>
        </div>
    </div>
</section>

<section class="intro">
    <div class="container">
        <div class="col-sm-12 col-md-12">
            <div class="title-section"><h2><?php echo $this->lang->line('about'); ?></h2></div>
            <section id="cd-timeline" class="cd-container">
                <?php foreach ($intro as $row){ ?>
                    <div class="cd-timeline-block">
                        <div class="cd-timeline-img cd-location">
                            <i class="fa fa-map-marker" aria-hidden="true"></i>
                        </div> <!-- cd-timeline-img -->
                        <div class="cd-timeline-content">
                            <h2><?php echo $language == 'vn' ? $row->title : $row->title_en ?></h2>
                            <?php echo $language == 'vn' ? $row->content : $row->content_en ?>
                            <!--                        <span class="cd-date">Jan 14</span>-->
                        </div> <!-- cd-timeline-content -->
                    </div> <!-- cd-timeline-block -->
                <?php }?>
            </section>
        </div>
        <!--
        <div class="col-sm-12 col-md-4">
            <div class="col-sm-6 col-md-12">
                <div class="item-count item-count-year">
                    <div class="icon-count">
                        <i class="fa fa-calendar-check-o" aria-hidden="true"></i>
                    </div>
                    <div class="counter">
                        <span class="number-count count-year">5+</span>
                        <span class="des-count">Thành lập</span>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-12">
                <div class="item-count">
                    <div class="icon-count">
                        <i class="fa fa-id-card-o" aria-hidden="true"></i>
                    </div>
                    <div class="counter">
                        <span class="number-count count-employer">30+</span>
                        <span class="des-count">Nhân viên</span>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-12">
                <div class="item-count item-count-customer">
                    <div class="icon-count">
                        <i class="fa fa-user-o" aria-hidden="true"></i>
                    </div>
                    <div class="counter">
                        <span class="number-count count-customer">2000+</span>
                        <span class="des-count">Khách hàng</span>
                    </div>
                </div>
            </div>
        </div>
        -->
    </div>
</section>