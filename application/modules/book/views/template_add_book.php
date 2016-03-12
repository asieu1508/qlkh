<section class="body">
    <section class="body-left" style="width:100%">
      <!-- Begin search -->
      <form action="<?php echo base_url() ?>book/searchresuft" method="post" id="form-top-search">
        <div class="input-group search">
              <input type="text" class="form-control" name="search" placeholder="Tìm kiếm sách" id="search-book">
              <span class="input-group-btn ">
                <button class="btn btn-default icon" name="submit">
                   <i class="fa fa-search"></i>
                </button>
             </span>
          </div>
          <div class="autocomplate-success"></div>
      </form>
      <!-- End search -->

     <h2 class="title"><i class='fa fa-list-ul'></i> THÊM ĐỀ SÁCH</h2>
    <?php if ($this->session->flashdata('flag') == 1) { ?>
        <div class="alert alert-success alert-dismissible fade in" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
          <strong><?php echo $this->session->flashdata('action') ?> thành công!</strong>
        </div>
    <?php  }
    elseif($this->session->flashdata('flag') == 2) { ?>
        <div class="alert alert-danger alert-dismissible fade in" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
          <strong><?php echo $this->session->flashdata('action') ?> thất bại!</strong> Vui lòng thử lại sau.
        </div>
    <?php } ?>
     <form action="<?php echo base_url().$url ?>" method="post" id="frmUpdate">
            <ul class="form">
                <li>
                    <label class="text-head">Tên sách</label>
                    <input class="form-control"  type="text" name="tensach" value="">
                </li>
                <li>
                    <label class="text-head">Tên tác giả</label>
                    <input class="form-control" type="text" name="tentg" value="">
                </li>
                <li>
                    <label class="text-head">Giới tính</label>
                    <select  name="gioitinh" id="sex" class="form-control">
                      <option value="1">Nam</option>
                      <option value="0">Nữ</option>
                      <option value="2">Nam - Nữ</option>
                    </select>
                </li>
                <li>
                    <label class="text-head">Đơn vị</label>
                    <select class="form-control" name="donvi">
                    <?php foreach ($dmKhoa as $value) { ?>
                        <option value="<?php echo $value['MSKHOA'] ?>"><?php echo $value['TENKHOA'] ?></option>
                     <?php } ?>
                    </select>
                </li>
                <li>
                    <label class="text-head">Nhà xuất bản</label>
                    <select  name="nxb" class="form-control">
                      <?php foreach ($nhaxuatban as $value) { ?>
                        <option value="<?php echo $value['MSNXB'] ?>"><?php echo $value['TENNXB'] ?></option>
                     <?php } ?>
                    </select>
                </li>
                <li>
                    <label class="text-head">Năm xuất bản</label>
                    <input type="text" class="form-control" name="namxb">
                </li>
                <li>
                    <label class="text-head">Thể loại sách</label>
                    <select  name="theloaisach" class="form-control">
                      <?php foreach ($theloaisach as $value) { ?>
                        <option value="<?php echo $value['MSTHELOAI'] ?>"><?php echo $value['TENTHELOAI'] ?></option>
                     <?php } ?>
                    </select>
                </li>
                <li>
                    <label class="text-head">Quốc gia</label>
                    <select  name="quocgia" class="form-control">
                      <?php foreach ($quocgia as $value) { ?>
                        <?php if ($value['MSQG'] == 1) { ?>
                          <option selected="selected" value="<?php echo $value['MSQG'] ?>"><?php echo $value['TENQG'] ?></option>
                        <?php } else { ?>
                        <option value="<?php echo $value['MSQG'] ?>"><?php echo $value['TENQG'] ?></option>
                     <?php }
                     } ?>
                    </select>
                </li>
                <li>
                    <label class="text-head">Chí số ISSN</label>
                    <input type="text" class="form-control" name="issn">
                </li>
            </ul>
            <div class="clear text-center">
              <button class="btn" name="submit" type="submit" id="btnSubmit"><i class="fa fa-save"></i> Lưu thông tin</button>
              <button class="btn grey" id="btn-add-history" type="reset"><i class="fa fa-plus-circle"></i> Hủy bỏ</button>
            </div>
            
      </form>
      <div id="to_top_2"></div>
  </section>
<script>
    $( "#frmUpdate" ).validate({
      rules: {
          tensach: {
            required: true,
          },
          tentg: {
            required: true
          },
      },
      messages: {
        tensach: {
          required: jQuery.validator.format("Tên sách không được bỏ trống"),
        },
        tentg: {
          required: jQuery.validator.format("Tên tác giả không được bỏ trống"),
        },
      }
    });
</script>