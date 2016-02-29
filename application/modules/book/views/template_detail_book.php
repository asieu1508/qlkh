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
     <?php foreach ($content as $value) { ?>
            <input type="hidden" name="mssach" value="<?php  echo $value['MSSACH'] ?>">
            <ul class="form">
                <li>
                    <label class="text-head">Tên sách</label>
                    <input class="form-control"  type="text" name="tensach" value="<?php  echo $value['TENSACH'] ?>">
                </li>
                <li>
                    <label class="text-head">Tên tác giả</label>
                    <input class="form-control" type="text" name="tentg" value="<?php  echo $value['TENTG'] ?>">
                </li>
                <li>
                    <label class="text-head">Giới tính</label>
                    <select  name="gioitinh" id="sex" class="form-control">
                    <?php if ($value['GIOITINH'] == 0 ) { ?>
                      
                        <option value="1">Nam</option>
                        <option value="0" selected="selected">Nữ</option>
                        <option value="2">Nam - Nữ</option>
                    <?php } elseif ($value['GIOITINH'] == 1) { ?>
                          <option value="1" selected="selected">Nam</option>
                          <option value="0">Nữ</option>
                          <option value="2">Nam - Nữ</option>
                      <?php } else { ?>
                          <option value="1">Nam</option>
                          <option value="0">Nữ</option>
                          <option value="2" selected="selected">Nam - Nữ</option>
                        
                      <?php } ?>
                      </select>
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
                    <label class="text-head">Nhà xuất bản</label>
                    <select  name="nxb" class="form-control">
                      <?php foreach ($nhaxuatban as $nxb) { 
                      if ($nxb['MSNXB'] == $value['NXB']) {?>
                        <option selected="selected" value="<?php echo $nxb['MSNXB'] ?>"><?php echo $nxb['TENNXB'] ?></option>
                        <?php } else { ?>
                        <option value="<?php echo $nxb['MSNXB'] ?>"><?php echo $nxb['TENNXB'] ?></option>
                     <?php }
                     } ?>
                    </select>
                </li>
                <li>
                    <label class="text-head">Năm xuất bản</label>
                    <input type="text" class="form-control" name="namxb" value="<?php  echo $value['NAMXB'] ?>">
                </li>
                <li>
                    <label class="text-head">Thể loại sách</label>
                    <select  name="theloaisach" class="form-control">
                      <?php foreach ($theloaisach as $theloai) { 
                      if ($value['THELOAI'] == $theloai['MSTHELOAI']) {?>
                        <option selected="selected" value="<?php echo $theloai['MSTHELOAI'] ?>"><?php echo $theloai['TENTHELOAI'] ?></option>
                        <?php  } else { ?>
                        <option value="<?php echo $theloai['MSTHELOAI'] ?>"><?php echo $theloai['TENTHELOAI'] ?></option>
                     <?php }
                     } ?>
                    </select>
                </li>
                <li>
                    <label class="text-head">Quốc gia</label>
                    <select  name="quocgia" class="form-control">
                      <?php foreach ($quocgia as $qg) { ?>
                        <?php if ($value['QUOCGIA'] == $qg['MSQG']) { ?>
                          <option selected="selected" value="<?php echo $qg['MSQG'] ?>"><?php echo $qg['TENQG'] ?></option>
                        <?php } else { ?>
                        <option value="<?php echo $qg['MSQG'] ?>"><?php echo $qg['TENQG'] ?></option>
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
        <?php } ?>
      </form>
      <div id="to_top_2"></div>
  </section>