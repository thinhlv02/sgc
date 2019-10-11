<script language="javascript" src="<?php echo base_url('public')?>/ckeditor/ckeditor.js" type="text/javascript"></script>
<div class="x_panel">
    <div class="x_title">
        <h2>Thêm tin tức mới</h2>
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
            <form id="formAddCatalog" data-parsley-validate class="form-horizontal form-label-left" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Tên sự kiện <span class="required">*</span></label>
                    <div class="col-md-8 col-sm-8 col-xs-12">
                        <input type="text" id="txtName" name="txtName" required="required" class="form-control col-md-7 col-xs-12" placeholder="Tiêu đề Tiếng Việt">
                        <input type="text" id="txtNameEn" name="txtNameEn" required="required" class="form-control col-md-7 col-xs-12" style="margin-top: 5px" placeholder="Tiêu đề Tiếng Anh">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Ảnh minh họa <span class="required">*</span></label>
                    <div class="col-md-8 col-sm-8 col-xs-12">
                        <input type="file" class="form-control" name="img_news" id="img_news">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Nội dung <span class="required">*</span></label>
                    <div class="col-md-8 col-sm-8 col-xs-12">
                        <div style="margin: 10px 0px">Tiếng Việt</div>
                        <textarea name="txtContent" class="form-control" style="height: 120px"></textarea>
                        <script type="text/javascript">CKEDITOR.replace('txtContent',{height: '300px'}); </script>
                        <div style="margin: 10px 0px">Tiếng Anh</div>
                        <textarea name="txtContentEn" class="form-control" style="height: 120px"></textarea>
                        <script type="text/javascript">CKEDITOR.replace('txtContentEn',{height: '300px'}); </script>
                    </div>
                    <div class="col-md-8 col-sm-8 col-xs-12">
                    </div>
                </div>
                <div class="form-group" style="margin-top: 30px">
                    <div class="col-md-4 col-sm-4 col-xs-12 col-md-offset-2" style="width: 70px">
                        <input type="submit" id="btnAddProduct" name="btnAdd" required="required" class="btn btn-primary" value="Thêm">
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>