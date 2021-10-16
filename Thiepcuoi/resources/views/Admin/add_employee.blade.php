@extends('admin_layout')
@section('admin_content')
<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
               Thêm nhân viên
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
                <form role="form" action="{{URL::to('/save_employee')}}" method="post" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label for="exampleInputEmail1">Tên nhân viên</label>
                        <input type="text" name="tnv" class="form-control" id="exampleInputEmail1" placeholder="Tên nhân viên">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Chức vụ</label>
                        <input type="text" name="cv" class="form-control" id="exampleInputEmail1" placeholder="Mô tả">
                    </div> 
            </div>
            <button style="width: 100%;" type="submit" name="add_product" class="btn btn-info">Thêm nhân viên</button>
        </form>
    </div>

</div>
</section>

</div>
@endsection