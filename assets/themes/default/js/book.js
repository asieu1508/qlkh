$(function(){
  if ($('#search-book').length) {
    $("#search-book").autocomplete({
      source: base_url + 'book/search',
      minLength:2,
      select: function( event, ui ) {
        var url = base_url + 'book/edit/' + ui.item.mssach;
        window.location = url;
      },
      create: function() {
          $(this).data('ui-autocomplete')._renderItem = function( ul, item ) {
            return $( "<li></li>" )
              .data( "item.autocomplete", item )
              .append( "<a><p><strong class='capitalize'>" + item.namxb + "</strong> <span class='cndt'> - " + item.tentg + "</span></p><p class='name_topic size-11'>" + item.label +"</p></a>" ).appendTo(ul);
          };    
      }
    })
  }
  $('#form-top-search').submit(function(event) {
    if ($('#search-book').val() == '') {
      $('#search-book').addClass('parsley-error');
      return false;
    }
  });
});
$(function() {
  $('#filter').click(function() {
    var namxbbd  = $('#namxbBĐ').val();
    var namxbkt  = $('#namxbKT').val();
    var gioitinh = $('#gioitinh').val();
    var donvi    = $('#donvi').val();

    $.ajax({
        type: 'post',
        url: base_url + 'book/getStatistics/',
        data: {
          namxbbd   : namxbbd,
          namxbkt   : namxbkt,
          donvi    : donvi,
          gioitinh : gioitinh,
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
          html += '  <th>';
          html += '    TÊN SÁCH';
          html += '  </th>';
          html += '  <th>';
          html += '    TÁC GIẢ';
          html += '  </th>';
          html += '  <th width="80">';
          html += '    GIỚI TÍNH';
          html += '  </th>';
          html += '  <th width="130">';
          html += '    ĐƠN VỊ';
          html += '  </th>';
           html += '  <th width="130">';
          html += '    NĂM XUẤT BẢN';
          html += '  </th>';
          html += '</tr>';
          $.each(data, function(i, item) {
            html += '<tr>';
            html += '  <td>';
            html += '    ' + item.TENSACH;
            html += '  </td>';
            html += '  <td>';
            html += '    ' + item.TENTG;
            html += '  </td>';
            html += '  <td>';
            if (item.GIOITINH == 1) {
              html += 'Nam';
            }
            else if(item.GIOITINH == 0) {
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
            html += '    ' + item.NAMXB;
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
    var loaitlgd   = $('#loaitlgd').val();
    $.ajax({
        type: 'post',
        url: base_url + 'document/exportToExcel/',
        data: {
          ngaybd   : ngaybd,
          ngaykt   : ngaykt,
          donvi    : donvi,
          gioitinh : gioitinh,
          hientrang: hientrang,
          loaitlgd  : loaitlgd
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
function deleteBook(id) {
  var book_id = id;
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
        url: base_url + 'book/delete/',
        data: {id : book_id},
        dataType: 'json',
        beforeSend: function(){
            loadingLeft();
        },
        success:function(data)
        {
          if (data) {
            disableLoading();
            successRightTopRight("Xóa thành công!", "Danh mục đề đã được cập nhật.","");
            window.location = base_url + 'book';
          }
          else  {
            failRightTopRight("Xóa thất bại!", "Vui lòng thử lại sau ít phút.", "");
          }
        }
      });
    }
  });
  return false
}