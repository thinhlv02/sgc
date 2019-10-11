<?php if (isset($message)){$this->load->view('admin/message',$this->data); }?>

<div class="x_panel">
    <div class="x_title">
        <h2>Thông tin liên hệ</h2>
        <ul class="nav navbar-right panel_toolbox">
            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                <ul class="dropdown-menu" role="menu">
                    <li><a href="#">Settings 1</a>
                    </li>
                    <li><a href="#">Settings 2</a>
                    </li>
                </ul>
            </li>
            <li><a class="close-link"><i class="fa fa-close"></i></a></li>
        </ul>
        <div class="clearfix"></div>
    </div>
    <div class="x_content">


        <div class="row" style="margin-top: 40px">
            <form id="formAddCatalog" data-parsley-validate class="form-horizontal form-label-left" method="post">
                <div class="form-group">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Tên công ty <span class="required">*</span></label>
                    <div class="col-md-8 col-sm-8 col-xs-12">
                        <input type="text" id="txtCompany" name="txtCompany" value="<?php echo $contact->company?>" required="required" class="form-control col-md-7 col-xs-12">
                        <input type="text" id="txtCompanyEn" name="txtCompanyEn" value="<?php echo $contact->company_en?>" required="required" class="form-control col-md-7 col-xs-12" style="margin-top: 5px">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Số điện thoại <span class="required">*</span></label>
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <input type="text" id="txtPhone" name="txtPhone" value="<?php echo $contact->phone?>" required="required" class="form-control col-md-7 col-xs-12">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Email <span class="required">*</span></label>
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <input type="text" id="txtEmail" name="txtEmail" value="<?php echo $contact->email?>" required="required" class="form-control col-md-7 col-xs-12">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Email tuyển dụng<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <input type="text" id="txtEmailRecruit" name="txtEmailRecruit" value="<?php echo $contact->email_recruit?>" required="required" class="form-control col-md-7 col-xs-12">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Địa chỉ <span class="required">*</span></label>
                    <div class="col-md-8 col-sm-8 col-xs-12">
                        <input type="text" id="txtAddress" name="txtAddress" value="<?php echo $contact->address?>" required="required" class="form-control col-md-12 col-xs-12">
                        <input type="text" id="txtAddressEn" name="txtAddressEn" value="<?php echo $contact->address_en?>" required="required" class="form-control col-md-12 col-xs-12" style="margin-top: 5px">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Văn phòng <span class="required">*</span></label>
                    <div class="col-md-8 col-sm-8 col-xs-12">
                        <input type="text" id="txtOffice" name="txtOffice" value="<?php echo $contact->office?>" required="required" class="form-control col-md-12 col-xs-12">
                        <input type="text" id="txtOfficeEn" name="txtOfficeEn" value="<?php echo $contact->office_en?>" required="required" class="form-control col-md-12 col-xs-12" style="margin-top: 5px">
                    </div>
                </div>
                <div class="form-group" style="margin-top: 30px">
                    <div class="col-md-4 col-sm-4 col-xs-12 col-md-offset-2" style="width: 70px">
                        <input type="submit" id="btnUpdateContact" name="btnUpdateContact" required="required" class="btn btn-primary" value="Cập nhật">
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
