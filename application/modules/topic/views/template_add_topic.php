<section class="body">
    <section class="body-left" style="width:100%">
      <!-- Begin search -->
      <form action="<?php echo base_url() ?>topic/searchresuft" method="post" id="form-top-search">
        <div class="input-group search">
              <input type="text" class="form-control" name="search" placeholder="Tìm kiếm đề tài cấp trường" id="search-topic">
              <span class="input-group-btn ">
                <button class="btn btn-default icon" name="submit">
                   <i class="fa fa-search"></i>
                </button>
             </span>
          </div>
          <div class="autocomplate-success"></div>
      </form>
      <!-- End search -->
     <h2 class="title"><i class='fa fa-list-ul'></i> THÊM ĐỀ TÀI NCKH:</h2>
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
                    <label class="text-head">Mã số đề tài</label>
                    <input class="form-control" type="text" id="msdt" name="msdt" value="">
                </li>
                <li>
                    <label class="text-head">Tên đề tài</label>
                    <input class="form-control"  type="text" name="tendt" value="">
                </li>
                <li>
                    <label class="text-head">Chủ nhiệm đề tài</label>
                    <input class="form-control" type="text" name="cndt" value="">
                </li>
                <li>
                    <label class="text-head">Đơn vị</label>
                    <select class="form-control" name="donvi" id="donvi">
                    <?php foreach ($dmKhoa as $value) { ?>
                        <option value="<?php echo $value['MSKHOA'] ?>"><?php echo $value['TENKHOA'] ?></option>
                     <?php } ?>
                    </select>
                </li>
                 <li>
                    <label class="text-head">Thời gian bắt đầu</label>
                      <input id="txtTGBD" class="form-control datepicker" type="text" name="tgbd" value="<?php echo date("Y-m-d") ?>">
                </li>
                <li>
                    <label class="text-head">Thời gian kết thúc</label>
                      <input  id="txtTGKT" class="form-control datepicker" type="text" name="tgkt" value="<?php echo date("Y-m-d") ?>">
                </li>
                <li>
                    <label class="text-head">Hiện trạng đề tài</label>
                    <select class="form-control" name="htdt" id="">
                    <?php foreach ($hientrang as $value) { ?>
                        <option value="<?php echo $value['MAHT'] ?>"><?php echo $value['TENHT'] ?></option>
                     <?php } ?>
                    </select>
                </li>
                <li>
                    <label class="text-head">Tiến độ thực hiện</label>
                      <input class="form-control" type="text" name="tdth" value="">
                </li>
                <li>
                    <label class="text-head">Quyết định giao thực hiện</label>
                      <input class="form-control" type="text" name="qdgth" value="">
                </li>
                <li>
                    <label class="text-head">Quyết định nghiệm thu</label>
                      <input class="form-control" type="text" name="qdnt" value="">
                </li>
                <li>
                    <label class="text-head">Số hợp đồng</label>
                      <input class="form-control" type="text" name="sohd" value="">
                </li><!-- 
                <li>
                    <label class="text-head">Năm sinh</label>
                      <input class="form-control" type="text" name="namsinh" value="">
                </li> -->
                <li>
                    <label class="text-head">Giới tính</label>
                    <select  name="gioitinh" id="sex" class="form-control">
                      <option value="1">Nam</option>
                      <option value="0">Nữ</option>
                      <option value="2">Nam - Nữ</option>
                    </select>
                </li>
               
                <li>
                    <div style="width: 50%; float: left">
                      <label class="text-head">Xếp loại</label>
                      <select class="form-control" name="xeploai" id="xeploai">
                      <?php foreach ($xeploai as $value) { ?>
                          <option value="<?php echo $value['MALOAI'] ?>"><?php echo $value['TENLOAI'] ?></option>
                      <?php } ?>
                      </select>
                    </div>
                    <div style="width: 50%; float: left">
                      <label class="text-head">Điểm số</label>
                      <input class="form-control" type="text" name="diemso" value="">
                    </div>
                </li>
                <li>
                    <label class="text-head">Tổng kinh phí</label>
                    <input class="form-control" type="hidden" id="tongkinhphi" name="tongkinhphi" value="">
                      <input class="form-control money" type="text" id="tongkinhphi2"  name="tongkinhphi2" value="">
                </li>
                <li>
                    <label class="text-head">Kinh phí tạm ứng</label>
                    <input class="form-control" type="hidden" id="kptamung" name="kptamung" value="">
                    <input class="form-control money" type="text" id="kptamung2" name="kptamung2" value="">
                </li>
                <li>
                    <label class="text-head">Năm nghiệm thu</label>
                      <input class="form-control" type="text" name="namnt" value="">
                </li>
                <li  style="width:100%">
                    <label class="text-head">Ghi chú</label>
                      <input class="form-control" type="text" name="ghichu" value="">
                </li>
                <li style="width:100%">
                    <label class="text-head">Ý kiến hội đồng</label>
                    <textarea name="ykhd" id="editor" class="form-control ckeditor" rows="3"></textarea>
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
    getMaxNumberContractByDepartmentId()
    $('#donvi').change(function(event) {
      getMaxNumberContractByDepartmentId();
    });
    $('#txtTGBD').change(function(event) {
      getMaxNumberContractByDepartmentId();
    });
    
    function getMaxNumberContractByDepartmentId() {
      var madonvi =  $('#donvi').val();
      var tgbatdau;
      if ($('#txtTGBD').val() =='') {
        tgbatdau = getCurrentDay();
      }
      else {
        tgbatdau = $('#txtTGBD').val();
      }
      $.ajax({
        type: 'post',
        url: base_url + 'topic/getMaxNumberContractByDepartmentId/',
        data: {madonvi : madonvi, tgbatdau: tgbatdau },
        dataType: 'json',
        beforeSend: function(){
        },
        success:function(result)
        {
          var data = result;
          var ms = String(data[0]) + '.' + String(oneNumberToTow(data[1])) + '.' + String(data[2]) 
          $('#msdt').val(ms);
        }
      });
      
    }
</script>