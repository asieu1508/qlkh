<?php
class Mhome extends CI_Model{
	protected $_table = "dm_detai_captruong";
	public function __construct(){
		parent::__construct();
		$this->load->database();
	}
	
	public function listAll() {
		return $this->db->get($this->_table)->result_array();
	}
	 public function detail($id) {
	    $this->db->select('*');
	    $this->db->where('MSDT', $id);
	    $query = $this->db->get($this->_table);
	    return $query->result_array();
	  }
}