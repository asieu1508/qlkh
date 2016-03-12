<?php
class Ckfinder extends CI_Controller {
	function __construct()
    {
        parent::__construct();
 	
	    $this->load->helper('url');
	    $this->load->library(array('session', 'hdclass'));
        $this->hdclass->check_logined();
        
	    
    }
	public function html()
	{
		$this->load->view('ckfinder');
	}
	public function connector() {
		$userInfo = $this->session->userdata('user');
		define('USER_FOLDER_UPLOAD', 'qlkh/upload/user/'.$userInfo['username']);

		$flag = $this->session->userdata['logged_in'];

		define('CAN_USE_CKFINDER', $flag);
		require_once "./assets/fckeditor/ckfinder/core/connector/php/connector.php";
	}
}
