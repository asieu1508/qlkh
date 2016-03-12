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

     <h2 class="title"><i class='fa fa-list-ul'></i> THÊM ĐỀ TÀI TLGD:</h2>
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
                    <label class="text-head">Mã số tài liệu giảng dạy</label>
                    <input class="form-control" type="text" id="mstlgd" name="mstlgd" value="">
                    <input type="hidden" value="" id="ms1">
                    <input type="hidden" value="" id="ms2">
                    <input type="hidden" value="" id="ms3">
                </li>
                <li>
                    <label class="text-head">Tên tài liệu giảng dạy</label>
                    <input class="form-control"  type="text" name="tentlgd" value="">
                </li>
                <li>
                    <label class="text-head">Tác giả tài liệu giảng dạy</label>
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
                    <label class="text-head">Chuyên mục</label>
                    <select class="form-control" name="loai" id="loai">
                      <?php foreach ($chuyenmuc as $cm) { ?>
                        <option value="<?php echo $cm['MACM'] ?>"><?php echo $cm['TENCM'] ?></option>
                     <?php } ?>
                    </select>
                </li>
                <li id="loaitlgd">
                    <label class="text-head">Loại tài liệu giảng dạy</label>
                    <select class="form-control" name="loaitlgd">
                    <?php foreach ($loaitlgd as $loaitl) { ?>
                        <option value="<?php echo $loaitl['MALOAI'] ?>"><?php echo $loaitl['TENLOAI'] ?></option>
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
                    <label class="text-head">Đơn vị</label>
                    <select class="form-control" name="donvi" id="donvi">
                    <?php foreach ($dmKhoa as $value) { ?>
                        <option value="<?php echo $value['MSKHOA'] ?>"><?php echo $value['TENKHOA'] ?></option>
                     <?php } ?>
                    </select>
                </li>
                <li>
                    <label class="text-head">Hiện trạng đề tài</label>
                    <select class="form-control" name="hientrang" id="">
                    <?php foreach ($hientrang as $value) { ?>
                        <option value="<?php echo $value['MAHT'] ?>"><?php echo $value['TENHT'] ?></option>
                     <?php } ?>
                    </select>
                </li>
                <li>
                    <label class="text-head">Tiến độ biên soạn</label>
                      <input class="form-control" type="text" name="tdbs" value="">
                </li>
                <li>
                    <label class="text-head">Quyết định nghiệm thu</label>
                      <input class="form-control" type="text" name="qdnt" value="">
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
      var tgbatdau = $('#txtTGBD').val();
      $.ajax({
        type: 'post',
        url: base_url + 'document/getMaxNumberContractByDepartmentId/',
        data: {madonvi : madonvi, tgbatdau: tgbatdau },
        dataType: 'json',
        beforeSend: function(){
        },
        success:function(result)
        {
          var data = result;
          var ms = String(data[0]) + '.' + String(oneNumberToTow(data[1])) + '.' + String(data[2]) 
          $('#mstlgd').val(ms);
        }
      });
      
    }
  </script>

  <script>
    $( "#frmUpdate" ).validate({
      rules: {
          mstlgd: {
            required: true,
          },
          tentlgd: {
            required: true
          },
          tentg: {
            required: true
          }
      },
      messages: {
        mstlgd: {
          required: jQuery.validator.format("Mã số TLGD không được bỏ trống"),
        },
        tentlgd: {
          required: jQuery.validator.format("Tên TLGD không được bỏ trống"),
        },
        tentg: {
          required: jQuery.validator.format("Tên tác giả không được bỏ trống"),
        } 
      }
    });
</script>