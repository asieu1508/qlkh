  <aside class="sidebar">
    <div class="head">
      <a class="logo"><img src="<?php echo base_url();?>/assets/themes/default/images/logo-white.png" alt=""></a>
      <a class="nav-icon"><i class="fa fa-navicon"></i></a>
    </div>
    <div class="clear"></div>
    <div class="menu mainMenu">
      <?php echo $menu ?>
      
    <?php $user = $this->session->userdata('user');  ?>
    <ul class="menu mainMenu">
      <li>
        <a>
          <span class="icon"><i class="fa fa-user"></i></span> 
          <span class="text"><?php echo $user['NAME'] ?></span>
        </a>
        <ul>
          <li>
            <a href="<?php echo base_url() .'user/profile/'.$user['USERNAME']?>">THÔNG TIN NGƯỜI DÙNG</a>
          </li>
        </ul>
      </li>
      <li>
        <a href="<?php echo base_url();?>login/logout">
          <span class="icon"><i class="fa fa-fw fa-sign-out"></i></span>
          <span class="text">THOÁT</span>
        </a>
      </li>
    </ul>
    </div>
  </aside>