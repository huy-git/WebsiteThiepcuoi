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

class CustomerController extends Controller
{
    public function all_customer()
	{
		
		$customer=  DB::table('tbl_khachhang')->orderBy('maKH','DESC')->paginate(5);
		return view('Admin.all_customer',compact('customer'));	
	} 	
}
