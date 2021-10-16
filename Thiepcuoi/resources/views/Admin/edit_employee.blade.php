@extends('admin_layout')
@section('admin_content')
<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
               Cập nhật nhân viên
           </header>
           <?php
           $message = Session::get('message');
           if($message){
            echo '<span class="text-alert">'.$message.'</span>';
            Session::put('message',null);
        }
        ?>
        <div class="panel-body">

            <div class="position-center">
                @foreach($data as $key => $emp)
                <form role="form" action="{{URL::to('/update_employee/'.$emp->maNV)}}" method="post" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label for="exampleInputEmail1">Tên nhân viên</label>
                        <input value="{{ $emp->tenNV }}" type="text" name="tnv" class="form-control" id="exampleInputEmail1" placeholder="Tên nhân viên">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Chức vụ</label>
                        <input value="{{ $emp->chucvu }}"  type="text" name="cv" class="form-control" id="exampleInputEmail1" placeholder="Chức vụ">
                    </div> 
                </div>  
              </div>  
      </div>
      <button style="width: 100%;" type="submit" name="add_employee" class="btn btn-info">Cập nhật nhân viên</button>
  </form>
  @endforeach
</div>

</div>
</section>

</div>
@endsection