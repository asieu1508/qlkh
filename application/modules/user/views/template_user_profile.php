
<section class="body">
    <section class="body-left" style="width:100%">

    <?php foreach ($content as $key => $value) { ?>
    <h2 class="title"><i class='fa fa-list-ul'></i> Thông tin người dùng</h2>
    <?php if ($this->session->flashdata('flag') == 1) { ?>
        <div class="alert alert-success alert-dismissible fade in" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
          <strong><?php echo $this->session->flashdata('action') ?> thành công!</strong>
        </div>
    <?php  }
    elseif($this->session->flashdata('flag') == 2) { ?>
        <div class="alert alert-danger alert-dismissible fade in" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
          <strong><?php echo $this->session->flashdata('action') ?> thất bại!</strong> Vui lòng kiểm tra lại dữ liệu.
        </div>
    <?php } ?>
    <form action="<?php echo base_url() ?>user/updateInfo" method="post" id="frmUpdateInfo">
        <input class="form-control"  type="hidden" name="username" value="<?php echo $value['USERNAME'] ?>">
          <ul class="form">
              <li>
                  <label class="text-head">Họ tên</label>
                  <input class="form-control"  type="text" name="name" value="<?php echo $value['NAME'] ?>">
              </li>
              <li>
                  <label class="text-head">Giới tính</label>
                  <select  name="sex" id="sex" class="form-control">
                    <?php if ($value['SEX'] == 0 ) { ?>
                        <option value="1">Nam</option>
                        <option value="0" selected="selected">Nữ</option>
                    <?php } elseif ($value['SEX'] == 1) { ?>
                          <option value="1" selected="selected">Nam</option>
                          <option value="0">Nữ</option>
                      <?php } ?>
                  </select>
              </li> 
              <li>
                  <label class="text-head">Số điện thoại</label>
                  <input class="form-control" type="text" name="phone" value="<?php echo $value['PHONE'] ?>">
              </li>
              <li>
                  <label class="text-head">Email</label>
                    <input class="form-control" type="text" name="email" value="<?php echo $value['EMAIL'] ?>">
              </li>
              <li>
                  <label class="text-head">Đơn vị</label> 
                  <select class="form-control" name="work">
                    <?php foreach ($dmKhoa as $dv) { 
                      if ($value['WORK'] == $dv['MSKHOA']) {?>
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
                  <label class="text-head">Năm sinh</label>
                    <input class="form-control" type="text" name="birthday" value="<?php echo $value['BIRTHDAY'] ?>">
              </li>
          </ul>
          <div class="clear text-center">
            <button class="btn" name="submit" type="submit" id="btnSubmit"><i class="fa fa-save"></i> Lưu thông tin</button>
            <button class="btn grey" id="btn-add-history" type="reset"><i class="fa fa-plus-circle"></i> Hủy bỏ</button>
          </div>
      </form>
      <script>
        $( "#frmUpdateInfo" ).validate({
          rules: {
              name: {
                required: true,
                minlength: 3
              },
              email: {
                required: true,
                email: true
              },
          },
          messages: {
            name: {
              required: jQuery.validator.format("Nhập Họ Tên người dùng"),
              minlength: jQuery.validator.format("Họ tên người dùng ít nhất 3 ký tự"),
            },

            email: {
              required: jQuery.validator.format("Nhập email người dùng"),
              email: jQuery.validator.format("Nhập đúng email người dùng"),
            } 
          }
        });
      </script>
      <h2 class="title"><i class='fa fa-list-ul'></i> Đổi mật khẩu đăng nhập</h2>
      <form action="<?php echo base_url() ?>user/updatePassword" method="post" id="frmUpdatePassword">
            <ul class="form">
                <li>
                    <label class="text-head">Tên đăng nhập</label>
                    <input class="form-control" type="text" name="user" value="<?php echo $value['USERNAME'] ?>" disabled="disabled">
                    <input class="form-control" type="hidden" name="username" value="<?php echo $value['USERNAME'] ?>">
                </li>
                <li>
                    <label class="text-head">Mật khẩu cũ</label>
                    <input class="form-control" type="password" name="oldPassword" value="">
                </li>
                
                <li>
                    <label class="text-head">Mật khẩu mới</label>
                      <input class="form-control" type="password" name="newPassword" value="" id="new_password">
                </li>
                <li>
                    <label class="text-head">Nhập lại mật khẩu mới</label>
                      <input class="form-control" type="password" name="confirmNewPassword" value="">
                </li>
            </ul>
            <div class="clear text-center">
              <button class="btn" name="submit" type="submit" id="btnSubmit"><i class="fa fa-save"></i> Đổi mật khẩu</button>
              <button class="btn grey" id="btn-add-history" type="reset"><i class="fa fa-plus-circle"></i> Hủy bỏ</button>
            </div>
        </form>
      <?php } ?>
      <script>
        $( "#frmUpdatePassword" ).validate({
          rules: {
              oldPassword: {
                required: true,
              },
              newPassword: {
                required: true,
                minlength: 6
              },
              confirmNewPassword: {
                equalTo: "#new_password"
              }
          },
          messages: {
            oldPassword: {
              required: jQuery.validator.format("Nhập mật khẩu cũ"),
            },
            newPassword: {
              required: jQuery.validator.format("Nhập mật khẩu mới"),
              minlength: jQuery.validator.format("Mật khẩu ít nhất 6 ký tự"),
            },
            confirmNewPassword: {
              equalTo: jQuery.validator.format("Mật khẩu không khớp"),
            } 
          }
        });
      </script>
      <div id="to_top_2"></div>
  </section>