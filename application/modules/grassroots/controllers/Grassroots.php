<?php 
class Grassroots extends CI_Controller{
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
        $this->load->js('assets/themes/default/js/topic.js');
        $this->load->js('assets/themes/default/js/jquery.mask.js');
        $this->load->js('assets/fckeditor/ckeditor/ckeditor.js');
    }
    public function index()
    {
        $this->output->set_common_meta('Đề tài NCKH cấp cơ sở - Riro Software', 'Trang danh mục NCKH cấp cơ sở', 'Danh mục đề tài NCKH cấp cơ sở');
        $this->load->Model("model_topic");
        $data['content'] = $this->model_topic->selectLimit(9,0);
        $data['total_topic']    = $this->model_topic->countAll();
        
        $this->load->view('template_list_topic', $data);
    }
    public function selectPage(){
        $this->load->Model("model_topic");
        $page = $_REQUEST["page"];
        $data = $this->model_topic->selectLimit(9,$page);
        echo json_encode($data);
        redirect('/topic', 'refresh');
    }
    public function add()
    {
        $this->load->Model("model_department");
        $this->load->Model("model_status");
        $this->load->Model("model_rank");
        $data['url'] = 'topic/insert';
        $data['dmKhoa']= $this->model_department->listAll();
        $data['hientrang']= $this->model_status->listAll();
        $data['xeploai']= $this->model_rank->listAll();
        $this->load->view('template_add_topic',  $data);
    }

    public function edit($id)
    {
        $this->load->Model("model_department");
        $this->load->Model("model_status");
        $this->load->Model("model_topic");
        $this->load->Model("model_rank");
        $data['content']= $this->model_topic->detail($id);
        $data['dmKhoa']= $this->model_department->listAll();
        $data['hientrang']= $this->model_status->listAll();
        $data['xeploai']= $this->model_rank->listAll();
        $data['url'] = 'topic/update';
        $this->load->view('template_sidebar');
        $this->load->view('template_detail_topic',  $data);
    }
    
    public function insert()
    {
        $this->load->Model("model_topic");

        //Kiểm tra có bấm nút submit hay không
        if (isset($_POST['submit'])) {
            //Set dữ liệu cần cập nhật
            $topic['MSDT']        = $this->input->post('msdt');
            $topic['TENDT']       = $this->input->post('tendt');
            $topic['CNDT']        = $this->input->post('cndt');
            $topic['DONVI']       = $this->input->post('donvi');
            $topic['HTDETAI']     = $this->input->post('htdt');
            $topic['TIENDO']      = $this->input->post('tdth');
            $topic['QDGTH']       = $this->input->post('qdgth');
            $topic['QDNT']        = $this->input->post('qdnt');
            $topic['NAMSINH']     = $this->input->post('namsinh');
            $topic['PHAI']        = $this->input->post('gioitinh');
            $topic['TGBATDAU']    = $this->input->post('tgbd');
            $topic['TGKETTHUC']   = $this->input->post('tgkt');
            $topic['XEPLOAI']     = $this->input->post('xeploai');
            $topic['DIEMSO']      = $this->input->post('diemso');
            $topic['TONGKINHPHI'] = $this->input->post('tongkinhphi');
            $topic['KPTAMUNG']    = $this->input->post('kptamung');
            $topic['SOHD']        = $this->input->post('sohd');
            $topic['NAM-NT']      = $this->input->post('namnt');
            $topic['GHICHU']      = $this->input->post('ghichu');
            $topic['YKIENHD']     = $this->input->post('ykhd');

            //Tiến hành insert dữ liệu
            $this->model_topic->insert($topic);
            
            $action = "Thêm dữ liệu";
            //Kiểm tra insert thành công
            if ($this->db->affected_rows()) {
                $this->session->set_flashdata('flag', '1');
                $this->session->set_flashdata('action', $action);
                redirect(base_url('topic/add'));
            }
            else {
                $this->session->set_flashdata('flag', '2');
                $this->session->set_flashdata('action', $action);
                redirect(base_url('topic/add'));
            }
        }
        else {
            redirect('/my404', 'refresh');
        }
    }

    public function update()
    {
        $this->load->Model("model_topic");

        //Kiểm tra có bấm nút submit hay không
        if (isset($_POST['submit'])) {

            //Set dữ liệu cần cập nhật
            $id                   = $this->input->post('msdt');
            $topic['TENDT']       = $this->input->post('tendt');
            $topic['CNDT']        = $this->input->post('cndt');
            $topic['DONVI']       = $this->input->post('donvi');
            $topic['HTDETAI']     = $this->input->post('htdt');
            $topic['TIENDO']      = $this->input->post('tdth');
            $topic['QDGTH']       = $this->input->post('qdgth');
            $topic['QDNT']        = $this->input->post('qdnt');
            $topic['NAMSINH']     = $this->input->post('namsinh');
            $topic['PHAI']        = $this->input->post('gioitinh');
            $topic['TGBATDAU']    = $this->input->post('tgbd');
            $topic['TGKETTHUC']   = $this->input->post('tgkt');
            $topic['XEPLOAI']     = $this->input->post('xeploai');
            $topic['DIEMSO']      = $this->input->post('diemso');
            $topic['TONGKINHPHI'] = $this->input->post('tongkinhphi');
            $topic['KPTAMUNG']    = $this->input->post('kptamung');
            $topic['SOHD']        = $this->input->post('sohd');
            $topic['NAM-NT']      = $this->input->post('namnt');
            $topic['GHICHU']      = $this->input->post('ghichu');
            $topic['YKIENHD']     = $this->input->post('ykhd');

            //Tiến hành cập nhật dữ liệu
            $this->model_topic->update($topic, $id);

            $action = "Cập nhật dữ liệu";
            //Kiểm tra cập nhật thành công
            if ($this->db->affected_rows()) {
                $this->session->set_flashdata('flag', '1');
                $this->session->set_flashdata('action', $action);
                redirect(base_url('topic/edit/'.$id));
            }
            else {
                $this->session->set_flashdata('flag', '2');
                $this->session->set_flashdata('action', $action);
                redirect(base_url('topic/edit/'.$id));
            }
        }
        else {
            redirect('/my404', 'refresh');
        }
    }
    public function delete() {
        $this->load->Model("model_topic");
        $topic_id = $_REQUEST['id'];
        $this->model_topic->delete($topic_id);

        if ($this->db->affected_rows()) {
            echo json_encode(1);
            redirect('/topic', 'refresh');
        }
        else {
            echo json_encode(0);
            redirect('/topic', 'refresh');
        }
    }

    public function getMaxNumberContractByDepartmentId() {
        $this->load->Model("model_topic");
        $madonvi = $_REQUEST['madonvi'];
        $tgbatdau = $_REQUEST['tgbatdau'];
        $date = DateTime::createFromFormat("Y-m-d", $tgbatdau);
        $str = $date->format("Y")."-01-01";
        $id = $this->model_topic->getMaxNumberContractByDepartmentId($madonvi, $str);
        if (empty($id)) {
            $n[0] = substr($date->format("Y"),2,2);
            $n[1] = '1';
            $n[2] = $madonvi;
            echo json_encode($n);
            redirect('/topic', 'refresh');
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
                redirect('/topic', 'refresh');
            }
        }     
    }

    public function statistics() {
        $this->output->set_common_meta('Đề tài NCKH cấp trường - Riro Software', 'Trang danh mục NCKH cấp trường', 'Danh mục đề tài cấp trường');

        $this->load->Model("model_department");
        $this->load->Model("model_status");
        $this->load->Model("model_rank");

        $data['hientrang'] = $this->model_status->listAll();
        $data['dmKhoa']    = $this->model_department->listAll();
        $data['xeploai']    = $this->model_rank->listAll();

        $this->load->view('template_statistics_topic', $data);
    }
    public function getStatistics() {
        $this->load->Model("model_topic");

        $ngaybd    = $_REQUEST['ngaybd'];
        $ngaykt    = $_REQUEST['ngaykt'];
        $donvi     = $_REQUEST['donvi'];
        $gioitinh  = $_REQUEST['gioitinh'];
        $hientrang = $_REQUEST['hientrang'];
        $xeploai   = $_REQUEST['xeploai'];

        if ($ngaybd == '' && $ngaykt == '' && $donvi == -1 && $gioitinh == -1 && $hientrang == -1  && $xeploai == -1) {
           $arr = $this->model_topic->listAllDesc();
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
                $str  .= "HTDETAI = '".$hientrang. "' AND ";
            }
            if ($xeploai != -1) {
                $str  .= "XEPLOAI = '".$xeploai. "' AND ";
            }

            $sql = $this->hdclass->removeLastAndSql(trim($str));
            $arr = $this->model_topic->getStatistics($sql);
        }
        echo json_encode($arr);
        redirect('/topic', 'refresh');

    }
    public function exportToExcel() {
        $this->load->Model("model_topic");
        $this->load->library('excel');

        $ngaybd    = $_REQUEST['ngaybd'];
        $ngaykt    = $_REQUEST['ngaykt'];
        $donvi     = $_REQUEST['donvi'];
        $gioitinh  = $_REQUEST['gioitinh'];
        $hientrang = $_REQUEST['hientrang'];
        $xeploai   = $_REQUEST['xeploai'];

        if ($ngaybd == '' && $ngaykt == '' && $donvi == -1 && $gioitinh == -1 && $hientrang == -1  && $xeploai == -1) {
           $arr = $this->model_topic->listAllDesc();
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
                $str  .= "HTDETAI = '".$hientrang. "' AND ";
            }
            if ($xeploai != -1) {
                $str  .= "XEPLOAI = '".$xeploai. "' AND ";
            }

            $sql = $this->hdclass->removeLastAndSql(trim($str));
            $arr = $this->model_topic->getStatistics($sql);
        }

        //Xuất excel
        $objPHPExcel = new PHPExcel();
        //activate worksheet number 1
        $objPHPExcel->setActiveSheetIndex(0);
        //name the worksheet
        $objPHPExcel->getActiveSheet()->setTitle('TOPIC');
        //set cell A1 content with some text
        $objPHPExcel->getActiveSheet()->setCellValue('A1', 'MÃ SỐ ĐT');
        $objPHPExcel->getActiveSheet()->setCellValue('B1', 'SỐ HĐ');
        $objPHPExcel->getActiveSheet()->setCellValue('C1', 'TÊN ĐỀ TÀI');
        $objPHPExcel->getActiveSheet()->setCellValue('D1', 'CHỦ NHIỆM ĐT');
        $objPHPExcel->getActiveSheet()->setCellValue('E1', 'GIỚI TÍNH');
        $objPHPExcel->getActiveSheet()->setCellValue('F1', 'ĐƠN VỊ');
        $objPHPExcel->getActiveSheet()->setCellValue('G1', 'THỜI GIAN BĐ');
        $objPHPExcel->getActiveSheet()->setCellValue('H1', 'THỜI GIAN KT');
        $objPHPExcel->getActiveSheet()->setCellValue('I1', 'HIỆN TRẠNG ĐT');
        $objPHPExcel->getActiveSheet()->setCellValue('J1', 'QUYẾT ĐỊNH GTH');
        $objPHPExcel->getActiveSheet()->setCellValue('K1', 'QUYẾT ĐỊNH NT');
        $objPHPExcel->getActiveSheet()->setCellValue('L1', 'XẾP LOẠI');
        $objPHPExcel->getActiveSheet()->setCellValue('M1', 'ĐIỂM SỐ');
        $objPHPExcel->getActiveSheet()->setCellValue('N1', 'TỔNG KINH PHÍ');
        $objPHPExcel->getActiveSheet()->setCellValue('O1', 'KP TẠM ỨNG');
        $objPHPExcel->getActiveSheet()->setCellValue('P1', 'NĂM NT');

        $i = 2;
        foreach ($arr as $value) {
            $objPHPExcel->getActiveSheet()->setCellValue('A'.$i, $value['MSDT']);
            $objPHPExcel->getActiveSheet()->setCellValue('B'.$i, (string)$value['SOHD']);
            $objPHPExcel->getActiveSheet()->setCellValue('C'.$i, $value['TENDT']);
            $objPHPExcel->getActiveSheet()->setCellValue('D'.$i, $value['CNDT']);
            if ($value['PHAI']==1) {
                $objPHPExcel->getActiveSheet()->setCellValue('D'.$i, 'Nam');
            }
            else if ($value['PHAI']== 0) {
                $objPHPExcel->getActiveSheet()->setCellValue('D'.$i, 'Nữ');
            }
            else {
                $objPHPExcel->getActiveSheet()->setCellValue('D'.$i, 'Nam - Nữ');
            }
            $objPHPExcel->getActiveSheet()->setCellValue('F'.$i, $value['TENKHOA']);
            $objPHPExcel->getActiveSheet()->setCellValue('G'.$i, $value['TGBATDAU']);
            $objPHPExcel->getActiveSheet()->setCellValue('H'.$i, $value['TGKETTHUC']);
            $objPHPExcel->getActiveSheet()->setCellValue('I'.$i, $value['TENHT']);
            $objPHPExcel->getActiveSheet()->setCellValue('J'.$i, $value['QDGTH']);
            $objPHPExcel->getActiveSheet()->setCellValue('K'.$i, $value['QDNT']);
            $objPHPExcel->getActiveSheet()->setCellValue('L'.$i, $value['TENLOAI']);
            $objPHPExcel->getActiveSheet()->setCellValue('M'.$i, $value['DIEMSO']);
            $objPHPExcel->getActiveSheet()->setCellValue('N'.$i, $value['TONGKINHPHI']);
            $objPHPExcel->getActiveSheet()->setCellValue('O'.$i, $value['KPTAMUNG']);
            $objPHPExcel->getActiveSheet()->setCellValue('P'.$i, $value['NAM-NT']);
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
        redirect('/topic', 'refresh');
    }
    public function deleteFileAjax() {
        $file = $_REQUEST['filename'];
        unlink($file);
    }
    public function search() {
        $this->load->Model("model_topic");
        if (isset($_GET['term'])){
            $q = strtolower($_GET['term']);
            $arr = $this->model_topic->search($q);
        }
        if($arr > 0){
          foreach ($arr as $row){
            $new_row['label'] = $row['TENDT'];
            $new_row['msdt']  = $row['MSDT'];
            $new_row['cndt']  = $row['CNDT'];
            $row_set[]        = $new_row;
          }
          echo json_encode($row_set);
          redirect('/topic', 'refresh');
        }
    }
    public function searchresuft() {
        $this->output->set_common_meta('Kết quả tìm kiếm - Riro Software', 'Trang danh mục NCKH cấp trường', 'Danh mục đề tài cấp trường');
        $this->load->Model("model_topic");

         if ($this->input->post('search')){
            $q = strtolower($this->input->post('search'));
            $data['content'] = $this->model_topic->search($q);
        }

        $this->load->view('template_list_search_topic', $data);
    }
    public function excel() {
        //load our new PHPExcel library
        $this->load->library('excel');
        //activate worksheet number 1
        $objPHPExcel->setActiveSheetIndex(0);
        //name the worksheet
        $objPHPExcel->getActiveSheet()->setTitle('test worksheet');
        //set cell A1 content with some text
        $objPHPExcel->getActiveSheet()->setCellValue('A1', 'This is just some text value');
        //change the font size
        $objPHPExcel->getActiveSheet()->getStyle('A1')->getFont()->setSize(20);
        //make the font become bold
        $objPHPExcel->getActiveSheet()->getStyle('A1')->getFont()->setBold(true);
        //merge cell A1 until D1
        $objPHPExcel->getActiveSheet()->mergeCells('A1:D1');
        //set aligment to center for that merged cell (A1 to D1)
        $objPHPExcel->getActiveSheet()->getStyle('A1')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        $filename='just_some_random_name.xls'; //save our workbook as this file name
        header('Content-Type: application/vnd.ms-excel'); //mime type
        header('Content-Disposition: attachment;filename="'.$filename.'"'); //tell browser what's the file name
        header('Cache-Control: max-age=0'); //no cache
                    
        //save it to Excel5 format (excel 2003 .XLS file), change this to 'Excel2007' (and adjust the filename extension, also the header mime type)
        //if you want to save it as .XLSX Excel 2007 format
        $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');  
        //force user to download the Excel file without writing it to server's HD
        $objWriter->save('php://output');
    }
}