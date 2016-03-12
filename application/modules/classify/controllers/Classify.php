<?php 
class Classify extends CI_Controller{
	function __construct()
    {
        parent::__construct();
 
        $this->load->helper(array('url', 'date'));
        $this->load->library(array('session', 'hdclass'));
       
        $this->hdclass->check_logined();
        $this->_init();
        
        
    }
    private function _init()
    {
        $this->output->set_template('default');
        $data['menu'] = $this->hdclass->showMenu();
        $this->load->view('template_sidebar', $data);
        // $this->load->js('assets/themes/default/js/topic.js');
    }
    public function index()
    {
        $this->output->set_common_meta('Phân loại đề NCKH - Riro Software', 'Trang Phân loại đề NCKH', 'Phân loại đề NCKH');
        $this->load->Model("model_classify");
        $data['level'] = "classone";
        $data['action'] = "addzero";
        $data['classid'] = 0;
        $data['content'] = $this->model_classify->listAllLevelZero();
        
        $this->load->view('template_list_classify', $data);
    }
    public function classone($id)
    {
        $this->output->set_common_meta('Phân loại đề NCKH - Riro Software', 'Trang Phân loại đề NCKH', 'Phân loại đề NCKH');
        $this->load->Model("model_classify");
        $data['content'] = $this->model_classify->listAllLevelOneById($id);
        $data['level'] = "classtwo";
        $data['action'] = "addone";
        $data['classid'] = $id;
        $this->load->view('template_list_classify', $data);
    }
    public function classtwo($id)
    {
        $this->output->set_common_meta('Phân loại đề NCKH - Riro Software', 'Trang Phân loại đề NCKH', 'Phân loại đề NCKH');
        $this->load->Model("model_classify");
        $data['content'] = $this->model_classify->listAllLevelTwoById($id);
        $data['level'] = "classthree";
        $data['action'] = "addtwo";
        $data['classid'] = $id;
        $this->load->view('template_list_classify', $data);
    }

    public function classthree($id)
    {
        $this->output->set_common_meta('Phân loại đề NCKH - Riro Software', 'Trang Phân loại đề NCKH', 'Phân loại đề NCKH');
        $this->load->Model("model_classify");
        $data['content'] = $this->model_classify->listAllLevelThreeById($id);
        $data['level'] = "editthree";
        $data['action'] = "addthree";
        $data['classid'] = $id;
        $this->load->view('template_list_classify', $data);
    }

    
}