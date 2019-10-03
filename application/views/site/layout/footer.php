<section class="contact-footer">
    <div class="container">
        <div class="col-sm-12 col-md-6">
            <div class="title-section title-section-footer"><?php echo $this->lang->line('contact'); ?></div>
            <div style="margin-top: 20px">
                <?php echo $language == 'vn' ? $contact->company : $contact->company_en?>
            </div>
            <div class="col-sm-12 col-md-6 item-contact-footer">
                <i class="fa fa-phone" aria-hidden="true"></i> <span><?php echo $contact->phone?></span>
            </div>
            <div class="col-sm-12 col-md-6 item-contact-footer">
                <i class="fa fa-envelope-o" aria-hidden="true"></i> <span><?php echo $contact->email?></span>
            </div>
            <div class="col-sm-12 col-md-6 item-contact-footer">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
                <span><?php echo $language == 'vn' ? $contact->address : $contact->address_en?></span>
            </div>
            <div class="col-sm-12 col-md-6 item-contact-footer">
                <i class="fa fa-building-o" aria-hidden="true"></i>
                <span><?php echo $language == 'vn' ? $contact->office : $contact->office_en?></span>
            </div>
        </div>
        <div class="col-sm-12 col-md-6">
            <div class="title-section title-section-footer"><?php echo $this->lang->line('feedback'); ?></div>
            <div>
                <input type="text" class="form-control" id="txtName" required placeholder="<?php echo $this->lang->line('plhName'); ?>">
                <input type="text" class="form-control" id="txtEmail" required placeholder="<?php echo $this->lang->line('plhEmail'); ?>">
                <textarea type="text" class="form-control" id="txtMessage" required rows="5" placeholder="<?php echo $this->lang->line('plhMessage'); ?>"></textarea>
                <input type="submit" value="<?php echo $this->lang->line('btnSend'); ?>" class="btn btn-success btn-lg" id="btnSend">
            </div>
        </div>
    </div>
    <div id="result_test"></div>
</section>
<script>
    $(document).ready(function () {
        $('#btnSend').click(function () {
            var name = $('#txtName').val();
            var email = $('#txtEmail').val();
            var message = $('#txtMessage').val();
            if(name.length <= 0){
                alert('Bạn chưa nhập tên');
            }
            else if(email.length <= 0){
                alert('Bạn chưa nhập email');
            }
            else if(message.length <= 0){
                alert('Bạn chưa nhập nội dung tin nhắn');
            }
            else{
                $.ajax({
                    url : "<?php echo base_url('home/feedback')?>",
                    type : "POST",
                    dataType:"text",
                    data : {
                        name: name,
                        email: email,
                        message: message
                    },
                    success : function (result){
                        console.log(result);
                        $('#result_test').html(result);
                        if(result == true){
                            alert('Chúng tôi đã ghi nhận tin nhắn của bạn và sẽ liên hệ lại với bạn trong thời gian sớm nhất, xin cảm ơn!');
                        }
                        else{
                            alert('Có lỗi xảy ra, vui lòng thử lại!');
                        }
                    }
                });
            }
        });
    });

</script>