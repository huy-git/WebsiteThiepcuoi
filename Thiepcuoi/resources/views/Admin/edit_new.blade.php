@extends('admin_layout')
@section('admin_content')
<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
               Cập nhật tin tức
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
                @foreach($edit_new as $key => $n)
                <form role="form" action="{{URL::to('/update-new/'.$n->matintuc)}}" method="post" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label for="exampleInputEmail1">Tiêu đề</label>
                        <input value="{{ $n->tieude }}" type="text" name="td" class="form-control" id="exampleInputEmail1" placeholder="Tên danh mục">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Người đăng</label>
                        <textarea  style="resize: none" rows="8" class="form-control" name="nguoidang" id="exampleInputPassword1" placeholder="Người đăng">{{$n->nguoidang}}</textarea>
                    </div> 
                    <div class="form-group">
                        <label for="exampleInputPassword1">Nội dung</label>
                        <textarea style="resize: none" rows="8" class="form-control" name="nd" id="ckaddnd" placeholder="Nội dung">{{$n->noidung }} </textarea>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Nội dung chi tiết</label>
                        <textarea style="resize: none" rows="8" class="form-control" name="nd" id="ckaddndct" placeholder="Nội dung chi tiết">{{$n->noidungCT }} </textarea>
                    </div> 
                    <div class="form-group">
                     <label for="exampleInputEmail1">Ngày đăng</label>
                     <input value="{{ $n->ngaydang }}"  type="text" name="ngaydang" class="form-control" id="exampleInputEmail1" placeholder="Ngày đăng">
                 </div>
                   <div class="form-group">
                        <label for="exampleInputEmail1">Hình Ảnh </label>
                        <input type="file" name="img" class="form-control" id="exampleInputEmail1" placeholder="Tên danh mục">
                        <img src="{{URL::to('imgtt/'.$n->hinhanh)}}" height="100" width="100">

                    </div>  
                 <div class="form-group">
                    <label for="exampleInputPassword1">Danh mục tin tức</label>
                    <select name="dmtt" class="form-control input-sm m-bot15">
                        @foreach($category as $key => $cate)
                            <option value="{{$cate->maloaitintuc}}">{{$cate->tenloaitintuc}}</option>
                              
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