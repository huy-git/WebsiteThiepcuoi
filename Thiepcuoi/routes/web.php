<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
//trang chủ
Route::get('/', function () {
    return view('welcome');
});
Route::get('/trang-chu','App\Http\Controllers\UserController@trangchu');
Route::get('/loai-san-pham/{id_loaisp}' , 'App\Http\Controllers\UserController@danhmucsp');
Route::get('/chitiet-san-pham/{id_sp}' , 'App\Http\Controllers\UserController@chitietsp');
Route::post('/tim-kiem' , 'App\Http\Controllers\UserController@Search');
Route::get('/tin-tuc' , 'App\Http\Controllers\UserController@tintuc');
Route::get('/chi-tiet-tin/{id}' , 'App\Http\Controllers\UserController@cttintuc');
Route::get('/lien-he' , 'App\Http\Controllers\UserController@lienhe');
Route::get('/gioi-thieu' , 'App\Http\Controllers\UserController@gioithieu');

//giỏ hàng
Route::post('/save-cart','App\Http\Controllers\CartController@save_cart')->name('home.post-add-cart');
Route::get('/gio-hang','App\Http\Controllers\CartController@show_cart');
Route::get('/delete/{rowId}','App\Http\Controllers\CartController@xoa');
Route::get('/update-cart','App\Http\Controllers\CartController@sua'); //Gửi phương thức post không cần ID
Route::get('/thong-tin','App\Http\Controllers\CheckController@checkout'); 
Route::post('/addKH','App\Http\Controllers\CheckController@addKH'); 
Route::post('/save-checkout','App\Http\Controllers\CheckController@save_checkout'); 
Route::get('/thanh-toan','App\Http\Controllers\CheckController@thanhtoan'); 
Route::get('/dat-hang','App\Http\Controllers\CheckController@dathang'); 
Route::get('/dat-hang-thanh-cong','App\Http\Controllers\CheckController@check_dathang'); 

//admin
//Danh mục sản phẩm
Route::get('/danh-muc-san-pham/{id}','App\Http\Controllers\CategoryProduct@show_category_home');
//Category Product
Route::get('/add-category-product','App\Http\Controllers\CategoryProduct@add_category_product');
Route::get('/all-category-product','App\Http\Controllers\CategoryProduct@all_category_product');
//Post add
Route::post('/save-category-product','App\Http\Controllers\CategoryProduct@save_category_product');
//lấy dữu liệu ra textbox để edit
Route::get('/edit-category-product/{id}','App\Http\Controllers\CategoryProduct@edit_category');
Route::get('/delete-category-product/{category_product_id}','App\Http\Controllers\CategoryProduct@delete_category_product');
//Thực thi update
Route::post('/update-category-product/{category_product_id}','App\Http\Controllers\CategoryProduct@update_category_product');


//Product
Route::get('/add-product','App\Http\Controllers\ProductController@add_product');
Route::get('/all-product','App\Http\Controllers\ProductController@all_product');
//Post add
Route::post('/save-product','App\Http\Controllers\ProductController@save_product');
//Thực thi update
Route::post('/update-product/{product_id}','App\Http\Controllers\ProductController@update_product');
//lấy dữu liệu ra textbox để edit
Route::get('/edit-product/{masanpham}','App\Http\Controllers\ProductController@edit_product');
Route::get('/delete-product/{masanpham}','App\Http\Controllers\ProductController@delete_product');

//Employee
Route::get('/add-employee','App\Http\Controllers\EmployeeController@add_employee');
Route::get('/all-employee','App\Http\Controllers\EmployeeController@all_employee');
//Post add
Route::post('/save-employee','App\Http\Controllers\EmployeeController@save_employee');
//Thực thi update
Route::post('/update-employee/{employee_id}','App\Http\Controllers\EmployeeController@update_employee');
//lấy dữu liệu ra textbox để edit
Route::get('/edit-employee/{maNV}','App\Http\Controllers\EmployeeController@edit_employee');
Route::get('/delete-employee/{maNV}','App\Http\Controllers\EmployeeController@delete_employee');

//Customer
Route::get('/all-customer','App\Http\Controllers\CustomerController@all_customer');

//CategoryNew
Route::get('/all-categorynew','App\Http\Controllers\CategoryNewController@all_category_new');
Route::get('/add-categorynew','App\Http\Controllers\CategoryNewController@add_category_new');
Route::post('/save-categorynew','App\Http\Controllers\CategoryNewController@save_category_new');
Route::post('/update-categorynew/{category_new_id}','App\Http\Controllers\EmployeeController@update_employee');
Route::get('/edit-categorynew/{maloaitintuc}','App\Http\Controllers\CategoryNewController@edit_category_new');	
Route::get('/delete-categorynew/{maloaitintuc}','App\Http\Controllers\CategoryNewController@delete_category_new');


//New
Route::get('/all-new','App\Http\Controllers\NewController@all_new');
Route::get('/add-new','App\Http\Controllers\NewController@add_new');
Route::post('/save-new','App\Http\Controllers\NewController@save_new');
Route::post('/update-new/{new_id}','App\Http\Controllers\NewController@update_new');
Route::get('/edit-new/{matintuc}','App\Http\Controllers\NewController@edit_new');
Route::get('/delete-new/{matintuc}','App\Http\Controllers\NewController@delete_new');


//Donhang
Route::get('/all-donhang','App\Http\Controllers\DonhangController@all_donhang');
Route::get('/chitietdonhang/{id}','App\Http\Controllers\DonhangController@ctdonhang');
Route::get('/in-hoa-don/{checkout_code}','App\Http\Controllers\DonhangController@print_donhang');
//login
Route::get('/dangxuat','App\Http\Controllers\loginController@dangxuat');
Route::get('/dangnhap','App\Http\Controllers\loginController@dangnhap');
Route::get('/admin/dashboard','App\Http\Controllers\loginController@dashboard')->name('admin.dashboard');

//thongke
Route::get('/thong-ke','App\Http\Controllers\ThongkeController@thongke');