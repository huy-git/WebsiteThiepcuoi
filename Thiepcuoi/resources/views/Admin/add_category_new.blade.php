@extends('admin_layout')
@section('admin_content')
<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
             Thêm loại tin tức
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
                <form role="form" action="{{URL::to('/save-categorynew')}}" method="post" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label for="exampleInputEmail1">Tên loại tin tức</label>
                        <input type="text" name="ten" class="form-control" id="exampleInputEmail1" placeholder="Tên danh mục">
                    </div>  
                     <div class="form-group">
                        <label for="exampleInputEmail1">Hình ảnh</label>
                        <input type="file" name="anh" class="form-control" id="exampleInputEmail1" placeholder="Hình ảnh">
                    </div>
                                <button style="width: 100%;" type="submit" name="add_category_new" class="btn btn-info">Thêm danh mục</button>
                            </form>
                        </div>

                    </div>
                </section>

            </div>
            @endsection