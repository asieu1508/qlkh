<?php
class User extends CI_Controller{
	// private $b_Check = false;
	public function __construct(){
		parent::__construct();
		$this->load->helper(array('url'));
        $this->load->library(array('session', 'form_validation', 'hdclass'));
        $this->hdclass->check_logined();
        $this->_init();
	}
	private function _init()
    {
    	$this->output->set_template('default');
        $data['menu'] = $this->hdclass->showMenu();
        $this->load->view('template_sidebar', $data);
    }
	public function profile () {
		if ($this->session->userdata('user')) {
			$user = $this->session->userdata('user');
			$this->load->Model("model_department");
			$this->load->Model("model_user");
			$data['dmKhoa']= $this->model_department->listAll();
			$data['content']    = $this->model_user->detail($user['USERNAME']);

        	$this->load->view('template_user_profile', $data);
		}
		else {
			redirect('/my404', 'refresh');
		}
	}
	public function updatePassword(){ 
		$this->load->Model("model_user");
		echo $_POST['submit'];
		if (isset($_POST['submit'])) {
			$username         = $this->input->post('username');
			$password         = $this->input->post('oldPassword');

			$this->form_validation->set_rules('oldPassword', 'Password', 'required');
			$this->form_validation->set_rules('newPassword', 'OldPassword', 'required|min_length[6]' );
			$this->form_validation->set_rules('confirmNewPassword', 'NewPassword', 'required');
			$action = "Cập nhật dữ liệu";
			if ($this->form_validation->run() == TRUE) {
				$info = $this->model_user->getUserByPassword($username, md5($password));
				if (count($info)> 0 && $this->input->post('newPassword') == $this->input->post('confirmNewPassword')) {
					$user['PASSWORD'] = md5($this->input->post('newPassword'));
		            $this->model_user->update($user, $username);
		            //Kiểm tra cập nhật thành công
		            if ($this->db->affected_rows()) {
		                $this->session->set_flashdata('flag', '1');
		                $this->session->set_flashdata('action', $action);
		                redirect(base_url('user/profile/'.$username));
		            }
		            else {
		                $this->session->set_flashdata('flag', '2');
		                $this->session->set_flashdata('action', $action);
		                redirect(base_url('user/profile/'.$username));
		            }	
				}
				else {
	                $this->session->set_flashdata('flag', '2');
	                $this->session->set_flashdata('action', $action);
	                redirect(base_url('user/profile/'.$username));
	            }	
			}
			else {
                $this->session->set_flashdata('flag', '2');
                $this->session->set_flashdata('action', $action);
                redirect(base_url('user/profile/'.$username));
            }	
		}
		else {
			// echo $this->db->last_query();
            redirect('/my404', 'refresh');
        }
	}
	public function updateInfo(){ 
		$this->load->Model("model_user");
		if (isset($_POST['submit'])) {
			$username        = $this->input->post('username');
            $user['NAME']    = $this->input->post('name');
            $user['SEX']     = $this->input->post('sex');
            $user['PHONE']   = $this->input->post('phone');
            $user['EMAIL']   = $this->input->post('email');
            $user['WORK']    = $this->input->post('work');
            $user['BIRTHDAY']= $this->input->post('birthday');
            $this->model_user->update($user, $username);
            $action = "Cập nhật dữ liệu";
            //Kiểm tra cập nhật thành công
            if ($this->db->affected_rows()) {
                $this->session->set_flashdata('flag', '1');
                $this->session->set_flashdata('action', $action);
                redirect(base_url('user/profile/'.$username));
            }
            else {
                $this->session->set_flashdata('flag', '2');
                $this->session->set_flashdata('action', $action);
                redirect(base_url('user/profile/'.$username));
            }
		}
		else {
            redirect('/my404', 'refresh');
        }
	}
};