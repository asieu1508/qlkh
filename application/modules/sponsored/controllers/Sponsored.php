<?php 
class Sponsored extends CI_Controller{
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
        $data['menu'] = $this->hdclass->showMenu();
        $this->load->view('template_sidebar', $data);
        $this->load->js('assets/themes/default/js/sponsored.js');
        $this->load->js('assets/themes/default/js/jquery.mask.js');
    }
 
    public function index()
    {
         // $this->mhome->listAll()
        $this->output->set_common_meta('Riro Software', 'This is a page home', 'home');
        $this->load->Model("model_sponsored");
        $data['content'] = $this->model_sponsored->selectLimit(9,0);
        $data['total_topic']    = $this->model_sponsored->countAll();
        $this->load->view('template_list_sponsored', $data);
    }
     public function selectPage(){
        $this->load->Model("model_sponsored");
        $page = $_REQUEST["page"];
        $data = $this->model_sponsored->selectLimit(9,$page);
        echo json_encode($data);
        redirect('/topic', 'refresh');
    }
    public function add()
    {
        $this->load->Model("model_department");
        $this->load->Model("model_type_topic");
        $this->load->Model("model_status");
        $this->load->Model("model_sponsored");
        $data['dmKhoa']= $this->model_department->listAll();
        $data['hientrang']= $this->model_status->listAll();
        $data['loaidetai']= $this->model_type_topic->listAll();
        $data['url'] = 'sponsored/insert';
        $this->load->view('template_add_sponsored',  $data);
    }
    public function insert()
    {
        $this->load->Model("model_sponsored");

        //Kiểm tra có bấm nút submit hay không
        if (isset($_POST['submit'])) {

            //Set dữ liệu cần cập nhật
            $topic['MS']        = $this->input->post('msdt');
            $topic['LOAIDETAI']    = $this->input->post('loaidetai');
            $topic['TENDT']     = $this->input->post('tendt');
            $topic['CNDT']      = $this->input->post('cndt');
            $topic['DONVI']     = $this->input->post('donvi');
            $topic['HIENTRANG'] = $this->input->post('htdt');
            $topic['TGBATDAU']  = $this->input->post('tgbd');
            $topic['TGKETTHUC'] = $this->input->post('tgkt');
            $topic['GHICHU']    = $this->input->post('ghichu');
            $topic['LUUTRU']    = $this->input->post('luutru');

            //Tiến hành cập nhật dữ liệu
            $id = $this->model_sponsored->insert($topic);

            $action = "Cập nhật dữ liệu";
            //Kiểm tra cập nhật thành công
            if ($this->db->affected_rows()) {
                $this->session->set_flashdata('flag', '1');
                $this->session->set_flashdata('action', $action);
                redirect(base_url('sponsored/add/'));
            }
            else {
                $this->session->set_flashdata('flag', '2');
                $this->session->set_flashdata('action', $action);
                redirect(base_url('sponsored/add/'));
            }
        }
        else {
            redirect('/my404', 'refresh');
        }
    }
    public function edit($id)
    {
        $this->load->Model("model_department");
        $this->load->Model("model_type_topic");
        $this->load->Model("model_status");
        $this->load->Model("model_sponsored");
        $data['content']= $this->model_sponsored->detail($id);
        $data['dmKhoa']= $this->model_department->listAll();
        $data['hientrang']= $this->model_status->listAll();
        $data['loaidetai']= $this->model_type_topic->listAll();
        $data['url'] = 'sponsored/update';
        $this->load->view('template_detail_sponsored',  $data);
    }
    public function update()
    {
        $this->load->Model("model_sponsored");

        //Kiểm tra có bấm nút submit hay không
        if (isset($_POST['submit'])) {

            //Set dữ liệu cần cập nhật
            $id                 = $this->input->post('msdt');
            $topic['TENDT']     = $this->input->post('tendt');
            $topic['CNDT']      = $this->input->post('cndt');
            $topic['DONVI']     = $this->input->post('donvi');
            $topic['HIENTRANG'] = $this->input->post('htdt');
            $topic['LOAIDETAI']     = $this->input->post('loaidetai');
            $topic['TGBATDAU']  = $this->input->post('tgbd');
            $topic['TGKETTHUC'] = $this->input->post('tgkt');
            $topic['GHICHU']    = $this->input->post('ghichu');
            $topic['LUUTRU']    = $this->input->post('luutru');

            //Tiến hành cập nhật dữ liệu
            $this->model_sponsored->update($topic, $id);

            $action = "Cập nhật dữ liệu";
            //Kiểm tra cập nhật thành công
            if ($this->db->affected_rows()) {
                $this->session->set_flashdata('flag', '1');
                $this->session->set_flashdata('action', $action);
                redirect(base_url('sponsored/edit/'.$id));
            }
            else {
                $this->session->set_flashdata('flag', '2');
                $this->session->set_flashdata('action', $action);
                redirect(base_url('sponsored/edit/'.$id));
            }
        }
        else {
            redirect('/my404', 'refresh');
        }
    }
    public function search() {
        $this->load->Model("model_sponsored");
        if (isset($_GET['term'])){
            $q = strtolower($_GET['term']);
            $arr = $this->model_sponsored->search($q);

        }
        if($arr > 0){
          foreach ($arr as $row){
            $new_row['label']      = $row['TENDT'];
            $new_row['msdt']   = $row['MS'];
            $new_row['cndt'] = $row['CNDT'];
            $row_set[]             = $new_row;
          }
          echo json_encode($row_set);
           redirect('/sponsored', 'refresh');
        }
    }
    public function delete() {
        $this->load->Model("model_sponsored");
        $sponsored_id = $_REQUEST['id'];
        $this->model_sponsored->delete($sponsored_id);

        if ($this->db->affected_rows()) {
            echo json_encode(1);
            redirect('/sponsored', 'refresh');
        }
        else {
            echo json_encode(0);
            redirect('/sponsored', 'refresh');
        }
    }
    public function statistics() {
        $this->output->set_common_meta('Đề tài NCKH cấp trường - Riro Software', 'Trang danh mục NCKH cấp trường', 'Danh mục đề tài cấp trường');

        $this->load->Model("model_department");
        $this->load->Model("model_status");
        $this->load->Model("model_type_topic");

        $data['hientrang'] = $this->model_status->listAll();
        $data['dmKhoa']    = $this->model_department->listAll();
        $data['loaidetai']    = $this->model_type_topic->listAll();

        $this->load->view('template_statistics_sponsored', $data);
    }
    public function getStatistics() {
        $this->load->Model("model_sponsored");

        $ngaybd    = $_REQUEST['ngaybd'];
        $ngaykt    = $_REQUEST['ngaykt'];
        $donvi     = $_REQUEST['donvi'];
        $hientrang = $_REQUEST['hientrang'];
        $loaidetai   = $_REQUEST['loaidetai'];

        if ($ngaybd == '' && $ngaykt == '' && $donvi == -1 && $hientrang == -1  && $loaidetai == -1) {
           $arr = $this->model_sponsored->listAllDesc();
        }
        else {
            $str = '';
            if ($ngaybd != '') {
                $str .= "TGBATDAU >= '".$ngaybd. "' AND ";
            }
            if ($ngaykt !='') {
                $str  .= "TGKETTHUC <= '".$ngaykt. "' AND ";
            }
            if ($donvi != -1) {
                $str  .= "DONVI = '".$donvi. "' AND ";
            }
            if ($hientrang != -1) {
                $str  .= "HIENTRANG = '".$hientrang. "' AND ";
            }
            if ($loaidetai != -1) {
                $str  .= "LOAIDETAI = '".$loaidetai. "' AND ";
            }

            $sql = $this->hdclass->removeLastAndSql(trim($str));
            $arr = $this->model_sponsored->getStatistics($sql);
        }
        echo json_encode($arr);
        redirect('/sponsored', 'refresh');

    }
    public function exportToExcel() {
        $this->load->Model("model_sponsored");
        $this->load->library('excel');

        $ngaybd    = $_REQUEST['ngaybd'];
        $ngaykt    = $_REQUEST['ngaykt'];
        $donvi     = $_REQUEST['donvi'];
        $hientrang = $_REQUEST['hientrang'];
        $loaidetai   = $_REQUEST['loaidetai'];

        //Chuẩn bị câu lệnh SQL
        if ($ngaybd == '' && $ngaykt == '' && $donvi == -1 && $hientrang == -1  && $loaidetai == -1) {
           $arr = $this->model_sponsored->listAllDesc();
        }
        else {
            $str = '';
            if ($ngaybd != '') {
                $str .= "TGBATDAU >= '".$ngaybd. "' AND ";
            }
            if ($ngaykt !='') {
                $str  .= "TGKETTHUC <= '".$ngaykt. "' AND ";
            }
            if ($donvi != -1) {
                $str  .= "DONVI = '".$donvi. "' AND ";
            }
            if ($hientrang != -1) {
                $str  .= "HIENTRANG = '".$hientrang. "' AND ";
            }
            if ($loaidetai != -1) {
                $str  .= "LOAIDETAI = '".$loaidetai. "' AND ";
            }

            $sql = $this->hdclass->removeLastAndSql(trim($str));
            $arr = $this->model_sponsored->getStatistics($sql);
        }

        //Xuất excel
        $objPHPExcel = new PHPExcel();
        //activate worksheet number 1
        $objPHPExcel->setActiveSheetIndex(0);
        //name the worksheet
        $objPHPExcel->getActiveSheet()->setTitle('Sponsored');
        //set cell A1 content with some text
        $objPHPExcel->getActiveSheet()->setCellValue('A1', 'MÃ SỐ ĐT');
        $objPHPExcel->getActiveSheet()->setCellValue('B1', 'LOẠI ĐT');
        $objPHPExcel->getActiveSheet()->setCellValue('C1', 'TÊN ĐỀ TÀI');
        $objPHPExcel->getActiveSheet()->setCellValue('D1', 'CHỦ NHIỆM ĐT');
        $objPHPExcel->getActiveSheet()->setCellValue('E1', 'ĐƠN VỊ');
        $objPHPExcel->getActiveSheet()->setCellValue('F1', 'THỜI GIAN BĐ');
        $objPHPExcel->getActiveSheet()->setCellValue('G1', 'THỜI GIAN KT');
        $objPHPExcel->getActiveSheet()->setCellValue('H1', 'HIỆN TRẠNG ĐT');
        $objPHPExcel->getActiveSheet()->setCellValue('I1', 'LƯU TRỮ');
        

        $i = 2;
        foreach ($arr as $value) {
            $objPHPExcel->getActiveSheet()->setCellValue('A'.$i, $value['MS']);
            $objPHPExcel->getActiveSheet()->setCellValue('B'.$i, $value['TENLOAI']);
            $objPHPExcel->getActiveSheet()->setCellValue('C'.$i, $value['TENDT']);
            $objPHPExcel->getActiveSheet()->setCellValue('D'.$i, $value['CNDT']);
            $objPHPExcel->getActiveSheet()->setCellValue('E'.$i, $value['TENKHOA']);
            $objPHPExcel->getActiveSheet()->setCellValue('F'.$i, $value['TGBATDAU']);
            $objPHPExcel->getActiveSheet()->setCellValue('G'.$i, $value['TGKETTHUC']);
            $objPHPExcel->getActiveSheet()->setCellValue('H'.$i, $value['TENHT']);
            $objPHPExcel->getActiveSheet()->setCellValue('I'.$i, $value['LUUTRU']);
            
            $i++;
        }
        
        $filename='sponsored'. now() .'.xls'; //save our workbook as this file name
        header('Content-Type: application/vnd.ms-excel'); //mime type
        header('Content-Disposition: attachment;filename="'.$filename.'"'); //tell browser what's the file name
        header('Cache-Control: max-age=0'); //no cache
        $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');  
        //force user to download the Excel file without writing it to server's HD
        $excelFilename = 'temp/'.$filename;
        $objWriter->save($excelFilename);

        // Đường dẫn download file
        echo base_url('temp/'.$filename);
        redirect('/topic', 'refresh');
    }
    public function searchresuft() {
        $this->output->set_common_meta('Kết quả tìm kiếm - Riro Software', 'Trang danh mục NCKH cấp trường', 'Danh mục đề tài cấp trường');
        $this->load->Model("model_sponsored");

         if ($this->input->post('search')){
            $q = strtolower($this->input->post('search'));
            $data['content'] = $this->model_sponsored->search($q);
        }

        $this->load->view('template_list_search_sponsored', $data);
    }
}