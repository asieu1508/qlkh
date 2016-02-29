<?php
class Model_type_topic extends CI_Model {
	protected $_table = "loai_de_tai";
	public function __construct(){
		parent::__construct();
		$this->load->database();
	}
	
	public function listAll() {
		return $this->db->get($this->_table)->result_array();
	}

	public function detail($id) {
	    $this->db->select('*');
	    $this->db->where('MALOAI', $id);
	    $query = $this->db->get($this->_table);
	    return $query->result_array();
	}
	public function update($data, $id) {
        $this->db->where("MALOAI", $id);
        $this->db->update($this->_table,$data);
	}
	public function delete($id) {
        $this->db->where("MALOAI", $id);
        $this->db->delete($this->_table);
    }
}