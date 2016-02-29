<section class="body">
    <section class="body-left" style="width:100%">
      <!-- Begin search -->
      <form action="<?php echo base_url() ?>book/searchresuft" method="post" id="form-top-search">
        <div class="input-group search">
              <input type="text" class="form-control" name="search" placeholder="Tìm kiếm sách" id="search-book">
              <span class="input-group-btn ">
                <button class="btn btn-default icon" name="submit">
                   <i class="fa fa-search"></i>
                </button>
             </span>
          </div>
          <div class="autocomplate-success"></div>
      </form>
      <!-- End search -->
     <h2 class="title"><i class='fa fa-list-ul'></i> DANH MỤC SÁCH (Tổng số: <span class="total"><?php echo $total_book ?></span> SÁCH)</h2>
      <div id="flip-scroll">
       <table class="table table-bordered listTopic responsive">
      	 	<tr>
      	 		<th>
      	 			TÊN SÁCH
      	 		</th>
      	 		
      	 		<th width="200">
      	 			TÁC GIẢ
      	 		</th>
      	 		<th width="130">
      	 			ĐƠN VỊ
      	 		</th>
      	 		<th width="100">
      	 			NXB
      	 		</th>
      	 		<th width="1%">
                  XÓA              
            </th>
      	 	</tr>
      	<?php foreach ($content as $key => $value) { ?>
  	 		<tr id="row<?php echo str_replace(".","",$value['MSSACH']) ?>">
      	 		<td>
      	 			<a href="<?php echo base_url() ?>book/edit/<?php echo $value['MSSACH'] ?>">
      	 				<?php echo  $value['TENSACH'] ?>
      	 			</a>
      	 		</td>
      	 		<td>
      	 			<?php echo  $value['TENTG'] ?>
      	 		</td>
      	 		<td>
      	 			<?php echo  $value['TENKHOA'] ?>
      	 		</td>
      	 		<td>
      	 			 <?php echo  $value['TENNXB'] ?>
      	 		</td>
      	 		<td align="center">
      	 			 <a class="delete" title="Xóa" onclick="deleteBook('<?php echo $value['MSSACH'] ?>')"><i class="fa fa-close"></i></a>
      	 		</td>
      	 	</tr>
      	 	<?php } ?>
      	</table>
      </div>
         <div class="pagination fl-r" id="pagination">
            <script>
              var totalPages_Temp = Math.ceil(<?php  echo $total_book/9 ?>);
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
                        url:'<?php echo base_url() . "book/selectPage/"?>',
                        data:"page=" + begin,
                        beforeSend: function(){
                          loadingLeft();
                        },
                        success: function(result) {
                          var data = JSON.parse(result);
                          var html = '';
                          html += '<tr>';
                          html += '  <th>';
                          html += '    TÊN SÁCH';
                          html += '  </th>'; 
                          html += '  <th width="200">';
                          html += '    TÁC GIẢ';
                          html += '  </th>';
                          html += '  <th width="130">';
                          html += '    ĐƠN VỊ';
                          html += '  </th>';
                          html += '  <th width="100">';
                          html += '    NHÀ XUẤT BẢN';
                          html += '  </th>';
                          html += '  <th width="1%">';
                          html += '    Xóa';
                          html += '  </th>';
                          html += '</tr>';
                          $.each(data, function(i, item) {
                            html += '<tr id="row"'+ item.MSSACH +'>';
                            html += '  <td>';
                            html += '     <a href="'+ base_url + 'document/edit/' + item.MSSACH +'">';
                            html += '    ' + item.TENSACH;
                            html += '     </a>';
                            html += '  </td>';
                            html += '  <td>';
                            html += '    ' + item.TENTG;
                            html += '  </td>';
                            html += '  <td>';
                            html += '    ' + item.TENKHOA;
                            html += '  </td>';
                            html += '  <td>';
                            html += '    ' + item.NXB;
                            html += '  </td>';
                            html += '  <td  align="center">';
                            html += '      <a class="delete" title="Xóa" onclick="deletBook('+ item.MSSACH +')"><i class="fa fa-close"></i></a>';
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
