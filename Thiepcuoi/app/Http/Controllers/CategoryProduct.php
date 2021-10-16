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
use App\Models\CategoryModel;

class CategoryProduct extends Controller
{
	public function add_category_product()
	{
	    $category = DB::table('tbl_loaisanpham')->orderby('maloai','desc')->get(); 	
		return view('admin.add_category_product');
	}
	public function all_category_product()
	{
		
		$datas=  DB::table('tbl_loaisanpham')->orderBy('maloai','DESC')->paginate(5);
		return view('Admin.all_category',compact('datas'));	
	} 	
	
	public function save_category_product(Request $request)
	{
		$data = array();
		$data['tenloai']= $request->tenloai;
		DB::table('tbl_loaisanpham')->insert($data);
		Session::put('message','Thêm danh mục sản phẩm thành công');
		return Redirect::to('all-category-product');
	}
	public function edit_category($id)
	{
		$category = DB::table('tbl_loaisanpham')->orderby('maloai','desc')->get(); 	
		$edit_category=DB::table('tbl_loaisanpham')->where('maloai',$id)->get();// check mã trung vs mã cần sửa->lấy dữ liệu ra
		

		return view('Admin.edit_category')->with('data',$edit_category)->with('category',$category);	
	}
	public function update_category_product(Request $request, $maloai)
	{
		$data=array();	
		$data['tenloai']= $request->tdm;
		
		//update data
		DB::table('tbl_loaisanpham')->where('maloai',$maloai)->update($data);
		Session::put('message','Cập nhật danh mục sản phẩm thành công');
		return Redirect::to('all-category-product');	
	}
	public function delete_category_product($maloai)
	{
		DB::table('tbl_loaisanpham')->where('maloai',$maloai)->delete();
		Session::put('message','Xóa danh mục sản phẩm thành công');
		return Redirect::to('all-category-product');	
	}
	public function getdata()
	{
		$data=CategoryModel::all();
		return view('getloai',compact('data'));
	}

}
