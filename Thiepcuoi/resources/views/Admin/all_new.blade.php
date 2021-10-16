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
      Danh sách tin tức
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
      
         
            <th>Tiêu đề</th>
            <th style="width: 200px;">Hình ảnh </th>    
            <th>Người đăng</th>
            <th>Ngày đăng</th>
            <th>Nội dung</th>
            <th>Nội dung chi tiết</th>
           
                      
            <th>Edit</th>
            <th>Delete</th>
          </tr>
        </thead>
        <tbody>
           @php
            $stt=1
            @endphp
          @foreach($all_new as $key => $n)
          <tr>
            <td>{{ $stt++ }}</td>
            <td>{{ $n->tieude}}</td>
            <td><img style="width: 100px;height: 100px;" src="{{asset('public/imgsp/'. $n->hinhanh)  }}"></td>            
           
            <td>{{ $n->nguoidang }}</td>
            <td>{{ $n->ngaydang }}</td>
            <td>{{ $n->noidung }}</td>
            <td>{{ $n->noidungCT }}</td>
                     
            <td>
              <a href="{{URL::to('/edit-new/'.$n->matintuc)}}" class="btn btn-xs btn-primary" >
                <i class="fa fa-pencil"></i></a>
            </td>
            <td>
               <a  href="{{URL::to('/delete-new/'.$n->matintuc)}}"  class="btn btn-xs btn-danger" ui-toggle-class="">
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