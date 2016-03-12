<section class="body">
    <section class="body-left" style="width:100%">
      <!-- Begin search -->
      <form action="<?php echo base_url() ?>topic/searchresuft" method="post" id="form-top-search">
        <div class="input-group search">
              <input type="text" class="form-control" name="search" placeholder="Tìm kiếm phân loại" id="search-topic">
              <span class="input-group-btn ">
                <button class="btn btn-default icon" name="submit">
                   <i class="fa fa-search"></i>
                </button>
             </span>
          </div>
          <div class="autocomplate-success"></div>
      </form>
      <!-- End search -->
     <h2 class="title"><i class='fa fa-list-ul'></i> DANH MỤC PHÂN LOẠI </h2>
     <?php if ($level != "editthree"): ?>
        <a class="btn waves-effect" name="submit" href="<?php echo base_url() ?>classify/<?php echo $action ?>/<?php echo $classid ?>"><i class="fa fa-plus-circle"></i> Thêm danh mục</a>
     <?php endif ?>
     
      <div id="flip-scroll" style="margin-top: 15px">
     	 <table class="table table-bordered listTopic responsive">
      	 	<tr>
      	 		<th width="1%">
      	 			MS
      	 		</th>
      	 		<th>
      	 			TÊN LOẠI
      	 		</th>
            <th align="center" width="1%">
              Sửa              
            </th>
      	 		<th align="center" width="1%">
              XÓA              
            </th>
      	 	</tr>
      	<?php foreach ($content as $key => $value) { ?>
  	 		<tr id="row<$value['MASO']?>">
  	 			<td>
      	 			<?php echo  $value['MASO'] ?>
      	 		</td>
      	 		<td>
      	 			<a href="<?php echo base_url() ?>classify/<?php echo $level ?>/<?php echo $value['MASO'] ?>">
      	 				<?php echo  $value['TENLOAI'] ?>
      	 			</a>
      	 		</td>
            <td  align="center">
               <a class="edit" title="Sửa" onclick="editClassify('<?php echo $value['MASO'] ?>')"><i class="fa fa-edit"></i></a>
            </td>
      	 		<td  align="center">
      	 			 <a class="delete" title="Xóa" onclick="deleteClassify('<?php echo $value['MASO'] ?>')"><i class="fa fa-close"></i></a>
      	 		</td>
      	 	</tr>
      	 	<?php } ?>
      	 </table>
        </div>
        <div id="to_top_2"></div>
  </section>
</section>
