<?php
class Model_user extends CI_Model{
	protected $_table = "user";
	public function __construct(){
		parent::__construct();
		$this->load->database();
	}
	
	public function listAll() {
		return $this->db->get($this->_table)->result_array();
	}

	public function listAllDesc() {
		$this->db->from($this->_table);
		$query = $this->db->get(); 
		
	}

	public function countAll() {
		return $this->db->count_all_results($this->_table);
	}
	public function getUserByPassword($username, $password) {
		$this->db->where('USERNAME', $username);
		$this->db->where('PASSWORD', $password);
		$query = $this->db->get($this->_table); 
		return $query->result_array();
	}
	public function detail($username) {
	    $this->db->where('USERNAME', $username);
	    $query = $this->db->get($this->_table);
	    return $query->result_array();
	}
	public function insert($data) {
        $this->db->insert($this->_table,$data);
	}
	public function update($data, $username) {
        $this->db->where('USERNAME', $username);
        $this->db->update($this->_table,$data);
	}
	public function delete($id) {
       $this->db->where('USERNAME', $username);
        $this->db->delete($this->_table);
    }
}