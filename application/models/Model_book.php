<?php
class Model_book extends CI_Model{
	protected $_table = "sach";
	public function __construct(){
		parent::__construct();
		$this->load->database();
	}
	
	public function listAll() {
		return $this->db->get($this->_table)->result_array();
	}

	public function listAllDesc() {
		$this->db->select('*');
		$this->db->from($this->_table. " as a, theloaisach as b, nhaxuatban as c, ms_khoa_tt as d");
		$this->db->where('a.THELOAI = b.MSTHELOAI');
		$this->db->where('a.NXB     = c.MSNXB');
		$this->db->where('a.DONVI     = d.MSKHOA');
		$this->db->order_by("a.MSSACH", "desc");
		$query = $this->db->get(); 
		return $query->result_array();
	}
	public function selectLimit($perpage, $offset){ 
		$str = $this->_table. " as a, theloaisach as b, nhaxuatban as c, ms_khoa_tt as d";
		$this->db->where('a.THELOAI = b.MSTHELOAI');
		$this->db->where('a.NXB     = c.MSNXB');
		$this->db->where('a.DONVI     = d.MSKHOA');
		$this->db->order_by("a.MSSACH", "desc");

	    $query =  $this->db->get($str, $perpage,$offset); 
	    return $query->result_array();
	}
	public function countAll() {
		return $this->db->count_all_results($this->_table);
	}
	public function detail($id) {
	    $this->db->select('*');
	    $this->db->where('MSSACH', $id);
	    $query = $this->db->get($this->_table);
	    return $query->result_array();
	}
	public function insert($data) {
        $this->db->insert($this->_table,$data);
	}
	public function update($data, $id) {
        $this->db->where("MSSACH", $id);
        $this->db->update($this->_table,$data);
	}
	public function delete($id) {
        $this->db->where("MSSACH", $id);
        $this->db->delete($this->_table);
    }
	public function getMaxNumberContractByDepartmentId($madonvi, $firstDayOfYear) {
		$this->db->select_max('MSSACH');
		$this->db->from($this->_table);
		$this->db->where('DONVI', $madonvi);
		$this->db->where('TGBATDAU >=', $firstDayOfYear);
		$query = $this->db->get(); 
		return $query->result_array();
	}
	public function search($string) {
		$this->db->from($this->_table);
		$this->db->where("TENSACH LIKE '%".$string."%' OR TENTG LIKE '%".$string."%' OR NAMXB LIKE '%". $string ."%'");
		$query = $this->db->get();
	    return $query->result_array();
	}
	public function getStatistics($sql) {
		$this->db->from($this->_table." as a, ms_khoa_tt as b");
		$this->db->where($sql);
		$this->db->where('a.DONVI     = b.MSKHOA');
		$query = $this->db->get();
	    return $query->result_array();
	}
}