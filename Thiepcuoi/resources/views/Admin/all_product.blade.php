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
      Danh sách sản phẩm
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
            <th style="width: 200px;">Hình ảnh </th>     
            <th>Giá bán</th>       
            <th>Chất liệu</th>
            <th>Màu sắc</th>   
            <th>Năm sản xuất</th>  
                      
            <th>Edit</th>
            <th>Delete</th>
          </tr>
        </thead>
        <tbody>
           @php
            $stt=1
            @endphp
          @foreach($all_product as $key => $wi)
          <tr>
            <td>{{ $stt++ }}</td>
            <td><div style="text-align:left;">{{ $wi->tensanpham}} </div> </td>
            <td><img style="width: 100px;height: 100px;" src="{{asset('/imgsp/'.$wi->hinhanh)}}"></td>            
            <td><div style="color: red;text-align:right;"> {{number_format($wi->giaban).'đ'}}</div></td>
            <td>{{ $wi->chatlieu }}</td>
            <td>{{ $wi->mausac }}</td>
            <td>{{ $wi->namsanxuat }}</td>
                     
            <td>
              <a href="{{URL::to('/edit-product/'.$wi->masanpham)}}" class="btn btn-xs btn-primary" >
                <i class="fa fa-pencil"></i></a>
            </td>
            <td>
               <a  href="{{URL::to('/delete-product/'.$wi->masanpham)}}"  class="btn btn-xs btn-danger" ui-toggle-class="">
                <i class="fa fa-trash"></i>
              </a>
            </td>
          </tr>
          @endforeach
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