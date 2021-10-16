<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;
use Session;
use App\Social;
use Socialite;
use App\Login;
use App\Http\Requests;
use Illuminate\Support\Facades\Redirect;
use Validator;
use App\Rules\Captcha; 

class ProductController extends Controller
{
	public function add_product()
	{
		$category = DB::table('tbl_loaisanpham')->orderby('maloai','desc')->get(); 
		return view('admin.add_product')->with('cate_product',$category);
	}
	public function all_product()
	{
		
		$all_product=DB::table('tbl_sanpham')->get();
		$manager_product=view('Admin.all_product')->with('all_product',$all_product);
    	//
		return view('admin_layout')->with('Admin.all_product',$manager_product);	
	} 
	public function save_product(Request $request)
	{
		$data = array();
    	//Tên cột trong database=tên input truyền vào
    	$data['maloai']= $request->dm;
		$data['tensanpham']= $request->tensp;
		$data['giaban']= $request->gb;
		$data['chatlieu']= $request->cl;
		$data['mausac']= $request->ms;
		$data['hinhanh']= $request->img;	
		$data['namsanxuat']= $request->nsx;
		$data['mota']= $request->mt;
		
		//image
		$get_image = $request->file('img');

		if($get_image){
			$get_name_image = $get_image->getClientOriginalName();
			//current lấy ký tự trc dấu chấm
			$name_image = current(explode('.',$get_name_image));
			//random thêm số vào trong tên file ảnh
			$new_image =  $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
			$get_image->move('imgsp/',$new_image);
			$data['hinhanh'] = $new_image;
			
			 DB::table('tbl_sanpham')->insert($data);
			 Session::put('message','Thêm sản phẩm thành công');
			 return Redirect::to('all-product');
		}

    	//Add data
		 DB::table('tbl_sanpham')->insert($data);
		 Session::put('message','Thêm danh mục sản phẩm thành công');
		 return Redirect::to('all-product');
	}
	public function edit_product($masanpham)

	{
		$category = DB::table('tbl_loaisanpham')->orderby('maloai','desc')->get(); 
		$edit_sanpham=DB::table('tbl_sanpham')->where('masanpham',$masanpham)->get();// check mã trung vs mã cần sửa->lấy dữ liệu ra
		$manager_sanpham=view('admin.edit_product')->with('edit_sanpham',$edit_sanpham)->with('category',$category);

		return view('admin_layout')->with('admin.edit_sanpham',$manager_sanpham);	
	}
	public function update_product(Request $request,$masanpham)
	{
		$data=array();	
		$data['maloai']= $request->dm;
		$data['tensanpham']= $request->tensp;
		$data['giaban']= $request->gb;
		$data['chatlieu']= $request->cl;
		$data['mausac']= $request->ms;
		$data['hinhanh']= $request->img;	
		$data['namsanxuat']= $request->nsx;
		$data['mota']= $request->mt;
		$get_image=$request->file('img');
		if($get_image){
			$get_name_image = $get_image->getClientOriginalName();
			$name_image = current(explode('.',$get_name_image));
			$new_image =  $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
			$get_image->move('/public/imgsp/',$new_image);
			$data['hinhanh'] = $new_image;
			DB::table('tbl_sanpham')->where('masanpham',$masanpham)->update($data);
			Session::put('message','Cập nhật sản phẩm thành công');
			return Redirect::to('all-product');
		}

		DB::table('tbl_sanpham')->where('masanpham',$masanpham)->update($data);
		Session::put('message','Cập nhật sản phẩm thất bại');
		return Redirect::to('all-product');
	}
	public function delete_product($masanpham)
	{
		DB::table('tbl_sanpham')->where('masanpham',$masanpham)->delete();
		Session::put('message','Xóa sản phẩm thành công');
		return Redirect::to('all-product');	
	}

}
