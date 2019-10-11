<?php $partners = array('cmc_logo.jpg' ,'INET.png', 'vmg.png', 'viettel_idc.png', 'viettel.png', 'vinaphone.png', 'Mobifone.png')?>
<section class="partner">
    <div class="container">
        <div class="col-sm-12 col-md-12">
            <div class="title-section"><h2><?php echo $this->lang->line('partner'); ?></h2></div>
            <div>
                <?php foreach ($partners as $partner){ ?>
                    <div class="col-sm-3 item-partner" style="margin-top: 15px; text-align: center"><img src="<?php echo public_url('images/partner/'.$partner)?>" width="150px"></div>
                <?php }?>
            </div>
        </div>
    </div>
</section>
