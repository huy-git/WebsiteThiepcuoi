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

class CategoryNewController extends Controller
{
    public function add_category_new()
	{
	    $category = DB::table('tbl_loaitintuc')->orderby('maloaitintuc','desc')->get(); 	
		return view('admin.add_category_new');
	}
	public function all_category_new()
	{
		
		$datas=  DB::table('tbl_loaitintuc')->orderBy('maloaitintuc','DESC')->paginate(5);
		return view('Admin.all_category_new',compact('datas'));	
	} 	
	
	public function save_category_new(Request $request)
	{
		$data = array();
		$data['tenloaitintuc']= $request->ten;
	

		$get_image = $request->file('anh');

		if($get_image){
			$get_name_image = $get_image->getClientOriginalName();
			//current lấy ký tự trc dấu chấm
			$name_image = current(explode('.',$get_name_image));
			//random thêm số vào trong tên file ảnh
			$new_image =  $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();

			//tạo 1 folder khác chưa ảnh tin tức cho ddwox nhầm
			$get_image->move('/xampp/htdocs/Thiepcuoi/public/imgtt/',$new_image);//đây là file lưu hay file lấy ảnh 
			$data['hinhanh'] = $new_image;
			//{{asset('imgtt/'. $cn->hinhanh)}}
			  DB::table('tbl_loaitintuc')->insert($data);
			  Session::put('message','Thêm loại tin tức thành công');
			  return Redirect::to('/all-categorynew');
		
		}
		 DB::table('tbl_loaitintuc')->insert($data);
		 Session::put('message','Thêm danh mục sản phẩm thành công');
		 return Redirect::to('/all-categorynew');
	}
	public function edit_category_new($id)
	{
		$category = DB::table('tbl_loaitintuc')->orderby('maloaitintuc','desc')->get(); 	
		$edit_category=DB::table('tbl_loaitintuc')->where('maloaitintuc',$id)->get();// check mã trung vs mã cần sửa->lấy dữ liệu ra
		

		return view('Admin.edit_categorynew',compact('category','edit_category'));	
	}//->with('CategoryNew',$CategoryNew)->with('data',$edit_category_new)
	public function update_category_new(Request $request, $maloaitintuc)
	{
		$data=array();	
		$data['tenloaitintuc']= $request->tenloai;
		$data['hinhanh']= $request->hinhanh;

		$get_image = $request->file('img');

		if($get_image){
			$get_name_image = $get_image->getClientOriginalName();
			//current lấy ký tự trc dấu chấm
			$name_image = current(explode('.',$get_name_image));
			//random thêm số vào trong tên file ảnh
			$new_image =  $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
			$get_image->move('/xampp/htdocs/Thiepcuoi/public/imgtt/',$new_image);
			$data['hinhanh'] = $new_image;
			
			 DB::table('tbl_loaitintuc')->insert($data);
			 Session::put('message','Cập nhập loại tin tức thành công');
			 return Redirect::to('all_categorynew');
		}
		//update data
		DB::table('tbl_loaitintuc')->where('maloaitintuc',$maloaitintuc)->update($data);
		Session::put('message','Cập nhật loại tin tứcthành công');
		return Redirect::to('all-categorynew');	
	}
	public function delete_category_new($maloaitintuc)
	{
		DB::table('tbl_loaitintuc')->where('maloaitintuc',$maloaitintuc)->delete();
		Session::put('message','Xóa loại tin tức thành công');
		return Redirect::to('all-categorynew');	
	}
	public function getdata()
	{
		$data=CategoryModel::all();
		return view('getloai',compact('data'));
	}
}
