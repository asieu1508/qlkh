<section class="body">
    <section class="body-left" style="width:100%">
      <!-- Begin search -->
      <form action="<?php echo base_url() ?>sponsored/searchresuft" method="post" id="form-top-search">
        <div class="input-group search">
              <input type="text" class="form-control" name="search" placeholder="Tìm kiếm đề tài cấp tỉnh, khoa, sáng kiến, tài trợ" id="search-sponsored">
              <span class="input-group-btn ">
                <button class="btn btn-default icon" name="submit">
                   <i class="fa fa-search"></i>
                </button>
             </span>
          </div>
          <div class="autocomplate-success"></div>
      </form>
      <!-- End search -->
     <h2 class="title"><i class='fa fa-list-ul'></i> THÔNG TIN CHI TIẾT ĐỀ TÀI</h2>
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
                    <label class="text-head">Mã số đề tài</label>
                    <input class="form-control" type="text" name="msdt" value="<?php echo $value['MS'] ?>">
                </li>
                <li>
                    <label class="text-head">Tên đề tài</label>
                    <input class="form-control"  type="text" name="tendt" value="<?php echo $value['TENDT'] ?>">
                </li>
                <li>
                    <label class="text-head">Chủ nhiệm đề tài</label>
                    <input class="form-control" type="text" name="cndt" value="<?php echo $value['CNDT'] ?>">
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
                    <label class="text-head">Thời gian bắt đầu</label>
                      <input id="txtTGBD" class="form-control datepicker" type="text" name="tgbd" value="<?php echo $value['TGBATDAU']?>">
                </li>
                <li>
                    <label class="text-head">Thời gian kết thúc</label>
                      <input  id="txtTGKT" class="form-control datepicker" type="text" name="tgkt" value="<?php echo $value['TGKETTHUC'] ?>">
                </li>
                <li>
                    <label class="text-head">Loại đề tài</label> 
                    <select class="form-control" name="loaidetai" id="loaidetai">
                    <?php foreach ($loaidetai as $loai) { 
                      if ($value['LOAIDETAI'] == $loai['MALOAI']) {?>
                        <option selected="selected" value="<?php echo $loai['MALOAI'] ?>"><?php echo $loai['TENLOAI'] ?></option>
                     <?php } else { ?>
                        <option value="<?php echo $loai['MALOAI'] ?>"><?php echo $loai['TENLOAI'] ?></option>
                     <?php
                          }
                        } 
                     ?>
                    </select>
                </li>
                <li>
                    <label class="text-head">Hiện trạng đề tài</label>
                    <select class="form-control" name="htdt" id="">
                    <?php foreach ($hientrang as $ht) { 
                      if ($value['HTDETAI'] == $ht['MAHT']) {?>
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
                    <label class="text-head">Kinh phí</label>
                    <input class="form-control" type="hidden" id="tongkinhphi" name="tongkinhphi" value="<?php echo $value['KINHPHI'] ?>">
                    <input class="form-control money" type="text" id="tongkinhphi2"  name="tongkinhphi2" value="<?php echo $value['KINHPHI'] ?>">
                </li>
                <li>
                    <label class="text-head">Ghi chú</label>
                    <input class="form-control" type="text"  name="ghichu" value="<?php echo $value['GHICHU'] ?>">
                </li>
                <li style="width:100%">
                    <label class="text-head">Lưu trữ</label>
                    <textarea name="luutru" id="" class="form-control" rows="3"><?php echo $value['LUUTRU'] ?></textarea>
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
<script>
    $( "#frmUpdate" ).validate({
      rules: {
          msdt: {
            required: true,
          },
          tendt: {
            required: true
          },
          cndt: {
            required: true
          }
      },
      messages: {
        msdt: {
          required: jQuery.validator.format("Mã số đề tài không được bỏ trống"),
        },
        tendt: {
          required: jQuery.validator.format("Tên đề tài không được bỏ trống"),
        },
        cndt: {
          required: jQuery.validator.format("Chủ nhiệm đề tài không được bỏ trống"),
        } 
      }
    });
</script>