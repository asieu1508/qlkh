<?php
class Studenttopic extends CI_Controller{
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
        $this->output->set_template('default');
        $data['menu'] = $this->hdclass->showMenu();
        $this->load->view('template_sidebar', $data);
        $this->load->js('assets/themes/default/js/studenttopic.js');
    }
    public function index()
    {
        $this->output->set_common_meta('Tài liệu giảng dạy - Riro Software', 'Trang danh mục tài liệu giảng dạy', 'Danh mục tài liệu giảng dạy');
        $this->load->Model("model_student_topic");
        $data['content'] = $this->model_student_topic->selectLimit(9,0);
        $data['total_topic']    = $this->model_student_topic->countAll();
        $this->load->view('template_list_student', $data);
    }
    public function selectPage(){
        $this->load->Model("model_student_topic");
        $page = $_REQUEST["page"];
        $data = $this->model_student_topic->selectLimit(9,$page);
        echo json_encode($data);
        redirect('/studenttopic', 'refresh');
    }
    public function add()
    {
        $this->load->Model("model_department");
        $this->load->Model("model_status");
        $this->load->Model("model_rank");
        $data['url'] = 'document/insert';
        $data['dmKhoa']= $this->model_department->listAll();
        $data['hientrang']= $this->model_status->listAll();
        $data['xeploai']= $this->model_rank->listAll();
        $this->load->view('template_add_student',  $data);
    }

    public function edit($id)
    {
        $this->load->Model("model_department");
        $this->load->Model("model_status");
        $this->load->Model("model_student_topic");
         $this->load->Model("model_rank");
        $data['content']= $this->model_student_topic->detail($id);
        $data['dmKhoa']= $this->model_department->listAll();
        $data['hientrang']= $this->model_status->listAll();
        $data['xeploai']= $this->model_rank->listAll();
        $data['url'] = 'document/update';
        $this->load->view('template_detail_student',  $data);
    }
    
    public function insert()
    {
        $this->load->Model("model_student_topic");

        //Kiểm tra có bấm nút submit hay không
        if (isset($_POST['submit'])) {

            //Set dữ liệu cần cập nhật
            $document['MSDT']      = $this->input->post('msdt');
            $document['TENDT']     = $this->input->post('tendt');
            $document['TENSV']     = $this->input->post('tensv');
            $document['GIOITINH']  = $this->input->post('gioitinh');
            $document['LOP']       = $this->input->post('lop');
            $document['GVHD']      = $this->input->post('gvhd');
            $document['TGBATDAU']  = $this->input->post('tgbd');
            $document['TGKETTHUC'] = $this->input->post('tgkt');
            $document['HIENTRANG'] = $this->input->post('hientrang');
            $document['QDNT']      = $this->input->post('qdnt');
            $document['XEPLOAI']   = $this->input->post('xeploai');
            $document['GCN']       = $this->input->post('gcn');
            $document['DONVI']     = $this->input->post('donvi');

            //Tiến hành insert dữ liệu
            $this->model_student_topic->insert($document);
            
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
                redirect(base_url('document/add/'));
            }
        }
        else {
            redirect('/my404', 'refresh');
        }
    }

    public function update()
    {
        $this->load->Model("model_student_topic");

        //Kiểm tra có bấm nút submit hay không
        if (isset($_POST['submit'])) {

            //Set dữ liệu cần cập nhật
            $id                    = $this->input->post('msdt');
            $document['TENDT']     = $this->input->post('tendt');
            $document['TENSV']     = $this->input->post('tensv');
            $document['GIOITINH']  = $this->input->post('gioitinh');
            $document['LOP']       = $this->input->post('lop');
            $document['GVHD']      = $this->input->post('gvhd');
            $document['TGBATDAU']  = $this->input->post('tgbd');
            $document['TGKETTHUC'] = $this->input->post('tgkt');
            $document['HIENTRANG'] = $this->input->post('hientrang');
            $document['QDNT']      = $this->input->post('qdnt');
            $document['XEPLOAI']   = $this->input->post('xeploai');
            $document['GCN']       = $this->input->post('gcn');
            $document['DONVI']     = $this->input->post('donvi');
            //Tiến hành cập nhật dữ liệu
            $this->model_student_topic->update($document, $id);

            $action = "Cập nhật dữ liệu";
            //Kiểm tra cập nhật thành công
            if ($this->db->affected_rows()) {
                $this->session->set_flashdata('flag', '1');
                $this->session->set_flashdata('action', $action);
                redirect(base_url('studenttopic/edit/'.$id));
            }
            else {
                $this->session->set_flashdata('flag', '2');
                $this->session->set_flashdata('action', $action);
                redirect(base_url('studenttopic/edit/'.$id));
            }
        }
        else {
            redirect('/my404', 'refresh');
        }
    }
    public function delete() {
        $this->load->Model("model_student_topic");
        $document_id = $_REQUEST['id'];
        $this->model_student_topic->delete($document_id);

        if ($this->db->affected_rows()) {
            echo json_encode(1);
            redirect('/studenttopic', 'refresh');
        }
        else {
            echo json_encode(0);
            redirect('/studenttopic', 'refresh');
        }
    }

    public function getMaxNumberContractByDepartmentId() {
        $this->load->Model("model_student_topic");
        $madonvi = $_REQUEST['madonvi'];
        $tgbatdau = $_REQUEST['tgbatdau'];
        $date = DateTime::createFromFormat("Y-m-d", $tgbatdau);
        $str = $date->format("Y")."-01-01";
        $id = $this->model_student_topic->getMaxNumberContractByDepartmentId($madonvi, $str);
        if (empty($id)) {
            $n[0] = substr($date->format("Y"),2,2);
            $n[1] = '1';
            $n[2] = $madonvi;
            echo json_encode($n);
            redirect('/studenttopic', 'refresh');
        }
        else {
            foreach ($id as $key) {
                $n = explode('.', $key['MSDT']);
                $n[0] = substr($date->format("Y"),2,2);
                if (empty($n[1])) {
                    $n[1] = '1';
                }
                else {
                    $n[1] = $n[1] + 1;
                }

                $n[2] = $madonvi;
                echo json_encode($n);
                redirect('/studenttopic', 'refresh');
                echo $n;
            }
        }     
    }
    public function search() {
        $this->load->Model("model_student_topic");
        if (isset($_GET['term'])){
            $q = strtolower($_GET['term']);
            $arr = $this->model_student_topic->search($q);

        }
        if($arr > 0){
          foreach ($arr as $row){
            $new_row['label']      = $row['TENDT'];
            $new_row['msdt']   = $row['MSDT'];
            $new_row['cndt'] = $row['TENSV'];
            $row_set[]             = $new_row;
          }
          echo json_encode($row_set);
           redirect('/studenttopic', 'refresh');
        }
    }
    public function statistics() {
        $this->output->set_common_meta('Thống kê NCKH Sinh viên - Riro Software', 'Trang danh mục NCKH Sinh viên', 'Danh mục đề tài NCKH Sinh viên');

        $this->load->Model("model_department");
        $this->load->Model("model_status");
        $this->load->Model("model_rank");

        $data['hientrang'] = $this->model_status->listAll();
        $data['dmKhoa']    = $this->model_department->listAll();
        $data['xeploai']    = $this->model_rank->listAll();

        $this->load->view('template_statistics_student', $data);
    }
    public function getStatistics() {
        $this->load->Model("model_student_topic");

        $ngaybd    = $_REQUEST['ngaybd'];
        $ngaykt    = $_REQUEST['ngaykt'];
        $donvi     = $_REQUEST['donvi'];
        $gioitinh  = $_REQUEST['gioitinh'];
        $hientrang = $_REQUEST['hientrang'];
        $xeploai   = $_REQUEST['xeploai'];

        if ($ngaybd == '' && $ngaykt == '' && $donvi == -1 && $gioitinh == -1 && $hientrang == -1  && $xeploai == -1) {
           $arr = $this->model_student_topic->listAllDesc();
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
            if ($gioitinh != -1) {
                $str  .= "GIOITINH = '".$gioitinh. "' AND ";
            }
            if ($hientrang != -1) {
                $str  .= "HIENTRANG = '".$hientrang. "' AND ";
            }
            if ($xeploai != -1) {
                $str  .= "XEPLOAI = '".$xeploai. "' AND ";
            }

            $sql = $this->hdclass->removeLastAndSql(trim($str));
            $arr = $this->model_student_topic->getStatistics($sql);
        }
        echo json_encode($arr);
        redirect('/studenttopic', 'refresh');

    }
    public function exportToExcel() {
        $this->load->Model("model_student_topic");
        $this->load->library('excel');

        $ngaybd    = $_REQUEST['ngaybd'];
        $ngaykt    = $_REQUEST['ngaykt'];
        $donvi     = $_REQUEST['donvi'];
        $gioitinh  = $_REQUEST['gioitinh'];
        $hientrang = $_REQUEST['hientrang'];
        $xeploai   = $_REQUEST['xeploai'];

        if ($ngaybd == '' && $ngaykt == '' && $donvi == -1 && $gioitinh == -1 && $hientrang == -1  && $xeploai == -1) {
           $arr = $this->model_student_topic->listAllDesc();
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
            if ($gioitinh != -1) {
                $str  .= "GIOITINH = '".$gioitinh. "' AND ";
            }
            if ($hientrang != -1) {
                $str  .= "HIENTRANG = '".$hientrang. "' AND ";
            }
            if ($xeploai != -1) {
                $str  .= "XEPLOAI = '".$xeploai. "' AND ";
            }

            $sql = $this->hdclass->removeLastAndSql(trim($str));
            $arr = $this->model_student_topic->getStatistics($sql);
        }

        //Xuất excel
        $objPHPExcel = new PHPExcel();
        //activate worksheet number 1
        $objPHPExcel->setActiveSheetIndex(0);
        //name the worksheet
        $objPHPExcel->getActiveSheet()->setTitle('TOPIC');
        //set cell A1 content with some text
        $objPHPExcel->getActiveSheet()->setCellValue('A1', 'MÃ SỐ ĐT');
        $objPHPExcel->getActiveSheet()->setCellValue('B1', 'TÊN ĐỀ TÀI');
        $objPHPExcel->getActiveSheet()->setCellValue('C1', 'TÊN SINH VIÊN');
        $objPHPExcel->getActiveSheet()->setCellValue('D1', 'GIỚI TÍNH');
        $objPHPExcel->getActiveSheet()->setCellValue('E1', 'ĐƠN VỊ');
        $objPHPExcel->getActiveSheet()->setCellValue('F1', 'LỚP');
        $objPHPExcel->getActiveSheet()->setCellValue('G1', 'GIÁO VIÊN HƯỚNG DẪN');
        $objPHPExcel->getActiveSheet()->setCellValue('H1', 'THỜI GIAN BĐ');
        $objPHPExcel->getActiveSheet()->setCellValue('I1', 'THỜI GIAN KT');
        $objPHPExcel->getActiveSheet()->setCellValue('J1', 'HIỆN TRẠNG ĐT');;
        $objPHPExcel->getActiveSheet()->setCellValue('K1', 'QUYẾT ĐỊNH NT');
        $objPHPExcel->getActiveSheet()->setCellValue('L1', 'XẾP LOẠI');
        $objPHPExcel->getActiveSheet()->setCellValue('M1', 'GCN');

        $i = 2;
        foreach ($arr as $value) {
            $objPHPExcel->getActiveSheet()->setCellValue('A'.$i, $value['MSDT']);
            $objPHPExcel->getActiveSheet()->setCellValue('B'.$i, $value['TENDT']);
            $objPHPExcel->getActiveSheet()->setCellValue('C'.$i, $value['TENSV']);
            if ($value['GIOITINH']==1) {
                $objPHPExcel->getActiveSheet()->setCellValue('D'.$i, 'Nam');
            }
            else if ($value['GIOITINH']== 0) {
                $objPHPExcel->getActiveSheet()->setCellValue('D'.$i, 'Nữ');
            }
            else {
                $objPHPExcel->getActiveSheet()->setCellValue('D'.$i, 'Nam - Nữ');
            }
            $objPHPExcel->getActiveSheet()->setCellValue('E'.$i, $value['TENKHOA']);
            $objPHPExcel->getActiveSheet()->setCellValue('F'.$i, $value['LOP']);
            $objPHPExcel->getActiveSheet()->setCellValue('G'.$i, $value['GVHD']);
            $objPHPExcel->getActiveSheet()->setCellValue('H'.$i, $value['TGBATDAU']);
            $objPHPExcel->getActiveSheet()->setCellValue('I'.$i, $value['TGKETTHUC']);
            $objPHPExcel->getActiveSheet()->setCellValue('J'.$i, $value['TENHT']);
            $objPHPExcel->getActiveSheet()->setCellValue('K'.$i, $value['QDNT']);
            $objPHPExcel->getActiveSheet()->setCellValue('L'.$i, $value['TENLOAI']);
            $objPHPExcel->getActiveSheet()->setCellValue('M'.$i, $value['GCN']);
            $i++;
        }
        
        $filename='topic'. now() .'.xls'; //save our workbook as this file name
        header('Content-Type: application/vnd.ms-excel'); //mime type
        header('Content-Disposition: attachment;filename="'.$filename.'"'); //tell browser what's the file name
        header('Cache-Control: max-age=0'); //no cache
        $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');  
        //force user to download the Excel file without writing it to server's HD
        $excelFilename = 'temp/'.$filename;
        $objWriter->save($excelFilename);

        // Đường dẫn download file
        echo base_url('temp/'.$filename);
        redirect('/student', 'refresh');
    }
    public function searchresuft() {
        $this->output->set_common_meta('Kết quả tìm kiếm - Riro Software', 'Trang danh mục NCKH cấp trường', 'Danh mục đề tài cấp trường');
        $this->load->Model("model_student_topic");

         if ($this->input->post('search')){
            $q = strtolower($this->input->post('search'));
            $data['content'] = $this->model_student_topic->search($q);
        }

        $this->load->view('template_list_search_student', $data);
    }
}