<script language="javascript" src="<?php echo base_url('public')?>/ckeditor/ckeditor.js" type="text/javascript"></script>
<div class="x_panel">
    <div class="x_title">
        <h2>Sửa thông tin game</h2>
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
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Tên game <span class="required">*</span></label>
                    <div class="col-md-8 col-sm-8 col-xs-12">
                        <input type="text" id="txtName" name="txtName" value="<?php echo $product->name?>" required="required" class="form-control col-md-7 col-xs-12">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Link icon <span class="required">*</span></label>
                    <div class="col-md-8 col-sm-8 col-xs-12">
                        <input type="text" id="txtImage" name="txtImage" value="<?php echo $product->icon?>" required="required" class="form-control col-md-7 col-xs-12">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Link iOS <span class="required">*</span></label>
                    <div class="col-md-8 col-sm-8 col-xs-12">
                        <input type="text" id="txtLinkIos" name="txtLinkIos" value="<?php echo $product->link_iOS?>" class="form-control col-md-7 col-xs-12">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Link Android <span class="required">*</span></label>
                    <div class="col-md-8 col-sm-8 col-xs-12">
                        <input type="text" id="txtLinkAndroid" name="txtLinkAndroid" value="<?php echo $product->link_android?>" class="form-control col-md-7 col-xs-12">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Link Window Phone <span class="required">*</span></label>
                    <div class="col-md-8 col-sm-8 col-xs-12">
                        <input type="text" id="txtWindowPhone" name="txtWindowPhone" value="<?php echo $product->link_windowphone?>" class="form-control col-md-7 col-xs-12">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Mô tả <span class="required">*</span></label>
                    <div class="col-md-8 col-sm-8 col-xs-12">
                        <textarea name="txtContent" class="form-control" style="height: 120px"><?php echo $product->content?></textarea>
                        <script type="text/javascript">CKEDITOR.replace('txtContent',{height: '300px'}); </script>
                    </div>
                </div>
                <div class="form-group" style="margin-top: 30px">
                    <div class="col-md-4 col-sm-4 col-xs-12 col-md-offset-2" style="width: 70px">
                        <input type="submit" id="btnEditProduct" name="btnEditProduct" required="required" class="btn btn-primary" value="Cập nhật">
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>