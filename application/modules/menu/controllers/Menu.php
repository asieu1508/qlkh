<?php
class Menu extends CI_Controller{
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
    public function index()
    {
        $this->load->model('model_menu');
        $menus = $this->model_menu->getMenuByParentId();
        $i = 0;
        $menu_tmp = array();
        foreach ($menus as $value) {
            $menu_tmp[$i]['id'] = $value['id'];
            $menu_tmp[$i]['name'] = $value['name'];
            // $menu_tmp[$i]['slug'] = $value['slug'];
            // $menu_tmp[$i]['number'] = $value['number'];
            // $menu_tmp[$i]['icon'] = $value['icon'];
            // $menu_tmp[$i]['parent'] = $value['parent'];
            $arr = $this->model_menu->getChildMenuById($value['id']);
            if (count($arr)) {
                foreach ($arr as $arr2) {
                    $menu_tmp[$i]['children'][] = $arr2;
                }
            }
            $i++;
        }
        $data['content'] = $menu_tmp;
        $this->load->view('template_list_menu', $data);
    }
    

}