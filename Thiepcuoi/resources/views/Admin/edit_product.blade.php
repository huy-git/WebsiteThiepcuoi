@extends('admin_layout')
@section('admin_content')
<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
               Cập nhật sản phẩm
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
                @foreach($edit_sanpham as $key => $pro)
                <form role="form" action="{{URL::to('/update-product/'.$pro->masanpham)}}" method="post" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label for="exampleInputEmail1">Tên sản phẩm</label>
                        <input value="{{ $pro->tensanpham }}" type="text" name="tensp" class="form-control" id="exampleInputEmail1" placeholder="Tên danh mục">
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">Hình Ảnh </label>
                        <input type="file" name="img" class="form-control" id="exampleInputEmail1" placeholder="Tên danh mục">
                        <img src="{{URL::to('imgsp/'.$pro->hinhanh)}}" height="100" width="100">

                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Giá bán</label>
                        <textarea  style="resize: none" rows="8" class="form-control" name="gb" id="exampleInputPassword1" placeholder="Mô tả sản phẩm">{{$pro->giaban}}</textarea>
                    </div> 
                    <div class="form-group">
                        <label for="exampleInputPassword1">Chất liệu</label>
                        <textarea style="resize: none" rows="8" class="form-control" name="cl" id="exampleInputPassword1" placeholder="Nội dung sản phẩm">{{$pro->chatlieu }} </textarea>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Màu sắc</label>
                        <input value="{{ $pro->mausac }}"  type="text" name="ms" class="form-control" id="exampleInputEmail1" placeholder="Tên danh mục">
                    </div> 
                    <div class="form-group">
                     <label for="exampleInputEmail1">Năm sản xuất</label>
                     <input value="{{ $pro->namsanxuat }}"  type="text" name="nsx" class="form-control" id="exampleInputEmail1" placeholder="Tên danh mục">
                 </div>
                  <div class="form-group">
                        <label for="exampleInputPassword1">Mô tả</label>
                        <textarea style="resize: none" rows="8" class="form-control" name="mt" id="ckaddpro" placeholder="Nội dung sản phẩm">{{$pro->mota }} </textarea>
                    </div>

                 <div class="form-group">
                    <label for="exampleInputPassword1">Danh mục sản phẩm</label>
                    <select name="dm" class="form-control input-sm m-bot15">
                        @foreach($category as $key => $cate)
                            <option value="{{$cate->maloai}}">{{$cate->tenloai}}</option>
                              
                        @endforeach

                    </select>
                </div>  
              </div>  
      </div>
      <button style="width: 100%;" type="submit" name="add_product" class="btn btn-info">Cập nhật sản phẩm</button>
  </form>
  @endforeach
</div>

</div>
</section>

</div>
@endsection