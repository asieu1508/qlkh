<?php
class Model_grassroots extends CI_Model{
	protected $_table = "dm_detai_capcoso";
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
		$this->db->order_by("MSDT", "asc");
		$query = $this->db->get(); 
		return $query->result_array();
	}
	public function listAllDesc() {
		$this->db->from($this->_table. " AS a, hientrang AS b, ms_khoa_tt AS c, rank AS d");
		$this->db->where('a.HTDETAI = b.MAHT');
		$this->db->where('a.DONVI   = c.MSKHOA');
		$this->db->where('a.XEPLOAI = d.MALOAI');
		$this->db->order_by("a.MSDT", "desc");
		$this->db->cache_on();
		$query = $this->db->get(); 
		return $query->result_array();
	}
	public function selectLimit($perpage, $offset){ 
		$str = $this->_table. " AS a, hientrang AS b, ms_khoa_tt AS c, rank AS d";
		$this->db->where('a.HTDETAI = b.MAHT');
		$this->db->where('a.DONVI   = c.MSKHOA');
		$this->db->where('a.XEPLOAI = d.MALOAI');
		$this->db->order_by("a.MSDT", "desc");

	    $query =  $this->db->get($str, $perpage,$offset); 
	    return $query->result_array();
	}
	public function countAll() {
		return $this->db->count_all_results($this->_table);
	}
	public function countNumberTopicOfYear($fistDayOfyear, $lastDayofyear){
		$this->db->where('TGBATDAU BETWEEN "'. $fistDayOfyear . '" and "'. $lastDayofyear.'"');
		$query = $this->db->get($this->_table);
	    return $query->result_array();
	}
	public function detail($id) {
	    $this->db->select('*');
	    $this->db->where('MSDT', $id);
	    $query = $this->db->get($this->_table);
	    $this->db->cache_on();
	    return $query->result_array();
	}
	public function insert($data) {
        $this->db->insert($this->_table,$data);
	}
	public function update($data, $id) {
        $this->db->where("MSDT", $id);
        $this->db->update($this->_table,$data);
	}
	public function delete($id) {
        $this->db->where("MSDT", $id);
        $this->db->delete($this->_table);
    }
	public function getMaxNumberContractByDepartmentId($madonvi, $firstDayOfYear) {
		$this->db->select_max('MSDT');
		$this->db->from($this->_table);
		$this->db->where('DONVI', $madonvi);
		$this->db->where('TGBATDAU >=', $firstDayOfYear);
		$query = $this->db->get(); 
		return $query->result_array();
	}
	public function search($string) {
		$this->db->from($this->_table);
		$this->db->where("MSDT LIKE '%".$string."%' OR CNDT LIKE '%".$string."%' OR TENDT LIKE '%". $string ."%'");
		$query = $this->db->get();
	    return $query->result_array();

	}
	public function getStatistics($sql) {
		$this->db->from($this->_table." AS a, hientrang AS b, ms_khoa_tt AS c, rank AS d");
		$this->db->where($sql);
		$this->db->where('a.HTDETAI = b.MAHT');
		$this->db->where('a.DONVI   = c.MSKHOA');
		$this->db->where('a.XEPLOAI = d.MALOAI');
		$this->db->order_by("a.MSDT", "desc");
		$query = $this->db->get();
	    return $query->result_array();
	}
}