<?php
class Model_menu extends CI_Model {
	protected $_table = "menus";
	public function __construct(){
		parent::__construct();
		$this->load->database();
	}
	
	public function all()
	{
		return $this->db->get($this->_table)->result_array();
	}
	public function getMenuByParentId($id = NULL) {
		if ($id == NULL) {
			$this->db->where('parent IS NULL');
		}
	   	else {
	   		 $this->db->where('parent', $id);
	   	}
	    $query = $this->db->get($this->_table);
	    return $query->result_array();
	}
	public function getMenuById($id) {

	   	$this->db->where('id', $id);
	    $query = $this->db->get($this->_table);
	    return $query->result_array();
	}
	public function getChildMenuById($id) {

	   	$this->db->where('parent', $id);
	    $query = $this->db->get($this->_table);
	    return $query->result_array();
	}
}