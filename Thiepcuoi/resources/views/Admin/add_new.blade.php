@extends('admin_layout')
@section('admin_content')
<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
               Thêm tin tức
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
                <form role="form" action="{{URL::to('/save-new')}}" method="post" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label for="exampleInputEmail1">Tiêu đề</label>
                        <input type="text" name="td" class="form-control" id="" placeholder="Tiêu đề">
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">Hình ảnh</label>
                        <input type="file" name="img" class="form-control" id="exampleInputEmail1" placeholder="Hình ảnh">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Người đăng</label>
                        <textarea style="resize: none" rows="8" class="form-control" name="nguoidang" id="exampleInputPassword1" placeholder="Người đăng"></textarea>
                    </div> 
                    <div class="form-group">
                        <label for="exampleInputPassword1">Nội dung</label>
                        <textarea style="resize: none" rows="8" class="form-control" name="nd" id="ckaddnd" placeholder="Nội dung"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Nội dung chi tiết</label>
                        <textarea type="text" name="ndct" class="form-control" id="ckaddndct" placeholder="Nội dung chi tiết"></textarea>
                       
                    <div class="form-group">
                     <label for="exampleInputEmail1">Ngày đăng</label>
                     <input type="date" name="ngaydang" class="form-control" id="exampleInputEmail1" placeholder="Ngày đăng">
                    </div>
                    
                 <div class="form-group">
                    <label for="exampleInputPassword1">Danh mục tin tức</label>
                    <select name="dmtt" class="form-control input-sm m-bot15">
                        @foreach($cate_new as $key => $cate)
                            <option value="{{$cate->maloaitintuc}}">{{$cate->tenloaitintuc}}</option>                     
                        @endforeach
                    </select>
                </div>  
            </div>
            <button style="width: 100%;" type="submit" name="add_product" class="btn btn-info">Thêm bản tin</button>
        </form>
    </div>

</div>
</section>

</div>
@endsection