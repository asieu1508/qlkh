<?php
class Mlogin extends CI_Model{
	protected $_table = "user";

	public function __construct(){
		parent::__construct();
		$this->load->database();
	}

	function a_fCheckUser( $a_UserInfo ){ 
        $select = '*';
        $a_User  =   $this->db->select($select)->where('USERNAME', $a_UserInfo['USERNAME'])
                                                ->where('PASSWORD', $a_UserInfo['PASSWORD'])
                                                ->get($this->_table) 
                                                ->row_array(); 
        if(count($a_User) >0) { 
            return $a_User; 
        } 
        else { 
            return false; 
        } 
    } 
}