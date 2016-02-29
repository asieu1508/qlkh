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
        $data['content']        = $this->model_book->selectLimit(9,0);
        $data['total_document'] = $this->model_book->countAll();
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
            $document['TENSACH']   = $this->input->post('tentlgd');
            $document['TENTG']     = $this->input->post('tentg');
            $document['DONVI']     = $this->input->post('donvi');
            $document['HIENTRANG'] = $this->input->post('hientrang');
            $document['QDNT']      = $this->input->post('qdnt');
            $document['PHAI']      = $this->input->post('gioitinh');
            $document['TGBATDAU']  = $this->input->post('tgbd');
            $document['TGKETTHUC'] = $this->input->post('tgkt');
            $document['LOAITLGD']  = $this->input->post('loaitlgd');
            $document['TIENDOBS']  = $this->input->post('tiendobs');
            $document['LOAI']      = $this->input->post('loai');

            //Tiến hành insert dữ liệu
            $this->model_document->insert($document);
            
            $action = "Thêm dữ liệu";
            //Kiểm tra insert thành công
            if ($this->db->affected_rows()) {
                $this->session->set_flashdata('flag', '1');
                $this->session->set_flashdata('action', $action);
                redirect(base_url('document/add'));
            }
            else {
                $this->session->set_flashdata('flag', '2');
                $this->session->set_flashdata('action', $action);
                redirect(base_url('document/add/'.$id));
            }
        }
        else {
                echo "Trang không tồn tại!";
        }
    }
}