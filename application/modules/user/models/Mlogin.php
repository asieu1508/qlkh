<?php
class Mlogin extends CI_Model{
	protected $_table = "account";

	public function __construct(){
		parent::__construct();
		$this->load->database();
	}

	function a_fCheckUser( $a_UserInfo ){ 
        $select = array('username', 'password', 'id_group', 'role');
        $a_User  =   $this->db->select($select)->where('username', $a_UserInfo['username'])
                                                ->where('password', $a_UserInfo['password'])
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