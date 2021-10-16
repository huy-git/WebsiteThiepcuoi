@extends('admin_layout')
@section('admin_content')

<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.j"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap4.min.js"></script>

  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap4.min.css">

    <div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Chi tiết đơn hàng
    </div>
 
    <div class="table-responsive" style="margin-top: 20px;">
                      <?php
                            $message = Session::get('message');
                            if($message){
                                echo '<span class="text-alert" style="color:red;">'.$message.'</span>';
                                Session::put('message',null);
                            }
                            ?>
      <table  id="example"  class="table table-striped table-bordered table-hover">
        <thead>
          <tr>
   
            <th>Số thứ tự</th>
            <th>Tên sản phẩm</th>
            <th>Số lượng</th>
            <th>Đơn giá</th>             
           
           
          </tr>
        </thead>
        <tbody>
          @isset($ctdh)
        @php
          $tt=1
        @endphp
        @foreach($ctdh as $ct)
        <tr>
          <td>{{$tt++}}</td>
      
          <td>{{$ct->product_name}}</td>
  
          <td style="text-align: right;">{{$ct->soluong}}</td>   
          <td><div style="color: red;text-align:right;">{{number_format($ct->giaban)}}</div></td>
        </tr>
        @endforeach
      @endisset
        <td colspan="4"><div style="color: red;text-align:right;"><label style="margin-right: 10px;font-size:15px;color: black">Tổng: </label>{{number_format($ct->tongtien)}} vnđ </div></td>    
      </tbody>
    </table>
     <a href="{{URL::to('/in-hoa-don/'.$ct->maDH)}}">Print</a>
      </div>
    </div>
  </div>
 </div>
</div>
<script type="text/javascript">
  $(document).ready(function() {
    $('#example').DataTable();
} );
</script>
@endsection