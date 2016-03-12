
<section class="body">
    <section class="body-left" style="width:100%">

    <h2 class="title"><i class='fa fa-list-ul'></i> Danh sách menu</h2>
    <?php if ($this->session->flashdata('flag') == 1) { ?>
        <div class="alert alert-success alert-dismissible fade in" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
          <strong><?php echo $this->session->flashdata('action') ?> thành công!</strong>
        </div>
    <?php  }
    elseif($this->session->flashdata('flag') == 2) { ?>
        <div class="alert alert-danger alert-dismissible fade in" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
          <strong><?php echo $this->session->flashdata('action') ?> thất bại!</strong> Vui lòng kiểm tra lại dữ liệu.
        </div>
    <?php } ?>
        <div id="tree1"></div>
          <script>
            var data = 
                <?php echo json_encode($content) ?>
            ;
            $('#tree1').tree({
                data: data,
                autoOpen: true,
                dragAndDrop: true
            });
            $('#tree1').bind(
                'tree.move',
                function(event) {
                    var node = event.move_info;
                    console.log('moved_node', event.move_info.moved_node);
                    console.log('target_node', event.move_info.target_node);
                    console.log('position', event.move_info.position);
                    console.log('previous_parent', event.move_info.previous_parent);
                    
                    if (node.position == 'inside') {
                      if (node.target_node.parent.id) {
                        alert(node.target_node.id + " - " + node.target_node.parent.id + " - " + node.target_node.parent.children.length + " - " + node.moved_node.id);
                      }
                      else alert(node.target_node.id + " - " + "0" + " - " + node.moved_node.id);
                    }
                    if (node.position == 'after') {
                      if (node.target_node.parent.id) {
                        alert(node.target_node.id + " - " + node.target_node.parent.id + " - " + node.target_node.parent.children.length + " - " + node.moved_node.id);
                      }
                      else alert(node.target_node.id + " - " + "0" + " - " + node.moved_node.id);
                    }
                }
            );
          </script>
          <!-- <?php
            if ($content) {
              echo '<ul>';
              foreach ($content as $value) {
                echo '<li>
                      <a href="'.base_url(). 'menu/edit/'. $value['id'] .'">
                        <span class="icon"><i class="'.$value['icon'].'"></i></span> 
                        <span class="text">'. $value['name'] .'</span>
                      </a>
                      <a class="delete" title="Xóa" onclick="deleteMenu('.$value['id'].')"><i class="fa fa-close"></i></a>';
                    if ($value['child']) {
                      echo '<ul>';
                      foreach ($value['child'] as $item) {
                        echo '<li>
                                <a href="'.base_url(). 'menu/edit/'. $item['id'] .'">
                                  <span class="icon"><i class="'.$item['icon'].'"></i></span> 
                                  <span class="text">'. $item['name'] .'</span>
                                </a>
                              <a class="delete" title="Xóa" onclick="deleteMenu('.$item['id'].')"><i class="fa fa-close"></i></a>';
                        echo '</li>';
                      }
                      echo '</ul>';
                    }
                echo '</li>';
              }
              echo '</ul>';
            }
          ?> -->
      <div id="to_top_2"></div>
  </section>