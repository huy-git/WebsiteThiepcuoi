@extends('admin_layout')
@section('admin_content')
<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
               Cập nhật loại tin tức
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
                @foreach($edit_category as $key => $ctn)
                <form role="form" action="{{URL::to('/update_category_new/'.$ctn->maloaitintuc)}}" method="post" enctype="multipart/form-data">
                    {{ csrf_field() }} @method('put')
                    <div class="form-group">
                        <label for="exampleInputEmail1">Tên loại tin tức</label>
                        <input value="{{ $ctn->tenloaitintuc }}" type="text" name="tenloaitintuc" class="form-control" id="exampleInputEmail1" placeholder="Tên danh mục">
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">Hình Ảnh </label>
                        <input type="file" name="img" class="form-control" id="exampleInputEmail1" placeholder="Tên danh mục">
                        <img src="{{URL::to('imgtt/'.$ctn->hinhanh)}}" height="100" width="100">

                    </div>

                
              </div>  
      </div>
      <button style="width: 100%;" type="submit" name="add_categorynew" class="btn btn-info">Cập nhật loại tin tức</button>
  </form>
  @endforeach
</div>

</div>
</section>

</div>
@endsection