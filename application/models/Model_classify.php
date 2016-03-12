<?php
class Model_classify extends CI_Model{
	protected $_table_0 = "classify_level_0";
	protected $_table_1 = "classify_level_1";
	protected $_table_2 = "classify_level_2";
	protected $_table_3 = "classify_level_3";
	public function __construct(){
		parent::__construct();
		$this->load->database();
	}
	
	public function listAllLevelZero() {
		return $this->db->get($this->_table_0)->result_array();
	}
	public function detailLevelZero($id) {
	    $this->db->where('MASO', $id);
	    $query = $this->db->get($this->_table_0);
	    return $query->result_array();
	}
	public function updateLevelZero($data, $id) {
        $this->db->where("MASO", $id);
        $this->db->update($this->_table_0,$data);
	}
	public function deleteLevelZero($id) {
        $this->db->where("MASO", $id);
        $this->db->delete($this->_table_0);
    }

    public function listAllLevelOne() {
		return $this->db->get($this->_table_1)->result_array();
	}
	public function listAllLevelOneById($id) {
	    $this->db->where('MASOCAP0', $id);
	    $query = $this->db->get($this->_table_1);
	    return $query->result_array();
	}
	public function detailLevelOne($id) {
	    $this->db->where('MASO', $id);
	    $query = $this->db->get($this->_table_1);
	    return $query->result_array();
	}
	public function updateLevelOne($data, $id) {
        $this->db->where("MASO", $id);
        $this->db->update($this->_table_1,$data);
	}
	public function deleteLevelOne($id) {
        $this->db->where("MASO", $id);
        $this->db->delete($this->_table_1);
    }


    public function listAllLevelTwo() {
		return $this->db->get($this->_table_2)->result_array();
	}
	public function listAllLevelTwoById($id) {
	    $this->db->where('MASOCAP1', $id);
	    $query = $this->db->get($this->_table_2);
	    return $query->result_array();
	}
	public function detailLevelTow($id) {
	    $this->db->where('MASO', $id);
	    $query = $this->db->get($this->_table_2);
	    return $query->result_array();
	}
	public function updatelLevelTwo($data, $id) {
        $this->db->where("MASO", $id);
        $this->db->update($this->_table_2,$data);
	}
	public function deletelLevelTwo($id) {
        $this->db->where("MASO", $id);
        $this->db->delete($this->_table_2);
    }


    public function listAllLevelThree() {
		return $this->db->get($this->_table_3)->result_array();
	}
	public function listAllLevelThreeById($id) {
	    $this->db->where('MASOCAP2', $id);
	    $query = $this->db->get($this->_table_3);
	    return $query->result_array();
	}
	public function detailLevelThree($id) {
	    $this->db->where('MASO', $id);
	    $query = $this->db->get($this->_table_3);
	    return $query->result_array();
	}
	public function updateLevelThree($data, $id) {
        $this->db->where("MASO", $id);
        $this->db->update($this->_table_3,$data);
	}
	public function deleteLevelThree($id) {
        $this->db->where("MASO", $id);
        $this->db->delete($this->_table_3);
    }
}