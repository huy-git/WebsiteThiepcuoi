@extends('admin_layout')
@section('admin_content')
<link href="{{asset('/thongke/vendor/fontawesome-free/css/all.min.css ')}}" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="{{asset('/thongke/css/sb-admin-2.min.css ')}}" rel="stylesheet">


                    <div class="row">

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                               Loại sản phẩm</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">{{count($datas)}}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="stats" style="text-align: center;">
                                <a href="{{URL::to('/all-category-product')}}">
                                <i class="fa fa-refresh"></i>
                                Xem chi tiết
                                </a>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                Sản Phẩm</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">{{count($all_product)}}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="stats" style="text-align: center;">
                                <a href="{{URL::to('/all-product')}}">
                                <i class="fa fa-refresh"></i>
                                Xem chi tiết
                                </a>
                                </div>
                            </div>
                        </div>
                         <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                Hóa đơn</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">{{count($dh)}}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="stats" style="text-align: center;">
                                <a href="{{URL::to('/all-donhang')}}">
                                <i class="fa fa-refresh"></i>
                                Xem chi tiết
                                </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                Tin tức</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">{{count($all_new)}}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="nc-icon fas fa-newspaper fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="stats" style="text-align: center;">
                                <a href="{{URL::to('/all-new')}}">
                                <i class="fa fa-refresh"></i>
                                Xem chi tiết
                                </a>
                                </div>
                            </div>
                        </div>
                       
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                Khách hàng</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">{{count($customer)}}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="nc-icon fas fa-users fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="stats" style="text-align: center;">
                                <a href="{{URL::to('/all-customer')}}">
                                <i class="fa fa-refresh"></i>
                                Xem chi tiết
                                </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                Nhân viên</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">{{count($employee)}}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="nc-icon fas fa-user fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="stats" style="text-align: center;">
                                <a href="{{URL::to('/all-employee')}}">
                                <i class="fa fa-refresh"></i>
                                Xem chi tiết
                                </a>
                                </div>
                            </div>
                        </div>


 <!-- Bootstrap core JavaScript-->
    <script src="{{asset('/thongke/vendor/jquery/jquery.min.js')}}"></script>
    <script src="{{asset('/thongke/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>

    <!-- Core plugin JavaScript-->
    <script src="{{asset ('/thongke/vendor/jquery-easing/jquery.easing.min.js')}}"></script>

    <!-- Custom scripts for all pages-->
    <script src="{{asset('/thongke/js/sb-admin-2.min.js')}}"></script>

    <!-- Page level plugins -->
    <script src="{{asset('/thongke/vendor/chart.js/Chart.min.js')}}"></script>

    <!-- Page level custom scripts -->
    <script src="{{asset('/thongke/js/demo/chart-area-demo.js')}}"></script>
    <script src="{{asset('/thongke/js/demo/chart-pie-demo.js')}}"></script>
    <script src="https://kit.fontawesome.com/c9e0d0ccd3.js" crossorigin="anonymous"></script>
@endsection