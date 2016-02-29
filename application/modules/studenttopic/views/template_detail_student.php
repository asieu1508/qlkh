<section class="body">
    <section class="body-left" style="width:100%">
      <!-- Begin search -->
      <form action="<?php echo base_url() ?>studenttopic/searchresuft" method="post" id="form-top-search">
        <div class="input-group search">
              <input type="text" class="form-control" name="search" placeholder="Tìm kiếm đề tài sinh viên" id="search-student">
              <span class="input-group-btn ">
                <button class="btn btn-default icon" name="submit">
                   <i class="fa fa-search"></i>
                </button>
             </span>
          </div>
          <div class="autocomplate-success"></div>
      </form>
      <!-- End search -->
     <h2 class="title"><i class='fa fa-list-ul'></i> THÔNG TIN CHI TIẾT ĐỀ TÀI SIHN VIÊN</h2>
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
     <form action="<?php echo base_url()?>studenttopic/update" method="post" id="frmUpdate">
	<?php foreach ($content as $key => $value) { ?>
            <ul class="form">
                <li>
                    <label class="text-head">Mã số đề tài</label>
                    <input class="form-control" type="text" id="msdt" name="msdt" value="<?php echo $value['MSDT'] ?>">
                    <input type="hidden" value="" id="ms1">
                    <input type="hidden" value="" id="ms2">
                    <input type="hidden" value="" id="ms3">
                </li>
                <li>
                    <label class="text-head">Tên đề tài</label>
                    <input class="form-control"  type="text" name="tendt" value="<?php echo $value['TENDT'] ?>">
                </li>
                <li>
                    <label class="text-head">Tên sinh viên</label>
                    <input class="form-control" type="text" name="tensv" value="<?php echo $value['TENSV'] ?>">
                </li>
                <li>
                    <label class="text-head">Giới tính</label>
                    <?php if ($value['GIOITINH'] == 0 ) { ?>
                      <select  name="gioitinh" id="sex" class="form-control">
                        <option value="1">Nam</option>
                        <option value="0" selected="selected">Nữ</option>
                        <option value="2">Nam - Nữ</option>
                      </select>
                    <?php } elseif ($value['GIOITINH'] == 1) { ?>
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
                    <label class="text-head">Lớp</label>
                      <input class="form-control" type="text" name="lop" value="<?php echo $value['LOP'] ?>">
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
                    <label class="text-head">Giáo viên hướng dẫn</label>
                      <input class="form-control" type="text" name="gvhd" value="<?php echo $value['GVHD'] ?>">
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
                    <label class="text-head">Thời gian bắt đầu</label>
                      <input id="txtTGBD" class="form-control datepicker" type="text" name="tgbd" value="<?php echo $value['TGBATDAU'] ?>">
                </li>
                <li>
                    <label class="text-head">Thời gian kết thúc</label>
                      <input  id="txtTGKT" class="form-control datepicker" type="text" name="tgkt" value="<?php echo $value['TGKETTHUC'] ?>">
                </li>
                <li>
                    <label class="text-head">Quyết định nghiệm thu</label>
                      <input class="form-control" type="text" name="qdnt" value="<?php echo $value['QDNT'] ?>">
                </li>
                <li>
                    <label class="text-head">Xếp loại</label>
                      <input class="form-control" type="text" name="xeploai" value="<?php echo $value['XEPLOAI'] ?>">
                </li>
                <li>
                    <label class="text-head">Giấy chứng nhận</label>
                      <input class="form-control" type="text" name="gcn" value="<?php echo $value['GCN'] ?>">
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
