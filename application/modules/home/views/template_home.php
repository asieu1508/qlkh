<section class="body">
    <section class="body-left" style="width:100%">
     <h2 class="title"><i class='fa fa-list-ul'></i> THỐNG KÊ HOẠT ĐỘNG NCKH</h2>
         <div class="analyze-global">
           <ul>
              <li>
                 <p class='number numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='<?php echo $captruong ?>' data-delay='10' data-increment="9">0</p>
                 <p class="text">NCKH cấp Trường</p>
              </li>
               <li>
                 <p class='number numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='<?php echo $sinhvien ?>' data-delay='10' data-increment="9">0</p>
                 <p class="text">NCKH Sinh Viên</p>
              </li>
              <li>
                 <p class='number numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='<?php echo $capkhoa ?>' data-delay='10' data-increment="9">432</p>
                 <p class="text">NCKH cấp Khoa</p>
              </li>
               <li>
                 <p class='number numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='<?php echo $captinh ?>' data-delay='10' data-increment="9">432</p>
                 <p class="text">NCKH cấp Tỉnh</p>
              </li>
              <li>
                 <p class='number numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='<?php echo $sangkien ?>' data-delay='10' data-increment="9">432</p>
                 <p class="text">Sáng kiến</p>
              </li>
              <li>
                 <p class='number numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='<?php echo $tailieu ?>' data-delay='10' data-increment="9">432</p>
                 <p class="text">Tài liệu giảng dạy</p>
              </li>
           </ul>
           <div class="clear"></div>
         </div>
         <!-- <?php print_r($nckh) ?> -->
         <!-- <?php
            echo $this->db->last_query();
            echo '<br>';
            foreach ($nckh as $value) {
              print_r($value);
              echo '<br>';
            }
         ?> -->
         <div class="analyze-global">
          <div id="container-2" class="chart-1"></div>
          <script>
              $(function () {
                $('#container-2').highcharts({
                    credits: {
                        enabled: false
                    },
                    chart: {
                        type: 'column'
                    },
                    title: {
                        text: 'Thống kê NCKH cấp trường 10 năm gần nhất'
                    },
                    xAxis: {
                        categories: [
                          
                          <?php
                            $year = date('Y') - 9;
                            for ($i = 0 ; $i <= 9; $i++) {
                              $title = $year + $i;
                              echo "'".$title."', ";
                            }
                          ?>
                        ]
                    },
                    yAxis: {
                        title: {
                            text: 'Số lượng đề tài NCKH'
                        }
                    },
                    series: [{
                      name: "Số lượng",
                      data: [
                        <?php
                          for ($i = 0 ; $i <= 9; $i++) {
                            echo $nckh[$i].", ";
                          }
                        ?>
                      ]
                    }]
                });
            });
          </script>

           <div class="clear"></div>
         </div>
        <div id="to_top_2"></div>
  </section>
</section>