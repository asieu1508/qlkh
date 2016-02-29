<section class="body">
    <section class="body-left" style="width:100%">
      <!-- Begin search -->
      <form action="<?php echo base_url() ?>document/searchresuft" method="post" id="form-top-search">
        <div class="input-group search">
              <input type="text" class="form-control" name="search" placeholder="Tìm kiếm TLGD" id="search-document">
              <span class="input-group-btn ">
                <button class="btn btn-default icon" name="submit">
                   <i class="fa fa-search"></i>
                </button>
             </span>
          </div>
          <div class="autocomplate-success"></div>
      </form>
      <!-- End search -->
     <h2 class="title"><i class='fa fa-list-ul'></i> THÔNG TIN CHI TIẾT TLGD</h2>
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
	<?php foreach ($content as $key => $value) { ?>
            <ul class="form">
                <li>
                    <label class="text-head">Mã số tài liệu giảng dạy</label>
                    <input class="form-control" type="text" id="mstlgd" name="mstlgd" value="<?php echo $value['MSTLGD'] ?>">
                </li>
                <li>
                    <label class="text-head">Tên tài liệu giảng dạy</label>
                    <input class="form-control"  type="text" name="tentlgd" value="<?php echo $value['TENTLGD'] ?>">
                </li>
                <li>
                    <label class="text-head">Tác giả tài liệu giảng dạy</label>
                    <input class="form-control" type="text" name="tentg" value="<?php echo $value['TENTG'] ?>">
                </li>
                <li>
                    <label class="text-head">Giới tính</label>
                    <?php if ($value['PHAI'] == 0 ) { ?>
                      <select  name="gioitinh" id="sex" class="form-control">
                        <option value="1">Nam</option>
                        <option value="0" selected="selected">Nữ</option>
                        <option value="2">Nam - Nữ</option>
                      </select>
                    <?php } elseif ($value['PHAI'] == 1) { ?>
                        <select  name="gioitinh" id="sex" class="form-control">
                          <option value="1" selected="selected">Nam</option>
                          <option value="0">Nữ</option>
                          <option value="2">Nam - Nữ</option>
                        </select>
                      <?php } else { ?>
                        <select  name="gioitinh" id="sex" class="form-control">
                          <option value="1">Nam</option>
                          <option value="0">Nữ</option>
                          <option value="2" selected="selected">Nam - Nữ</option>
                        </select>
                      <?php } ?>
                </li>
                <li>
                    <label class="text-head">Chuyên mục</label>
                    <select class="form-control" name="loai" id="loai">
                      <?php foreach ($chuyenmuc as $cm) { ?>
                        <?php if ($value['LOAI'] == $cm['MACM'] ) { ?>
                          <option selected="seleted" value="<?php echo $cm['MACM'] ?>"><?php echo $cm['TENCM'] ?></option>
                          <?php } else { ?>
                          <option value="<?php echo $cm['MACM'] ?>"><?php echo $cm['TENCM'] ?></option>
                         <?php } ?>
                     <?php } ?>
                    </select>
                </li>
                <li>
                    <label class="text-head">Loại tài liệu giảng dạy</label>
                    <select class="form-control" name="loaitlgd" id="">
                    <?php foreach ($loaitlgd as $loaitl) { 
                      if ($value['LOAITLGD'] == $loaitl['MALOAI']) {?>
                        <option selected="selected" value="<?php echo $loaitl['MALOAI'] ?>"><?php echo $loaitl['TENLOAI'] ?></option>
                     <?php } else { ?>
                        <option value="<?php echo $loaitl['MALOAI'] ?>"><?php echo $loaitl['TENLOAI'] ?></option>
                     <?php
                          }
                        } 
                     ?>
                    </select>
                </li>
                <li>
                    <label class="text-head">Thời gian bắt đầu</label>
                      <input id="txtTGBD" class="form-control datepicker" type="text" name="tgbd" value="<?php echo $value['TGBATDAU'] ?>">
                </li>
                <li>
                    <label class="text-head">Thời gian kết thúc</label>
                      <input  id="txtTGKT" class="form-control datepicker" type="text" name="tgkt" value="<?php echo $value['TGKETTHUC'] ?>">
                </li>
                <li>
                    <label class="text-head">Đơn vị</label>
                    <select class="form-control" name="donvi" id="donvi">
                    <?php foreach ($dmKhoa as $dv) { 
                      if ($value['DONVI'] == $dv['MSKHOA']) {?>
                        <option selected="selected" value="<?php echo $dv['MSKHOA'] ?>"><?php echo $dv['TENKHOA'] ?></option>
                     <?php } else { ?>
                        <option value="<?php echo $dv['MSKHOA'] ?>"><?php echo $dv['TENKHOA'] ?></option>
                     <?php
                          }
                        } 
                     ?>
                    </select>
                </li>
                
                <li>
                    <label class="text-head">Hiện trạng</label>
                    <select class="form-control" name="hientrang" id="">
                    <?php foreach ($hientrang as $ht) { 
                      if ($value['HIENTRANG'] == $ht['MAHT']) {?>
                        <option selected="selected" value="<?php echo $ht['MAHT'] ?>"><?php echo $ht['TENHT'] ?></option>
                     <?php } else { ?>
                        <option value="<?php echo $ht['MAHT'] ?>"><?php echo $ht['TENHT'] ?></option>
                     <?php
                          }
                        } 
                     ?>
                    </select>
                </li>
                <li>
                    <label class="text-head">Tiến độ biên soạn</label>
                      <input class="form-control" type="text" name="tiendobs" value="<?php echo $value['TIENDOBS'] ?>">
                </li>
                <li>
                    <label class="text-head">Quyết định nghiệm thu</label>
                      <input class="form-control" type="text" name="qdnt" value="<?php echo $value['QDNT'] ?>">
                </li>
            </ul>
            <div class="div text-center clear">
              <button class="btn" name="submit" type="submit" id="btnSubmit"><i class="fa fa-save"></i> Lưu thông tin</button>
              <button class="btn grey" id="btn-add-history" type="reset"><i class="fa fa-plus-circle"></i> Hủy bỏ</button>
            </div>
	<?php } ?>
      </form>
      <div id="to_top_2"></div>
  </section>
