
$(function(){
  if ($('#search-topic').length) {
    $("#search-topic").autocomplete({
      source: base_url + 'topic/search',
      minLength:2,
      select: function( event, ui ) {
        var url = base_url + 'topic/edit/' + ui.item.msdt;
        window.location = url;
      },
      create: function() {
          $(this).data('ui-autocomplete')._renderItem = function( ul, item ) {
            return $( "<li></li>" )
              .data( "item.autocomplete", item )
              .append( "<a><p><strong class='capitalize'>" + item.msdt + "</strong> <span class='cndt'> - " + item.cndt + "</span></p><p class='name_topic size-11'>" + item.label +"</p></a>" ).appendTo(ul);
          };    
      }
    })
  }
  $('#form-top-search').submit(function(event) {
    if ($('#search-topic').val() == '') {
      $('#search-topic').addClass('parsley-error');
      return false;
    }
  });
});
$(function() {
  $('#filter').click(function() {
    var ngaybd    = $('#ngayBD').val();
    var ngaykt    = $('#ngayKT').val();
    var donvi     = $('#donvi').val();
    var gioitinh  = $('#gioitinh').val();
    var hientrang = $('#hientrang').val();
    var xeploai = $('#xeploai').val();

    $.ajax({
        type: 'post',
        url: base_url + 'topic/getStatistics/',
        data: {
          ngaybd   : ngaybd,
          ngaykt   : ngaykt,
          donvi    : donvi,
          gioitinh : gioitinh,
          hientrang: hientrang,
          xeploai  : xeploai
        },
        dataType: 'json',
        beforeSend: function(){
          $('#divloading').addClass('show');
        },
        success:function(result)
        {
          var data = result;
          $('#total').html(Object.keys(data).length);
          if ($('.divtotal').hasClass('hide')) {
            $('.divtotal').removeClass('hide');
          }
          var html = '';
          html += '<table class="table table-bordered listTopic">';
          html += '<tr>';
          html += '  <th  width="1%">';
          html += '    MSDT';
          html += '  </th>';
          html += '  <th>';
          html += '    TÊN ĐT';
          html += '  </th>'; 
          html += '  <th width="200">';
          html += '    TÊN TG';
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
          html += '    XẾP LOẠI';
          html += '  </th>';
          html += '</tr>';
          $.each(data, function(i, item) {
            html += '<tr>';
            html += '  <td>';
            html += '    ' + item.MSDT;
            html += '  </td>';
            html += '  <td>';
            html += '    ' + item.TENDT;
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
            html += '    ' + item.TENHT;
            html += '  </td>';
            html += '  <td>';
            html += '    ' + item.TENLOAI;
            html += '  </td>';
            html += '</tr>';
          });
          html += '</table>';
          $('#searchresuft').html(html);
          $('#divloading').removeClass('show');
        }
      });
  });
  $('#exportToExcel').click(function() {
    exportToExcel();
  });
  function exportToExcel() {
    var ngaybd    = $('#ngayBD').val();
    var ngaykt    = $('#ngayKT').val();
    var donvi     = $('#donvi').val();
    var gioitinh  = $('#gioitinh').val();
    var hientrang = $('#hientrang').val();
    var xeploai   = $('#xeploai').val();
    $.ajax({
        type: 'post',
        url: base_url + 'topic/exportToExcel/',
        data: {
          ngaybd   : ngaybd,
          ngaykt   : ngaykt,
          donvi    : donvi,
          gioitinh : gioitinh,
          hientrang: hientrang,
          xeploai  : xeploai
        },
        beforeSend: function(){
          $('#divloading').addClass('show');
        },
        success:function(result)
        {
          $('#divloading').removeClass('show');
          window.open(result,'_blank' );

        }
      });
  }
});
$(function() {
   $('.money').mask("###,###,###,###",{reverse: true});
   $('#tongkinhphi2').keyup(function(event) {
      var val = replaceAll($('#tongkinhphi2').val(), ",", '')
     $('#tongkinhphi').val(val)
   });
   $('#kptamung2').keyup(function(event) {
      var val = replaceAll($('#kptamung2').val(), ",", '')
     $('#kptamung').val(val)
   });
})
function deleteTopic(id) {
  var topic_id = id;
  swal({
    title: "Bạn có chắc muốn xóa?",
    text : "Dữ liệu sẽ bị xóa vĩnh viễn.",
    type: "warning",
    showCancelButton: true,
    confirmButtonColor: '#f44336',
    confirmButtonText: 'Tiếp tục',
    cancelButtonText: "Hủy bỏ",
    closeOnConfirm: true,
    closeOnCancel: true
  },
  function(isConfirm){
    if (isConfirm){
      $.ajax({
        type: 'post',
        url: base_url + 'topic/delete/',
        data: {id : topic_id},
        dataType: 'json',
        beforeSend: function(){
            loadingLeft();
        },
        success:function(data)
        {
          if (data) {
            disableLoading();
            successRightTopRight("Xóa thành công!", "Danh mục đề đã được cập nhật.","");
            window.location = base_url + 'topic';
          }
          else  {
            disableLoading();
            failRightTopRight("Xóa thất bại!", "Vui lòng thử lại sau ít phút.", "");
          }
        }
      });
    }
  });
  return false
}