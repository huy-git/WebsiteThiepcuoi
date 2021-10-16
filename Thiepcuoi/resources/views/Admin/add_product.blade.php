@extends('admin_layout')
@section('admin_content')
<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
               Thêm sản phẩm
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
                <form role="form" action="{{URL::to('/save-product')}}" method="post" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label for="exampleInputEmail1">Tên sản phẩm</label>
                        <input type="text" name="tensp" class="form-control" id="" placeholder="Tên sản phẩm">
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">Hình ảnh</label>
                        <input type="file" name="img" class="form-control" id="exampleInputEmail1" placeholder="Hình ảnh">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Giá bán</label>
                        <textarea style="resize: none" rows="8" class="form-control" name="gb" id="exampleInputPassword1" placeholder="Giá bán"></textarea>
                    </div> 
                    <div class="form-group">
                        <label for="exampleInputPassword1">Chất liệu</label>
                        <textarea style="resize: none" rows="8" class="form-control" name="cl" id="" placeholder="Chất liệu"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Màu sắc</label>
                        <input type="text" name="ms" class="form-control" id="" placeholder="Màu sắc">
                    </div> 
                    <div class="form-group">
                     <label for="exampleInputEmail1">Năm sản xuất</label>
                     <input type="date" name="nsx" class="form-control" id="exampleInputEmail1" placeholder="Tên danh mục">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Mô tả</label>
                    
                        <textarea type="text" name="mt" class="form-control" id="ckaddpro" placeholder="Mô tả"></textarea>
                    </div> 
                 <div class="form-group">
                    <label for="exampleInputPassword1">Danh mục sản phẩm</label>
                    <select name="dm" class="form-control input-sm m-bot15">
                        @foreach($cate_product as $key => $cate)
                            <option value="{{$cate->maloai}}">{{$cate->tenloai}}</option>                     
                        @endforeach
                    </select>
                </div>  
            </div>
            <button style="width: 100%;" type="submit" name="add_product" class="btn btn-info">Thêm  sản phẩm</button>
        </form>
    </div>

</div>
</section>

</div>
@endsection