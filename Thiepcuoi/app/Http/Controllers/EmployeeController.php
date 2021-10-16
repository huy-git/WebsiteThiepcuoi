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


class EmployeeController extends Controller
{
    public function add_employee()
	{
	    $employee = DB::table('tbl_nhanvien')->orderby('maNV','desc')->get(); 	
		return view('admin.add_employee');
	}
	public function all_employee()
	{
		
		$datas=  DB::table('tbl_nhanvien')->orderBy('maNV','DESC')->paginate(5);
		return view('Admin.all_employee',compact('datas'));	
	} 	
	
	public function save_employee(Request $request)
	{
		$data = array();
		$data['tenNV']= $request->tenloai;
		$data['chucvu']= $request->chucvu;
		DB::table('tbl_nhanvien')->insert($data);
		Session::put('message','Thêm danh mục nhân viên thành công');
		return Redirect::to('all-employee');
	}
	public function edit_employee($id)
	{
		$employee = DB::table('tbl_nhanvien')->orderby('maNV','desc')->get(); 	
		$edit_employee=DB::table('tbl_nhanvien')->where('maNV',$id)->get();// check mã trung vs mã cần sửa->lấy dữ liệu ra
		

		return view('Admin.edit_employee')->with('data',$edit_employee)->with('employee',$employee);	
	}
	public function update_employee(Request $request, $maNV)
	{
		$data=array();	
		$data['tenNV']= $request->tnv;
		$data['chucvu']= $request->cv;
		
		//update data
		DB::table('tbl_nhanvien')->where('maNV',$maNV)->update($data);
		Session::put('message','Cập nhật danh mục nhân viên thành công');
		return Redirect::to('all-category-product');	
	}
	public function delete_employee($maNV)
	{
		DB::table('tbl_nhanvien')->where('maNV',$maNV)->delete();
		Session::put('message','Xóa danh mục nhân viên thành công');
		return Redirect::to('all-employee');	
	}
	public function getdata()
	{
		$data=CategoryModel::all();
		return view('getloai',compact('data'));
	}
}
