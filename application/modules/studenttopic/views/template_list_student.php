<section class="body">
    <section class="body-left" style="width:100%">
      <!-- Begin search -->
      <form action="<?php echo base_url() ?>studenttopic/searchresuft" method="post" id="form-top-search">
        <div class="input-group search">
              <input type="text" class="form-control" name="search" placeholder="Tìm kiếm đề tài sinh viên" id="search-student">
              <span class="input-group-btn ">
                <button class="btn btn-default icon" name="submit">
                   <i class="fa fa-search"></i>
                </button>
             </span>
          </div>
          <div class="autocomplate-success"></div>
      </form>
      <!-- End search -->
     <h2 class="title"><i class='fa fa-list-ul'></i> DANH MỤC TÀI NCKH SIHN VIÊN (Tổng số: <span class="total"><?php echo $total_topic ?></span> đề tài)</h2>
      <div id="flip-scroll">
      	<table class="table table-bordered listTopic responsive">
      	 	<tr>
      	 		<th width="1%">
      	 			MÃ ĐT
      	 		</th>
      	 		<th>
      	 			TÊN ĐT
      	 		</th>
      	 		<th width="150">
      	 			TÊN SINH VIÊN
      	 		</th>
            <th>
              GIÁO VIÊN HD
            </th>
      	 		<th width="50">
      	 			LỚP
      	 		</th>
            <th width="150">
              ĐƠN VỊ
            </th>
      	 		<th width="100">
      	 			HIỆN TRẠNG
      	 		</th>
      	 		<th>
              XÓA              
            </th>
      	 	</tr>
      	<?php foreach ($content as $key => $value) { ?>
  	 		<tr id="row<?php echo str_replace(".","",$value['MSDT']) ?>">
  	 			<td>
      	 			<?php echo  $value['MSDT'] ?>
      	 		</td>
      	 		<td>
      	 			<a href="<?php echo base_url() ?>studenttopic/edit/<?php echo $value['MSDT'] ?>">
      	 				<?php echo  $value['TENDT'] ?>
      	 			</a>
      	 		</td>
      	 		<td>
      	 			<?php echo  $value['TENSV'] ?>
      	 		</td>
      	 		<td>
      	 			<?php echo  $value['GVHD'] ?>
      	 		</td>
            <td align="center">
              <?php echo  $value['LOP'] ?>
            </td>
            <td>
              <?php echo  $value['TENKHOA'] ?>
            </td>
      	 		<td>
              <span class="hientrang" style="background: #<?php echo $value['MAMAU'] ?>; color: #fff">
      	 			 <?php echo  $value['TENHT'] ?>
              </span>
      	 		</td>
      	 		<td align="center">
      	 			 <a class="delete" title="Xóa" onclick="deleteStudent('<?php echo $value['MSDT'] ?>')"><i class="fa fa-close"></i></a>
      	 		</td>
      	 	</tr>
      	 	<?php } ?>
      	 </table>
        </div>
         <div class="pagination fl-r" id="pagination">
            <script>
              var totalPages_Temp = Math.ceil(<?php  echo $total_topic/9 ?>);
              $('#pagination').twbsPagination({
                  totalPages: totalPages_Temp,
                  visiblePages: 7,
                  first: 'Trang đầu' ,
                  prev: 'Trước' ,
                  next: 'Sau',
                  last: 'Trang cuối',
                  onPageClick: function (event, page) {
                    var begin = (page*9)-9;
                    $.ajax({
                        type:"get",
                        url:'<?php echo base_url() . "studenttopic/selectPage/"?>',
                        data:"page=" + begin,
                        beforeSend: function(){
                          loadingLeft();
                        },
                        success: function(result) {
                          var data = JSON.parse(result);
                          var html = '';
                          html += '<tr>';
                          html += '  <th width="1%">';
                          html += '    MSDT';
                          html += '  </th>';
                          html += '  <th>';
                          html += '    TÊN ĐT';
                          html += '  </th>'; 
                          html += '  <th  width="150">';
                          html += '    TÊN SINH VIÊN';
                          html += '  </th>';
                          html += '  <th>';
                          html += '    GIÁO VIÊN HƯỚNG DẪN';
                          html += '  </th>';
                          html += '  <th width="50">';
                          html += '    LỚP';
                          html += '  </th>';
                          html += '  <th width="150">';
                          html += '    ĐƠN VỊ';
                          html += '  </th>';
                          html += '  <th width="100">';
                          html += '    HIỆN TRẠNG';
                          html += '  </th>';
                          html += '  <th>';
                          html += '    Xóa';
                          html += '  </th>';
                          html += '</tr>';
                          $.each(data, function(i, item) {
                            html += '<tr id="row"'+ item.MSDT +'>';
                            html += '  <td>';
                            html += '    ' + item.MSDT;
                            html += '  </td>';
                            html += '  <td>';
                            html += '     <a href="'+ base_url + 'studenttopic/edit/' + item.MSDT +'">';
                            html += '    ' + item.TENDT;
                            html += '     </a>';
                            html += '  </td>';
                            html += '  <td>';
                            html += '    ' + item.TENSV;
                            html += '  </td>';
                            html += '  <td>';
                            html += '    ' + item.GVHD;
                            html += '  </td>';
                            html += '  <td>';
                            html += '    ' + item.LOP;
                            html += '  </td>';
                            html += '  <td>';
                            html += '    ' + item.TENKHOA;
                            html += '  </td>';
                            html += '  <td>';
                            html += '     <span class="hientrang" style="background: #'+ item.MAMAU +'; color: #fff">'
                            html += '    ' + item.TENHT;
                            html += '    </span>'
                            html += '  </td>';
                            html += '  <td  align="center">';
                            html += '      <a class="delete" title="Xóa" onclick="deleteStudent('+ item.MSDT +')"><i class="fa fa-close"></i></a>';
                            html += ' </td>'
                            html += '</tr>';
                          });
                          $('.listTopic').html(html);
                          disableLoading();
                        }
                    });
                  }
              });
            </script>
          </div>
        <div id="to_top_2"></div>
  </section>
</section>
