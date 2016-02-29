<?php
class Model_sponsored extends CI_Model{
	protected $_table = "dmdt_ct_ck_sk";
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
		$this->db->select('*');
		$this->db->from($this->_table. " as a, hientrang as b, ms_khoa_tt as c, loai_de_tai AS d");
		$this->db->where('a.DONVI     = c.MSKHOA');
		$this->db->where('a.HIENTRANG = b.MAHT');
		$this->db->where('a.LOAIDETAI = d.MALOAI');
		$this->db->order_by("a.MS", "desc");
		$query = $this->db->get(); 
		return $query->result_array();
	}
	public function selectLimit($perpage, $offset){ 
		$str = $this->_table. " as a, hientrang as b, ms_khoa_tt as c, loai_de_tai AS d";
		$this->db->where('a.DONVI     = c.MSKHOA');
		$this->db->where('a.HIENTRANG = b.MAHT');
		$this->db->where('a.LOAIDETAI = d.MALOAI');
		$this->db->order_by("a.MS", "desc");

	    $query =  $this->db->get($str, $perpage,$offset); 
	    return $query->result_array();
	}
	public function countAll() {
		return $this->db->count_all_results($this->_table);
	}
	public function countAllCk() {
		$this->db->from($this->_table);
		$this->db->where('LOAIDETAI', 'CK');
		return $this->db->count_all_results();
	}
	public function countAllCt() {
		$this->db->from($this->_table);
		$this->db->where('LOAIDETAI', 'CT');
		return $this->db->count_all_results();
	}
	public function countAllSk() {
		$this->db->from($this->_table);
		$this->db->where('LOAIDETAI', 'SK');
		return $this->db->count_all_results();
	}
	public function detail($id) {
	    $this->db->select('*');
	    $this->db->where('MS', $id);
	    $query = $this->db->get($this->_table);
	    return $query->result_array();
	}
	public function insert($data) {
        $this->db->insert($this->_table,$data);
	}
	public function update($data, $id) {
        $this->db->where("MS", $id);
        $this->db->update($this->_table,$data);
	}
	public function delete($id) {
        $this->db->where("MS", $id);
        $this->db->delete($this->_table);
    }
	public function getMaxNumberContractByDepartmentId($madonvi, $firstDayOfYear) {
		$this->db->select_max('MS');
		$this->db->from($this->_table);
		$this->db->where('DONVI', $madonvi);
		$query = $this->db->get(); 
		return $query->result_array();
	}
	public function search($string) {
		$this->db->from($this->_table);
		$this->db->where("MS LIKE '%".$string."%' OR CNDT LIKE '%".$string."%' OR TENDT LIKE '%". $string ."%'");
		$query = $this->db->get();
	    return $query->result_array();

	}
	public function getStatistics($sql) {
		$this->db->from($this->_table." AS a, hientrang AS b, ms_khoa_tt AS c, loai_de_tai AS d");
		$this->db->where($sql);
		$this->db->where('a.HIENTRANG = b.MAHT');
		$this->db->where('a.DONVI     = c.MSKHOA');
		$this->db->where('a.LOAIDETAI = d.MALOAI');
		$this->db->order_by("a.MS", "desc");
		$query = $this->db->get();
	    return $query->result_array();
	}
}