<?php 
class Document extends CI_Controller{
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
       $this->load->js('assets/themes/default/js/document.js');
    }
    public function index()
    {
        $this->output->set_common_meta('Tài liệu giảng dạy - Riro Software', 'Trang danh mục tài liệu giảng dạy', 'Danh mục tài liệu giảng dạy');
        $this->load->Model("model_document");
        $data['content']        = $this->model_document->selectLimit(9,0);
        $data['total_document'] = $this->model_document->countAll();
        $this->load->view('template_sidebar');
        $this->load->view('template_list_document', $data);
    }
    public function selectPage(){
        $this->load->Model("model_document");
        $page = $_REQUEST["page"];
        $data = $this->model_document->selectLimit(9,$page);
        echo json_encode($data);
        redirect('/topic', 'refresh');
    }
    public function add()
    {
        $this->load->Model("model_department");
        $this->load->Model("model_status_document");
        $this->load->Model("model_type_document");
        $this->load->Model("model_catalogue");
        $data['url'] = 'document/insert';
        $data['dmKhoa']= $this->model_department->listAll();
        $data['hientrang']= $this->model_status_document->listAll();
        $data['loaitlgd']= $this->model_type_document->listAll();
        $data['chuyenmuc']= $this->model_catalogue->listAll();
        $this->load->view('template_sidebar');
        $this->load->view('template_add_document',  $data);
    }

    public function edit($id)
    {
        $this->load->Model("model_department");
        $this->load->Model("model_status_document");
        $this->load->Model("model_type_document");
        $this->load->Model("model_document");
        $this->load->Model("model_catalogue");
        $data['content']= $this->model_document->detail($id);
        $data['dmKhoa']= $this->model_department->listAll();
        $data['hientrang']= $this->model_status_document->listAll();
        $data['loaitlgd']= $this->model_type_document->listAll();
         $data['chuyenmuc']= $this->model_catalogue->listAll();
        $data['url'] = 'document/update';
        $this->load->view('template_sidebar');
        $this->load->view('template_detail_document',  $data);
    }
    
    public function insert()
    {
        $this->load->Model("model_document");

        //Kiểm tra có bấm nút submit hay không
        if (isset($_POST['submit'])) {

            //Set dữ liệu cần insert
            $document['MSTLGD']    = $this->input->post('mstlgd');
            $document['TENTLGD']   = $this->input->post('tentlgd');
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

    public function update()
    {
        $this->load->Model("model_document");

        //Kiểm tra có bấm nút submit hay không
        if (isset($_POST['submit'])) {

            //Set dữ liệu cần cập nhật
            $id                    = $this->input->post('mstlgd');
            $document['TENTLGD']   = $this->input->post('tentlgd');
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
            //Tiến hành cập nhật dữ liệu
            $this->model_document->update($document, $id);

            $action = "Cập nhật dữ liệu";
            //Kiểm tra cập nhật thành công
            if ($this->db->affected_rows()) {
                $this->session->set_flashdata('flag', '1');
                $this->session->set_flashdata('action', $action);
                redirect(base_url('document/edit/'.$id));
            }
            else {
                $this->session->set_flashdata('flag', '2');
                $this->session->set_flashdata('action', $action);
                redirect(base_url('document/edit/'.$id));
            }
        }
        else {
                echo "Trang không tồn tại!";
        }
    }
    public function delete() {
        $this->load->Model("model_document");
        $document_id = $_REQUEST['id'];
        $this->model_document->delete($document_id);

        if ($this->db->affected_rows()) {
            echo json_encode(1);
            redirect('/document', 'refresh');
        }
        else {
            echo json_encode(0);
            redirect('/document', 'refresh');
        }
    }

    public function getMaxNumberContractByDepartmentId() {
        $this->load->Model("model_document");
        $madonvi = $_REQUEST['madonvi'];
        $tgbatdau = $_REQUEST['tgbatdau'];
        $date = DateTime::createFromFormat("Y-m-d", $tgbatdau);
        $str = $date->format("Y")."-01-01";
        $id = $this->model_document->getMaxNumberContractByDepartmentId($madonvi, $str);
        if (empty($id)) {
            $n[0] = substr($date->format("Y"),2,2);
            $n[1] = '1';
            $n[2] = $madonvi;
            echo json_encode($n);
            redirect('/document', 'refresh');
        }
        else {
            foreach ($id as $key) {
                $n = explode('.', $key['MSTLGD']);
                $n[0] = substr($date->format("Y"),2,2);
                if (empty($n[1])) {
                    $n[1] = '1';
                }
                else {
                    $n[1] = $n[1] + 1;
                }

                $n[2] = $madonvi;
                echo json_encode($n);
                redirect('/document', 'refresh');
                echo $n;
            }
        }     
    }
    public function search() {
        $this->load->Model("model_document");
        if (isset($_GET['term'])){
            $q = strtolower($_GET['term']);
            $arr = $this->model_document->search($q);

        }
        if($arr > 0){
          foreach ($arr as $row){
            $new_row['label']      = $row['TENTLGD'];
            $new_row['msdt']   = $row['MSTLGD'];
            $new_row['cndt'] = $row['TENTG'];
            $row_set[]             = $new_row;
          }
          echo json_encode($row_set);
           redirect('/document', 'refresh');
        }
    }
    public function searchresuft() {
        $this->output->set_common_meta('Kết quả tìm kiếm - Riro Software', 'Trang danh mục NCKH cấp trường', 'Danh mục đề tài cấp trường');
        $this->load->Model("model_document");

         if ($this->input->post('search')){
            $q = strtolower($this->input->post('search'));
            $data['content'] = $this->model_document->search($q);
        }

        $this->load->view('template_sidebar');
        $this->load->view('template_list_search_document', $data);
    }
    public function statistics() {
        $this->output->set_common_meta('Đề tài NCKH cấp trường - Riro Software', 'Trang danh mục NCKH cấp trường', 'Danh mục đề tài cấp trường');

        $this->load->Model("model_department");
        $this->load->Model("model_status_document");
        $this->load->Model("model_type_document");

        $data['hientrang'] = $this->model_status_document->listAll();
        $data['dmKhoa']    = $this->model_department->listAll();
        $data['loaitlgd']    = $this->model_type_document->listAll();

        $this->load->view('template_sidebar');
        $this->load->view('template_statistics_document', $data);
    }

    public function getStatistics() {
        $this->load->Model("model_document");

        $ngaybd    = $_REQUEST['ngaybd'];
        $ngaykt    = $_REQUEST['ngaykt'];
        $donvi     = $_REQUEST['donvi'];
        $gioitinh  = $_REQUEST['gioitinh'];
        $hientrang = $_REQUEST['hientrang'];
        $loaitlgd   = $_REQUEST['loaitlgd'];

        if ($ngaybd == '' && $ngaykt == '' && $donvi == -1 && $gioitinh == -1 && $hientrang == -1  && $loaitlgd == -1) {
           $arr = $this->model_document->listAllDesc();
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
                $str  .= "PHAI = '".$gioitinh. "' AND ";
            }
            if ($hientrang != -1) {
                $str  .= "HIENTRANG = '".$hientrang. "' AND ";
            }
            if ($loaitlgd != -1) {
                $str  .= "LOAITLGD = '".$loaitlgd. "' AND ";
            }

            $sql = $this->hdclass->removeLastAndSql(trim($str));
            $arr = $this->model_document->getStatistics($sql);
        }
        echo json_encode($arr);
        redirect('/document', 'refresh');

    }
    public function exportToExcel() {
        $this->load->Model("model_document");
        $this->load->library('excel');

        $ngaybd    = $_REQUEST['ngaybd'];
        $ngaykt    = $_REQUEST['ngaykt'];
        $donvi     = $_REQUEST['donvi'];
        $gioitinh  = $_REQUEST['gioitinh'];
        $hientrang = $_REQUEST['hientrang'];
        $loaitlgd   = $_REQUEST['loaitlgd'];

        if ($ngaybd == '' && $ngaykt == '' && $donvi == -1 && $gioitinh == -1 && $hientrang == -1  && $loaitlgd == -1) {
           $arr = $this->model_document->listAllDesc();
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
                $str  .= "PHAI = '".$gioitinh. "' AND ";
            }
            if ($hientrang != -1) {
                $str  .= "HIENTRANG = '".$hientrang. "' AND ";
            }
            if ($loaitlgd != -1) {
                $str  .= "LOAITLGD = '".$loaitlgd. "' AND ";
            }

            $sql = $this->hdclass->removeLastAndSql(trim($str));
            $arr = $this->model_document->getStatistics($sql);
        }

        //Xuất excel
        $objPHPExcel = new PHPExcel();
        //activate worksheet number 1
        $objPHPExcel->setActiveSheetIndex(0);
        //name the worksheet
        $objPHPExcel->getActiveSheet()->setTitle('Sponsored');
        //set cell A1 content with some text
        $objPHPExcel->getActiveSheet()->setCellValue('A1', 'MSTLGD');
        $objPHPExcel->getActiveSheet()->setCellValue('B1', 'TÊN TLGD');
        $objPHPExcel->getActiveSheet()->setCellValue('C1', 'TÊN TÁC GIẢ');
        $objPHPExcel->getActiveSheet()->setCellValue('D1', 'ĐƠN VỊ');
        $objPHPExcel->getActiveSheet()->setCellValue('E1', 'THỜI GIAN BĐ');
        $objPHPExcel->getActiveSheet()->setCellValue('F1', 'THỜI GIAN KT');
        $objPHPExcel->getActiveSheet()->setCellValue('G1', 'HIỆN TRẠNG');
        $objPHPExcel->getActiveSheet()->setCellValue('H1', 'LOẠI TLGD');
        

        $i = 2;
        foreach ($arr as $value) {
            $objPHPExcel->getActiveSheet()->setCellValue('A'.$i, $value['MSTLGD']);
            $objPHPExcel->getActiveSheet()->setCellValue('B'.$i, $value['TENTLGD']);
            $objPHPExcel->getActiveSheet()->setCellValue('C'.$i, $value['TENTG']);
            $objPHPExcel->getActiveSheet()->setCellValue('D'.$i, $value['TENKHOA']);
            $objPHPExcel->getActiveSheet()->setCellValue('E'.$i, $value['TGBATDAU']);
            $objPHPExcel->getActiveSheet()->setCellValue('F'.$i, $value['TGKETTHUC']);
            $objPHPExcel->getActiveSheet()->setCellValue('G'.$i, $value['TENHT']);
            $objPHPExcel->getActiveSheet()->setCellValue('H'.$i, $value['TENLOAI']);
            
            $i++;
        }
        
        $filename='document'. now() .'.xls'; //save our workbook as this file name
        header('Content-Type: application/vnd.ms-excel'); //mime type
        header('Content-Disposition: attachment;filename="'.$filename.'"'); //tell browser what's the file name
        header('Cache-Control: max-age=0'); //no cache
        $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');  
        //force user to download the Excel file without writing it to server's HD
        $excelFilename = 'temp/'.$filename;
        $objWriter->save($excelFilename);

        // Đường dẫn download file
        echo base_url('temp/'.$filename);
        redirect('/document', 'refresh');
    }
}