<?php
class Login extends MX_Controller{
	// private $b_Check = false;
	public function __construct(){
		parent::__construct();
		$this->load->helper(array('url'));
        $this->load->library(array('session', 'form_validation'));
        $this->_init();
	}
	private function _init()
    {
       $this->output->set_template('default');
    }
	public function index() {
		//load template        
		$this->load->view('template_login');
	}
	public function checking(){ 
		$this->load->Model("mlogin");
		$this->form_validation->set_rules('username', 'Username', 'required');
		$this->form_validation->set_rules('password', 'Password', 'required');

		#Kiểm tra điều kiện validate 
		if ($this->form_validation->run() == TRUE) { 
			$a_UserInfo['username'] = $this->input->post('username');
			$a_UserInfo['password'] = md5($this->input->post('password'));
			$a_UserChecking = $this->mlogin->a_fCheckUser($a_UserInfo);
			if ($a_UserChecking) {
				$this->session->sess_expiration = '28800';
				$this->session->set_userdata('user', $a_UserChecking);
				$this->session->set_userdata('logged_in', 'true');
			} 
			redirect(base_url('topic.html')); 
		}
	}
	public function logout(){ 
		$this->session->sess_destroy();
		// Unset session of user
		redirect(base_url('login.html')); 
	}
};