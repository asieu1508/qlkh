<section class="body">
    <section class="body-left" style="width:100%">
      <!-- Begin search -->
      <form action="<?php echo base_url() ?>topic/searchresuft" method="post" id="form-top-search">
        <div class="input-group search">
              <input type="text" class="form-control" name="search" placeholder="Tìm kiếm đề tài cấp trường" id="search-topic">
              <span class="input-group-btn ">
                <button class="btn btn-default icon" name="submit">
                   <i class="fa fa-search"></i>
                </button>
             </span>
          </div>
          <div class="autocomplate-success"></div>
      </form>
      <!-- End search -->
     <h2 class="title"><i class='fa fa-list-ul'></i> DANH MỤC ĐỀ TÀI NCKH CẤP TRƯỜNG (Tổng số: <span class="total"><?php echo $total_topic ?></span> đề tài)</h2>
      <div id="flip-scroll">
     	 <table class="table table-bordered listTopic responsive">
      	 	<tr>
      	 		<th width="1%">
      	 			MSDT
      	 		</th>
      	 		<th>
      	 			TÊN ĐỀ TÀI
      	 		</th>
      	 		
      	 		<th width="200">
      	 			CHỦ NHIỆM ĐỀ TÀI
      	 		</th>
      	 		<th width="130">
      	 			ĐƠN VỊ
      	 		</th>
      	 		<th width="100">
      	 			HIỆN TRẠNG
      	 		</th>
      	 		<th align="center" width="1%">
                  XÓA              
            </th>
      	 	</tr>
      	<?php foreach ($content as $key => $value) { ?>
  	 		<tr id="row<?php echo str_replace(".","",$value['MSDT']) ?>">
  	 			<td>
      	 			<?php echo  $value['MSDT'] ?>
      	 		</td>
      	 		<td>
      	 			<a href="<?php echo base_url() ?>topic/edit/<?php echo $value['MSDT'] ?>">
      	 				<?php echo  $value['TENDT'] ?>
      	 			</a>
      	 		</td>
      	 		<td>
      	 			<?php echo  $value['CNDT'] ?>
      	 		</td>
      	 		<td>
      	 			<?php echo  $value['TENKHOA'] ?>
      	 		</td>
      	 		<td>
              <span class="hientrang" style="background: #<?php echo $value['MAMAU'] ?>; color: #fff">
                <?php echo  $value['TENHT'] ?>
              </span>
      	 		</td>
      	 		<td  align="center">
      	 			 <a class="delete" title="Xóa" onclick="deleteTopic('<?php echo $value['MSDT'] ?>')"><i class="fa fa-close"></i></a>
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
                        url:'<?php echo base_url() . "topic/selectPage/"?>',
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
                          html += '  <th width="200">';
                          html += '    CHỦ NHIỆM ĐỀ TÀI';
                          html += '  </th>';
                          html += '  <th width="80">';
                          html += '    GIỚI TÍNH';
                          html += '  </th>';
                          html += '  <th width="130">';
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
                            html += '     <a href="'+ base_url + 'topic/edit/' + item.MSDT +'">';
                            html += '    ' + item.TENDT;
                            html += '     </a>';
                            html += '  </td>';
                            html += '  <td>';
                            html += '    ' + item.CNDT;
                            html += '  </td>';
                            html += '  <td>';
                            if (item.PHAI == 1) {
                              html += 'Nam';
                            }
                            else if(item.PHAI == 0) {
                              html += 'Nữ';
                            }
                            else {
                              html += 'Nam - Nữ';
                            }
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
                            html += '      <a class="delete" title="Xóa" onclick="deleteTopic('+ item.MSDT +')"><i class="fa fa-close"></i></a>';
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
