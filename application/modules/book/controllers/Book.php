<?php 
class Book extends CI_Controller{
	function __construct()
    {
        parent::__construct();
        $this->load->helper(array('url', 'date'));
        $this->load->library(array('session', 'hdclass'));
        $this->hdclass->check_logined();
        $this->_init();
        
    }
    private function _init()
    {
       $this->output->set_template('default');
       $this->load->js('assets/themes/default/js/book.js');
    }
    public function index()
    {
        $this->output->set_common_meta('Tài liệu giảng dạy - Riro Software', 'Trang danh mục tài liệu giảng dạy', 'Danh mục tài liệu giảng dạy');
        $this->load->Model("model_book");
        $data['content']        = $this->model_book->listAllDesc();
        $data['total_book'] = $this->model_book->countAll();
        $this->load->view('template_sidebar');
        $this->load->view('template_list_book', $data);
    }
    public function add()
    {
        $this->load->Model("model_nxb");
        $this->load->Model("model_quocgia");
        $this->load->Model("model_department");
        $this->load->Model("model_theloaisach");
        $data['url'] = 'book/insert';
        $data['dmKhoa']= $this->model_department->listAll();
        $data['nhaxuatban']= $this->model_nxb->listAll();
        $data['quocgia']= $this->model_quocgia->listAll();
        $data['theloaisach']= $this->model_theloaisach->listAll();
        $this->load->view('template_sidebar');
        $this->load->view('template_add_book',  $data);
    }
    public function insert()
    {
        $this->load->Model("model_book");

        //Kiểm tra có bấm nút submit hay không
        if (isset($_POST['submit'])) {

            //Set dữ liệu cần insert
            $book['TENSACH']  = $this->input->post('tensach');
            $book['TENTG']    = $this->input->post('tentg');
            $book['DONVI']    = $this->input->post('donvi');
            $book['GIOITINH'] = $this->input->post('gioitinh');
            $book['NXB']      = $this->input->post('nxb');
            $book['NAMXB']    = $this->input->post('namxb');
            $book['ISSN']     = $this->input->post('issn');
            $book['QUOCGIA']  = $this->input->post('quocgia');
            $book['THELOAI']  = $this->input->post('theloaisach');

            //Tiến hành insert dữ liệu
            $this->model_book->insert($book);
            
            $action = "Thêm dữ liệu";
            //Kiểm tra insert thành công
            if ($this->db->affected_rows()) {
                $this->session->set_flashdata('flag', '1');
                $this->session->set_flashdata('action', $action);
                redirect(base_url('book/add'));
            }
            else {
                $this->session->set_flashdata('flag', '2');
                $this->session->set_flashdata('action', $action);
                redirect(base_url('book/add/'));
            }
        }
        else {
                echo "Trang không tồn tại!";
        }
    }
    public function edit($id)
    {
        $this->load->Model("model_nxb");
        $this->load->Model("model_quocgia");
        $this->load->Model("model_department");
        $this->load->Model("model_theloaisach");
         $this->load->Model("model_book");
        $data['url'] = 'book/update';
        $data['dmKhoa']= $this->model_department->listAll();
        $data['nhaxuatban']= $this->model_nxb->listAll();
        $data['quocgia']= $this->model_quocgia->listAll();
        $data['theloaisach']= $this->model_theloaisach->listAll();
        $data['content']= $this->model_book->detail($id);
        $this->load->view('template_sidebar');
        $this->load->view('template_detail_book',  $data);
    }
    public function update()
    {
        $this->load->Model("model_book");

        //Kiểm tra có bấm nút submit hay không
        if (isset($_POST['submit'])) {

            //Set dữ liệu cần insert
            $id  = $this->input->post('mssach');
            $book['TENSACH']  = $this->input->post('tensach');
            $book['TENTG']    = $this->input->post('tentg');
            $book['DONVI']    = $this->input->post('donvi');
            $book['GIOITINH'] = $this->input->post('gioitinh');
            $book['NXB']      = $this->input->post('nxb');
            $book['NAMXB']    = $this->input->post('namxb');
            $book['ISSN']     = $this->input->post('issn');
            $book['QUOCGIA']  = $this->input->post('quocgia');
            $book['THELOAI']  = $this->input->post('theloaisach');

            //Tiến hành insert dữ liệu
            $this->model_book->update($book, $id);
            $action = "Cập nhật dữ liệu";
            //Kiểm tra insert thành công
            if ($this->db->affected_rows()) {

                $this->session->set_flashdata('flag', '1');
                $this->session->set_flashdata('action', $action);
                redirect(base_url('book/edit/'.$id));
            }
            else {
                $this->session->set_flashdata('flag', '2');
                $this->session->set_flashdata('action', $action);
                redirect(base_url('book/edit/'.$id));
            }
        }
        else {
                echo "Trang không tồn tại!";
        }
    }
    public function delete() {
        $this->load->Model("model_book");
        $book_id = $_REQUEST['id'];
        $this->model_book->delete($book_id);

        if ($this->db->affected_rows()) {
            echo json_encode(1);
            redirect('/book', 'refresh');
        }
        else {
            echo json_encode(0);
            redirect('/book', 'refresh');
        }
    }
    public function search() {
        $this->load->Model("model_book");
        if (isset($_GET['term'])){
            $q = strtolower($_GET['term']);
            $arr = $this->model_book->search($q);

        }
        if($arr > 0){
          foreach ($arr as $row){
            $new_row['label'] = $row['TENSACH'];
            $new_row['tentg'] = $row['TENTG'];
            $new_row['namxb'] = $row['NAMXB'];
            $new_row['mssach'] = $row['MSSACH'];
            $row_set[]        = $new_row;
            echo json_encode($row_set);
          redirect('/book', 'refresh');
          }
        }
    }
    public function searchresuft() {
        $this->output->set_common_meta('Kết quả tìm kiếm - Riro Software', 'Trang danh mục NCKH cấp trường', 'Danh mục đề tài cấp trường');
        $this->load->Model("model_book");

         if ($this->input->post('search')){
            $q = strtolower($this->input->post('search'));
            $data['content'] = $this->model_book->search($q);
        }

        $this->load->view('template_sidebar');
        $this->load->view('template_list_search_book', $data);
    }
     public function statistics() {
        $this->output->set_common_meta('Đề tài NCKH cấp trường - Riro Software', 'Trang danh mục NCKH cấp trường', 'Danh mục đề tài cấp trường');

        $this->load->Model("model_nxb");
        $this->load->Model("model_quocgia");
        $this->load->Model("model_department");
        $this->load->Model("model_theloaisach");

        $data['dmKhoa']= $this->model_department->listAll();
        $data['nhaxuatban']= $this->model_nxb->listAll();

        $this->load->view('template_sidebar');
        $this->load->view('template_statistics_book', $data);
    }
    public function getStatistics() {
        $this->load->Model("model_book");

        $namxb    = $_REQUEST['namxb'];
        $donvi     = $_REQUEST['donvi'];
        $gioitinh  = $_REQUEST['gioitinh'];

        if ($namxb == '' && $donvi == -1 && $gioitinh == -1) {
           $arr = $this->model_book->listAllDesc();
        }
        else {
            $str = '';
            if ($namxb != '') {
                $str .= "NAMXB >= '".$namxb. "' AND ";
            }
            if ($donvi != -1) {
                $str  .= "DONVI = '".$donvi. "' AND ";
            }
            if ($gioitinh != -1) {
                $str  .= "GIOITINH = '".$gioitinh. "' AND ";
            }

            $sql = $this->hdclass->removeLastAndSql(trim($str));
            $arr = $this->model_book->getStatistics($sql);
        }
        echo json_encode($arr);
        redirect('/document', 'refresh');

    }
}