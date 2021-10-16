@extends('admin_layout')
@section('admin_content')
<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
             Cập nhật danh mục sản phẩm
         </header>
         <?php
         $message = Session::get('message');
         if($message){
            echo '<span class="text-alert">'.$message.'</span>';
            Session::put('message',null);
        }
        ?>
        <div class="panel-body">
                @foreach($data as $key => $edit_value)
            <div class="position-center">
                <form role="form" action="{{URL::to('/update-category-product/'.$edit_value->maloai)}}" method="post">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label for="exampleInputEmail1">Tên danh mục</label>
                        <input type="text" value="{{$edit_value->tenloai}}" name="tdm" class="form-control" id="exampleInputEmail1" placeholder="Tên danh mục">
                    </div>
                    <button style="width: 100%;" type="submit" name="update_category_product" class="btn btn-info">Cập nhật danh mục</button>
                </form>
            </div>
            @endforeach
        </div>
    </section>

</div>
@endsection