<?php
class Model_document extends CI_Model{
	protected $_table = "dm_tlgd";
	public function __construct(){
		parent::__construct();
		$this->load->database();
	}
	
	public function listAll() {
		return $this->db->get($this->_table)->result_array();
	}

	public function listAllAsc() {
		$this->db->from($this->_table);
		$this->db->order_by("TGBATDAU", "asc");
		$this->db->order_by("DONVI", "asc");
		$this->db->order_by("MSTLGD", "asc");
		$query = $this->db->get(); 
		return $query->result_array();
	}
	public function listAllDesc() {
		$this->db->select('*');
		$this->db->from($this->_table. " as a, hientrang_tlgd as b, ms_khoa_tt as c, loai_tlgd d");
		$this->db->where('a.DONVI = c.MSKHOA');
		$this->db->where('a.HIENTRANG = b.MAHT');
		$this->db->where('a.LOAITLGD = d.MALOAI');
		$this->db->order_by("a.MSTLGD", "desc");
		$query = $this->db->get(); 
		return $query->result_array();
	}
	public function selectLimit($perpage, $offset){ 
		$str = $this->_table. " as a, hientrang_tlgd as b, ms_khoa_tt as c, loai_tlgd d";
		$this->db->where('a.DONVI = c.MSKHOA');
		$this->db->where('a.HIENTRANG = b.MAHT');
		$this->db->where('a.LOAITLGD = d.MALOAI');
		$this->db->order_by("a.MSTLGD", "desc");

	    $query =  $this->db->get($str, $perpage,$offset); 
	    return $query->result_array();
	}
	public function countAll() {
		return $this->db->count_all_results($this->_table);
	}
	public function detail($id) {
	    $this->db->select('*');
	    $this->db->where('MSTLGD', $id);
	    $query = $this->db->get($this->_table);
	    return $query->result_array();
	}
	public function insert($data) {
        $this->db->insert($this->_table,$data);
	}
	public function update($data, $id) {
        $this->db->where("MSTLGD", $id);
        $this->db->update($this->_table,$data);
	}
	public function delete($id) {
        $this->db->where("MSTLGD", $id);
        $this->db->delete($this->_table);
    }
	public function getMaxNumberContractByDepartmentId($madonvi, $firstDayOfYear) {
		$this->db->select_max('MSTLGD');
		$this->db->from($this->_table);
		$this->db->where('DONVI', $madonvi);
		$this->db->where('TGBATDAU >=', $firstDayOfYear);
		$query = $this->db->get(); 
		return $query->result_array();
	}
	public function search($string) {
		$this->db->from($this->_table);
		$this->db->where("MSTLGD LIKE '%".$string."%' OR TENTG LIKE '%".$string."%' OR TENTLGD LIKE '%". $string ."%'");
		$query = $this->db->get();
	    return $query->result_array();
	}
	public function getStatistics($sql) {
		$this->db->from($this->_table." AS a, hientrang_tlgd AS b, ms_khoa_tt AS c,  loai_tlgd d");
		$this->db->where($sql);
		$this->db->where('a.HIENTRANG  = b.MAHT');
		$this->db->where('a.DONVI    = c.MSKHOA');
		$this->db->where('a.LOAITLGD = d.MALOAI');
		$this->db->order_by("a.MSTLGD", "desc");
		$query = $this->db->get();
	    return $query->result_array();
	}
}