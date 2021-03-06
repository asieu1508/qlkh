<?php
class Model_status extends CI_Model {
	protected $_table = "hientrang";
	public function __construct(){
		parent::__construct();
		$this->load->database();
	}
	
	public function listAll() {
		return $this->db->get($this->_table)->result_array();
	}

	public function detail($id) {
	    $this->db->select('*');
	    $this->db->where('MAHT', $id);
	    $query = $this->db->get($this->_table);
	    return $query->result_array();
	}
	public function update($data, $id) {
        $this->db->where("MAHT", $id);
        $this->db->update($this->_table,$data);
	}
	public function delete($id) {
        $this->db->where("MAHT", $id);
        $this->db->delete($this->_table);
    }
}