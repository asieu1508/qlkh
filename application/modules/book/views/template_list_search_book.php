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
     <h2 class="title"><i class='fa fa-list-ul'></i> 
        Kết quả tìm kiếm (Tổng số: <span class="total"><?php echo count($content) ?></span> sách)
      </h2>
     <?php if (count($content) == 0) {  ?>
        <div class="alert alert-danger alert-dismissible fade in" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
          <strong>Không tìm thấy dữ liệu. </strong> Vui lòng thử từ khóa khác!
        </div>
     <?php } else { ?>
     
      <div id="flip-scroll">
       <table class="table table-bordered listTopic">
          <tr>
            <th>
              TÊN SÁCH
            </th>
            <th  width="200">
              TÊN TÁC GIẢ
            </th>
            
            <th width="1%">
              NXB
            </th>
            <th align="center" width="1%">
                  XÓA
            </th>
          </tr>
        <?php foreach ($content as $key => $value) { ?>
        <tr id="row<?php echo str_replace(".","",$value['MSSACH']) ?>">
          <td>
              <a href="<?php echo base_url() ?>document/edit/<?php echo $value['MSSACH'] ?>">
                <?php echo  $value['TENSACH'] ?>
              </a>
            </td>
            <td>
             
                <?php echo  $value['TENTG'] ?>
              
            </td>
            <td>
              <?php echo  $value['NAMXB'] ?>
            </td>
            
            <td  align="center">
               <a class="delete" title="Xóa" onclick="deleteBook('<?php echo $value['MSSACH'] ?>')"><i class="fa fa-close"></i></a>
            </td>
          </tr>
          <?php } ?>
         </table>
        </div>
        <?php } ?>
        <div id="to_top_2"></div>
  </section>
</section>
