      <div class="login">
        <div class="head">
          <a href="index.php" class="logo"><img src="<?php echo base_url();?>assets/themes/default/images/logo.png" alt="Phòng khám tư nhân bác sĩ tàu" /></a>
        </div>
        <div class="content">
          <form action="<?php echo base_url();?>login/checking" method="post" id="login_form">
            <input type="text" class="form-control" name="username" value="lthdanh" placeholder="Tên đăng nhập">
            <input type="password" class="form-control" name="password" value="123456" placeholder="Mật khẩu" id="password">
            <div class="forgot-password">
                <div class="checkbox show-pass">
                  <label class="i-checks">
                    <input type="checkbox" id="btn-show-pass"><i></i> Hiện mật khẩu
                  </label>
                </div>
              <a href="#">Quên mật khẩu?</a>
            </div>
            <button class="btn"><i class="fa fa-sign-in"></i> Đăng nhập</button>
          </form>
        </div>
      </div>