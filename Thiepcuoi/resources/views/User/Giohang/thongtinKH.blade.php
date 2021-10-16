@extends('layout')
@section('content_user')
   <!-- Breadcrumb Begin -->
<div class="container" style="margin-top: 80px">
        <div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
            <a href="index.html" class="stext-109 cl8 hov-cl1 trans-04">
                Home
                <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
            </a>

            <span class="stext-109 cl4">
               Thông tin
            </span>
        </div>
    </div>
    
    <!-- Breadcrumb End -->

    <!-- Checkout Section Begin -->
    <section class="checkout spad" style="margin-top: 50px">
        <div class="container">
            <div class="row">
            </div>
            <form action="{{URL::to('/save-checkout')}}" class="checkout__form" method="POST">
            	{{ csrf_field() }}
                <div class="row">
                    <div class="col-lg-12" >
                        <h5 style="border-bottom: 1px solid whitesmoke;padding-bottom: 5px">Điền thông tin giao hàng</h5>
                        <div class="" style="margin-top: 20px">
                            <div class="col-lg-6 col-md-6 col-sm-12">
                                <div class="checkout__form__input">
                                    <p>Họ và tên<span>*</span></p>
                                    <input type="text" name="ten" class="form-control">
                                </div>
                            </div>
                            <div class="col-lg-6" style="margin-top: 20px">
                                <div class="checkout__form__input">
                                    <p>Địa chỉ <span>*</span></p>
                                    <input type="text" name="address" class="form-control">
                                </div>
                                </div>
                            <div class="col-lg-6 col-md-6 col-sm-6" style="margin-top: 20px">
                                <div class="checkout__form__input">
                                    <p>Số điện thoại <span>*</span></p>
                                    <input type="text" name="phone"  class="form-control">
                                </div>
                            </div>

                            <div class="col-lg-12" style="margin-top: 30px;margin-bottom: 30px">
                               
                                   
                                     <button type="submit" class="btn btn-primary">Gửi</button>
                                </div>
                            </div>
                        </div>
 
                        </div>
                    </form>
                    </div>
                       </section>
        <!-- Checkout Section End -->

        <!-- Search End -->

        <!-- Js Plugins -->
      
@endsection