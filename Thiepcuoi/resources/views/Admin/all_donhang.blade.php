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
      Danh sách đơn hàng
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
            <th>Tên khách hàng</th>
            <th>Số điện thoại</th>
            <th>Địa chỉ</th>             
            <th>Tổng tiền</th>
           
          </tr>
        </thead>
        <tbody>
         @isset($dh)
        @php
          $tt=1
        @endphp
        @foreach($dh as $i)
        <tr>
          <td>{{$tt++}}</td>
           @foreach($customer as $cus)
          @if($i->maKH == $cus->maKH)
          <td>{{$cus->tenKH}}</td>
          <td>{{$cus->sdt}}</td> 
          <td>{{$cus->diachi}}</td>
          @endif
          @endforeach         
          <td style="color: red;text-align: right;">{{number_format($i->tongtien)}} VND</td>
        
          <td><a href="{{URL::to('/chitietdonhang/'.$i->maDH)}}">Xem chi tiết</a></td>           
        </tr>
        @endforeach
      @endisset       
        </tbody>
      </table>
    </div>
  </div>
</div>
<script type="text/javascript">
  $(document).ready(function() {
    $('#example').DataTable();
} );
</script>
@endsection