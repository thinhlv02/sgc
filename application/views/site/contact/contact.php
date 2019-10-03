<section class="contact">
    <div class="container">
        <div class="title-section"><h2><?php echo $language == 'vn' ? 'Thông tin liên hệ' : $this->lang->line('contact');?></h2></div>
        <div class="col-sm-12 col-md-6">
            <div class="company-name"><?php echo $language == 'vn' ? $contact->company : $contact->company_en?></div>
            <div class="company-phone">
                <i class="fa fa-phone" aria-hidden="true"></i> <span><?php echo $contact->phone?></span>
            </div>
            <div class="company-phone">
                <i class="fa fa-envelope-o" aria-hidden="true"></i> <span><?php echo $contact->email?></span>
            </div>
            <div class="company-address">
                <i class="fa fa-map-marker" aria-hidden="true"></i> <span><?php echo $language == 'vn' ? $contact->address : $contact->address_en?></span>
            </div>
            <div class="company-address">
                <i class="fa fa-building-o" aria-hidden="true"></i> <span><?php echo $language == 'vn' ? $contact->office : $contact->office_en ?></span>
            </div>
        </div>
        <div class="col-sm-12 col-md-6">
            <?php echo $language == 'vn' ? 'Vị trí trên bản đồ đang cập nhật' : 'Location is updating'?>

        </div>
    </div>
</section>