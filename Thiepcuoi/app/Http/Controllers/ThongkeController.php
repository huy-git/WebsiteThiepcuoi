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

class ThongkeController extends Controller
{
	public function thongke()
	{
		$all_product=DB::table('tbl_sanpham')->get();
 	    $datas=DB::table('tbl_loaisanpham')->get();
 	    $all_new=DB::table('tbl_tintuc')->get();
        $customer=DB::table('tbl_khachhang')->get();
 	    $dh=DB::table('tbl_donhang')->get();
 	    $employee=DB::table('tbl_nhanvien')->get();
    	return view('Admin.ThongKeee',compact('all_product','datas','all_new','customer','dh','employee'));
	}
   
}
