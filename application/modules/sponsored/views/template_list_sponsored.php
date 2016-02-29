<section class="body">
    <section class="body-left" style="width:100%">
      <!-- Begin search -->
      <form action="<?php echo base_url() ?>sponsored/searchresuft" method="post" id="form-top-search">
        <div class="input-group search">
              <input type="text" class="form-control" name="search" placeholder="Tìm kiếm đề tài cấp tỉnh, khoa, sáng kiến, tài trợ" id="search-sponsored">
              <span class="input-group-btn ">
                <button class="btn btn-default icon" name="submit">
                   <i class="fa fa-search"></i>
                </button>
             </span>
          </div>
          <div class="autocomplate-success"></div>
      </form>
      <!-- End search -->
     <h2 class="title"><i class='fa fa-list-ul'></i> DANH MỤC ĐỀ TÀI NCKH CẤP TỈNH - CẤP KHOA - ĐƯỢC TÀI TRỢ (Tổng số: <span class="total"><?php echo $total_topic ?></span> đề tài)</h2>
      <div id="flip-scroll">
      	<table class="table table-bordered listTopic responsive">
      	 	<tr>
      	 		<th width="1%" align="center">
      	 			MSĐT
      	 		</th>
      	 		<th>
      	 			TÊN ĐỀ TÀI
      	 		</th>
      	 		
      	 		<th width="200">
      	 			CHỦ NHIỆM ĐỀ TÀI
      	 		</th>
      	 		<th width="120">
      	 			ĐƠN VỊ
      	 		</th>
      	 		<th width="120">
      	 			HIỆN TRẠNG
      	 		</th>
      	 		<th align="center" width="1%">
                XÓA  
            </th>
      	 	</tr>
          <?php foreach ($content as $key => $value) { ?>
  	 		  <tr  id="row<?php echo str_replace(".","",$value['MS']) ?>">
            <td>
      	 			<?php echo  $value['MS'] ?>
      	 		</td>
      	 		<td>
      	 			<a href="<?php echo base_url() ?>sponsored/edit/<?php echo $value['MS'] ?>">
      	 				<?php echo  $value['TENDT'] ?>
      	 			</a>
      	 		</td>
      	 		<td>
      	 			<?php echo  $value['CNDT'] ?>
      	 		</td>
      	 		<td align="center">
      	 			<?php echo  $value['TENKHOA'] ?>
      	 		</td>
      	 		<td  align="center">
      	 			<span class="hientrang" style="background: #<?php echo $value['MAMAU'] ?>; color: #fff">
                <?php echo  $value['TENHT'] ?>
              </span>
      	 		</td>
      	 		<td  align="center">
      	 			 <a class="delete" title="Xóa" onclick="deleteSponsored('<?php echo $value['MS'] ?>')"><i class="fa fa-close"></i></a>
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
                        url:'<?php echo base_url() . "sponsored/selectPage/"?>',
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
                          html += '  <th width="120">';
                          html += '    ĐƠN VỊ';
                          html += '  </th>';
                          html += '  <th width="100">';
                          html += '    HIỆN TRẠNG';
                          html += '  </th>';
                          html += '  <th  align="center" width="1%">';
                          html += '    Xóa';
                          html += '  </th>';
                          html += '</tr>';
                          $.each(data, function(i, item) {
                            html += '<tr id="row"'+ item.MS +'>';
                            html += '  <td>';
                            html += '    ' + item.MS;
                            html += '  </td>';
                            html += '  <td>';
                            html += '     <a href="'+ base_url + 'sponsored/edit/' + item.MS +'">';
                            html += '    ' + item.TENDT;
                            html += '     </a>';
                            html += '  </td>';
                            html += '  <td>';
                            html += '    ' + item.CNDT;
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
                            html += '      <a class="delete" title="Xóa" onclick="deleteSponsored('+ item.MS +')"><i class="fa fa-close"></i></a>';
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