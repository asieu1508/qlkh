<?php 
class Home extends CI_Controller{
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
       $this->load->js('assets/themes/default/js/numscroller-1.0.js');
    }
 
    public function index()
    {
        $this->output->set_common_meta('Riro Software', 'This is a page home', 'home');

        $this->load->Model("model_topic");
        $this->load->Model("model_sponsored");
        $this->load->Model("model_student_topic");
        $this->load->Model("model_document");

        $data['captruong'] = $this->model_topic->countAll();
        $data['capkhoa']   = $this->model_sponsored->countAllCk();
        $data['captinh']   = $this->model_sponsored->countAllCt();
        $data['sangkien']  = $this->model_sponsored->countAllsk();
        $data['sinhvien']  = $this->model_student_topic->countAll();
        $data['tailieu']   = $this->model_document->countAll();

        $currentYear = date('Y');
        $fistDayOfyear = date('Y-m-d', strtotime('first day of January '.$currentYear));
        $lastDayofyear = date('Y-m-d', strtotime('last day of December '.$currentYear));

        $data['nckh'][9] =  count($this->model_topic->countNumberTopicOfYear($fistDayOfyear , $lastDayofyear));
        
        for ($i=8; $i >= 0; $i--) { 
            $currentYear = $currentYear - 1;
            $fistDayOfyear = date('Y-m-d', strtotime('first day of January '.$currentYear));
            $lastDayofyear = date('Y-m-d', strtotime('last day of December '.$currentYear));
            $data['nckh'][$i] =  count($this->model_topic->countNumberTopicOfYear($fistDayOfyear , $lastDayofyear));
        }

        $this->load->view('template_sidebar');
        $this->load->view('template_home', $data);

    }
}