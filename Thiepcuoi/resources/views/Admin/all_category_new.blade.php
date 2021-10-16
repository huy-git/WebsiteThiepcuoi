@extends('admin_layout')
@section('admin_content')
<link rel="stylesheet" type="text/css" href="s">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.j"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap4.min.js"></script>

  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap4.min.css">
<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Liệt kê loại tin tức
    </div>
    <div class="row w3-res-tb">
   
    </div>
    <div class="table-responsive">
      <?php
      $message = Session::get('message');
      if($message){
        echo '<span class="text-alert" style="color:red;">'.$message.'</span>';
        Session::put('message',null);
      }
      ?>
      <div class="table-responsive|table-responsive-sm|table-responsive-md|table-responsive-lg|table-responsive-xl">
       <table id="example"  class="table table-striped table-bordered table-hover">
         <thead class="thead-dark|thead-light">
           <tr >
             <th style="color: black">STT</th>
             <th style="color: black">Tên loại tin tức</th>
             <th style="color: black">Hình ảnh</th>  
             <th style="color: black">Edit</th>
             <th style="color: black">Delete</th>
           </tr>
         </thead>
         <tbody>
           @php
            $stt=1
            @endphp
            @foreach($datas as $key => $cn)
          <tr>
            <td style="color: black">{{$stt++}}</td>
            <td style="color: black">{{ $cn->tenloaitintuc}}</td>
            <td><img style="width: 100px;height: 100px;" src="/Thiepcuoi/public/imgtt/{{$cn->hinhanh}}"></td>
      
              <td>
                <a href="{{URL::to('edit-categorynew/'.$cn->maloaitintuc)}}" class="btn btn-xs btn-primary">Edit</a>
              </td>
              <td>
                 <a onclick="return confirm('Bạn có chắc là muốn xóa danh mục này ko?')" href="{{URL::to('/delete-categorynew/'.$cn->maloaitintuc)}}" class="btn btn-xs btn-danger">Delete</a>
              </td>
          </tr>
            @endforeach
         </tbody>
       </table>
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