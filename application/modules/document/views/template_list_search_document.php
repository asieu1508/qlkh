<section class="body">
    <section class="body-left" style="width:100%">
      <!-- Begin search -->
      <form action="<?php echo base_url() ?>document/searchresuft" method="post" id="form-top-search">
        <div class="input-group search">
              <input type="text" class="form-control" name="search" placeholder="Tìm kiếm đề tài cấp trường" id="search-document">
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
        Kết quả tìm kiếm (Tổng số: <span class="total"><?php echo count($content) ?></span> TLGD)
      </h2>
     <?php if (count($content) == 0) {  ?>
        <div class="alert alert-danger alert-dismissible fade in" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
          <strong>Không tìm thấy dữ liệu. </strong> Vui lòng thử từ khóa khác!
        </div>
     <?php } else { ?>
     
      <div id="flip-scroll">
       <table class="table table-bordered listTopic responsive">
          <tr>
            <th width="1%">
              MSTLGD
            </th>
            <th>
              TÊN TLGD
            </th>
            
            <th width="200">
              TÁC GIẢ
            </th>
            <th align="center" width="1%">
                  XÓA
            </th>
          </tr>
        <?php foreach ($content as $key => $value) { ?>
        <tr id="row<?php echo str_replace(".","",$value['MSTLGD']) ?>">
          <td>
              <?php echo  $value['MSTLGD'] ?>
            </td>
            <td>
              <a href="<?php echo base_url() ?>document/edit/<?php echo $value['MSTLGD'] ?>">
                <?php echo  $value['TENTLGD'] ?>
              </a>
            </td>
            <td>
              <?php echo  $value['TENTG'] ?>
            </td>
            
            <td  align="center">
               <a class="delete" title="Xóa" onclick="deleteDocument('<?php echo $value['MSTLGD'] ?>')"><i class="fa fa-close"></i></a>
            </td>
          </tr>
          <?php } ?>
         </table>
        </div>
        <?php } ?>
        <div id="to_top_2"></div>
  </section>
</section>
