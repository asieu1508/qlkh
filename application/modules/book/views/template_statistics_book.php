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
    <h2 class="title"><i class='fa fa-list-ul'></i> Thống kê TLGD</h2>
    <div id="criteria-group" class="criteria-group">
      <fieldset>
        <legend>Chọn điều kiện:</legend>
        <ul>
          <li>
            <label class="head-text">Từ năm</label>
            <input type="text" id="namxbBĐ" name="namxbbd" class="form-control">
          </li>
          <li>
            <label class="head-text">Đến năm</label>
            <input type="text" id="namxbKT" name="namxbkt" class="form-control">
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
            <label class="head-text">Giới tính</label>
            <select  name="gioitinh" id="gioitinh" class="form-control">
              <option value="-1">Tất cả</option>
              <option value="1">Nam</option>
              <option value="0">Nữ</option>
              <option value="2">Nam - Nữ</option>
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