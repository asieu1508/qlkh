<section class="body">
    <section class="body-left" style="width:100%">
      <!-- Begin search -->
      <form action="<?php echo base_url() ?>sponsored/searchresuft" method="post" id="form-top-search">
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
    <h2 class="title"><i class='fa fa-list-ul'></i> Thống kê đề tài NCKH CẤP TỈNH - CẤP KHOA - ĐƯỢC TÀI TRỢ</h2>
    <div id="criteria-group" class="criteria-group">
      <fieldset>
        <legend>Chọn điều kiện:</legend>
        <ul>
          <li>
            <label class="head-text">Từ ngày</label>
            <input type="text" id="ngayBD" name="ngaybd" class="form-control datepicker">
          </li>
          <li>
            <label class="head-text">Đến ngày</label>
            <input type="text" id="ngayKT" name="ngaykt" class="form-control datepicker">
          </li>
          <li>
            <label class="head-text">Đơn vị</label>
            <select class="form-control" name="donvi" id="donvi">
              <option value="-1">Tất cả</option>
              <?php foreach ($dmKhoa as $value) { ?>
                  <option value="<?php echo $value['MSKHOA'] ?>"><?php echo $value['TENKHOA'] ?></option>
               <?php } ?>
              </select>
          </li>
          <li>
              <label class="text-head">Hiện trạng đề tài</label>
              <select class="form-control" name="htdt" id="hientrang">
                <option value="-1">Tất cả</option>
              <?php foreach ($hientrang as $value) { ?>
                  <option value="<?php echo $value['MAHT'] ?>"><?php echo $value['TENHT'] ?></option>
               <?php } ?>
              </select>
          </li>
          <li>
            <label class="head-text">Loại đề tài</label>
            <select class="form-control" name="loaidetai" id="loaidetai">
            <option value="-1">Tất cả</option>
            <?php foreach ($loaidetai as $value) { ?>
                <option value="<?php echo $value['MALOAI'] ?>"><?php echo $value['TENLOAI'] ?></option>
            <?php } ?>
            </select>
          </li>
        </ul>
        <div class="text-center clear">
          <a href="#" class="btn waves-effect" id="filter"><i class="fa fa-filter"></i> &nbsp; Thống kê</a> &nbsp;
           <a href="#" class="btn indigo  waves-effect" id="exportToExcel"><i class="fa fa-file-excel-o"></i> &nbsp; Xuất ra Excel</a>
        </div>
      </fieldset>
    </div>
    <div class="text-center divloading" id="divloading">
        <img src="<?php echo base_url()?>assets/themes/default/images/loading.gif" alt="">
    </div>
    <div class="divtotal hide">
      Tổng số đề tài: <span class="total" id="total"></span>
    </div>
    <div id="searchresuft">
      
    </div>
        <div id="to_top_2"></div>
  </section>
</section>