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


class NewController extends Controller
{
    public function add_new()
	{
		$category = DB::table('tbl_loaitintuc')->orderby('maloaitintuc','desc')->get(); 
		return view('admin.add_new')->with('cate_new',$category);
	}
	public function all_new()
	{
		
		$all_new=DB::table('tbl_tintuc')->get();
		$manager_new=view('Admin.all_new')->with('all_new',$all_new);
    	//
		return view('admin_layout')->with('Admin.all_new',$manager_new);	
	} 
	public function save_new(Request $request)
	{
		$data = array();
    	//Tên cột trong database=tên input truyền vào
    	$data['maloaitintuc']= $request->dmtt;
		$data['tieude']= $request->td;
		$data['nguoidang']= $request->nguoidang;
		$data['ngaydang']= $request->ngaydang;
		$data['noidung']= $request->nd;
		$data['noidungCT']= $request->ndct;	
		$data['hinhanh']= $request->img;
		
		
		//image
		$get_image = $request->file('img');

		if($get_image){
			$get_name_image = $get_image->getClientOriginalName();
			//current lấy ký tự trc dấu chấm
			$name_image = current(explode('.',$get_name_image));
			//random thêm số vào trong tên file ảnh
			$new_image =  $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
			$get_image->move('public/imgsp/',$new_image);
			$data['hinhanh'] = $new_image;
			
			  DB::table('tbl_tintuc')->insert($data);
			 Session::put('message','Thêm tin tức thành công');
			 return Redirect::to('all-new');
		
		}
	
    	//Add data
		 DB::table('tbl_tintuc')->insert($data);
		 Session::put('message','Thêm tin tức thành công');
		 return Redirect::to('all-new');
	}
	public function edit_new($matintuc)

	{
		$category = DB::table('tbl_tintuc')->orderby('matintuc','desc')->get(); 
		$edit_new=DB::table('tbl_tintuc')->where('matintuc',$matintuc)->get();// check mã trung vs mã cần sửa->lấy dữ liệu ra
		$manager_new=view('admin.edit_new')->with('edit_new',$edit_new)->with('category',$category);

		return view('admin_layout')->with('admin.edit_new',$manager_new);	
	}
	public function update_new(Request $request,$matintuc)
	{
		$data['maloaitintuc']= $request->dmtt;
		$data['tieude']= $request->td;
		$data['nguoidang']= $request->nguoidang;
		$data['ngaydang']= $request->ngaydang;
		$data['noidung']= $request->nd;
		$data['noidungCT']= $request->ndct;	
		$data['hinhanh']= $request->img;
		
		
		//image
		$get_image = $request->file('img');

		if($get_image){
			$get_name_image = $get_image->getClientOriginalName();
			//current lấy ký tự trc dấu chấm
			$name_image = current(explode('.',$get_name_image));
			//random thêm số vào trong tên file ảnh
			$new_image =  $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
			$get_image->move('public/imgsp/',$new_image);
			$data['hinhanh'] = $new_image;
			
			 DB::table('tbl_tintuc')->insert($data);
			 Session::put('message','Cập nhập tin tức thành công');
			 return Redirect::to('all-new');
		}

		DB::table('tbl_tintuc')->where('matintuc',$matintuc)->update($data);
		Session::put('message','Cập nhật tin tức thất bại');
		return Redirect::to('all-new');
	}
	public function delete_new($matintuc)
	{
		DB::table('tbl_tintuc')->where('matintuc',$matintuc)->delete();
		Session::put('message','Xóa tin tức thành công');
		return Redirect::to('all-new');	
	}
	
}
