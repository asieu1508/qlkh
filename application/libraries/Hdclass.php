<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 

class hdclass {
	private $CI;
	public function __construct()
    {
       $this->CI =& get_instance();

       $this->CI->load->helper('url');
       $this->CI->load->library('session');
    }
    public function check_logined()
     {
    	if (!$this->CI->session->userdata('logged_in'))
        {
            redirect(base_url().'login.html');
        }
    }
    public function createDate($ngay,$format)
	{
		if($format == "dd-mm-yyyy")
		{			
			$arr = array();
			$arr = explode('-',$ngay);
			return mktime(0,0,0,$arr[1],$arr[0],$arr[2]);
		}
		if($format == "mm-dd-yyyy")
		{
			$arr = array();
			$arr = explode('-',$ngay);
			return mktime(0,0,0,$arr[0],$arr[1],$arr[2]);
		}
		if($format == "dd-mm-yyyy h:i")
		{			
			$arr2 = explode(' ',$ngay);
			$arr = explode('-',$arr2[0]);
			$arr3 = explode(':',$arr2[1]);
			
			return mktime($arr3[0],$arr3[1],0,$arr[1],$arr[0],$arr[2]);
		}
		if($format == "mm-dd-yyyy h:i")
		{			
			$arr2 = explode(' ',$ngay);
			$arr = explode('-',$arr2[0]);
			$arr3 = explode(':',$arr2[1]);
			
			return mktime($arr3[0],$arr3[1],0,$arr[0],$arr[1],$arr[2]);
		}
		if($format == "mm-dd-yyyy h:i:s")
		{			
			$arr2 = explode(' ',$ngay);
			$arr = explode('-',$arr2[0]);
			$arr3 = explode(':',$arr2[1]);
			
			return mktime($arr3[0],$arr3[1],$arr3[2],$arr[0],$arr[1],$arr[2]);
		}
	}
	
	public function delVietnameses($value)
	{	
		$marTViet=array("à","á","ạ","ả","ã","â","ầ","ấ","ậ","ẩ","ẫ","ă",
		"ằ","ắ","ặ","ẳ","ẵ","è","é","ẹ","ẻ","ẽ","ê","ề"
		,"ế","ệ","ể","ễ",
		"ì","í","ị","ỉ","ĩ",
		"ò","ó","ọ","ỏ","õ","ô","ồ","ố","ộ","ổ","ỗ","ơ"
		,"ờ","ớ","ợ","ở","ỡ",
		"ù","ú","ụ","ủ","ũ","ư","ừ","ứ","ự","ử","ữ",
		"ỳ","ý","ỵ","ỷ","ỹ",
		"đ",
		"À","Á","Ạ","Ả","Ã","Â","Ầ","Ấ","Ậ","Ẩ","Ẫ","Ă"
		,"Ằ","Ắ","Ặ","Ẳ","Ẵ",
		"È","É","Ẹ","Ẻ","Ẽ","Ê","Ề","Ế","Ệ","Ể","Ễ",
		"Ì","Í","Ị","Ỉ","Ĩ",
		"Ò","Ó","Ọ","Ỏ","Õ","Ô","Ồ","Ố","Ộ","Ổ","Ỗ","Ơ"
		,"Ờ","Ớ","Ợ","Ở","Ỡ",
		"Ù","Ú","Ụ","Ủ","Ũ","Ư","Ừ","Ứ","Ự","Ử","Ữ",
		"Ỳ","Ý","Ỵ","Ỷ","Ỹ",
		"Đ");
		
		$marKoDau=array("a","a","a","a","a","a","a","a","a","a","a"
		,"a","a","a","a","a","a",
		"e","e","e","e","e","e","e","e","e","e","e",
		"i","i","i","i","i",
		"o","o","o","o","o","o","o","o","o","o","o","o"
		,"o","o","o","o","o",
		"u","u","u","u","u","u","u","u","u","u","u",
		"y","y","y","y","y",
		"d",
		"A","A","A","A","A","A","A","A","A","A","A","A"
		,"A","A","A","A","A",
		"E","E","E","E","E","E","E","E","E","E","E",
		"I","I","I","I","I",
		"O","O","O","O","O","O","O","O","O","O","O","O"
		,"O","O","O","O","O",
		"U","U","U","U","U","U","U","U","U","U","U",
		"Y","Y","Y","Y","Y",
		"D");
		return str_replace($marTViet,$marKoDau,$value);
	}
	public function removeLastAndSql($sql) {
		$n = strlen($sql);
		$m = $n-3;
		return substr($sql, 0, $m);
	}
	function showMenu() {

		$this->CI->load->Model("model_menu", "menu");
		$items = $this->CI->menu->all();

		// load the library and pass the array data
		$this->CI->load->library("multi_menu");
		$this->CI->multi_menu->set_items($items);
        return $this->CI->multi_menu->render();
	}

}