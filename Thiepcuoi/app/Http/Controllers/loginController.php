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


class loginController extends Controller
{
	  public function dashboard(Request $request)
    {
       
        return view("admin.dashboard");
    }
     public function index(Request $request)
    {
       
        return view("admin.login");
    } 
    public function dangnhap(Request $request){
        $Username=$request->Username;
        $password=$request->password;
        $result=DB::table('login')->where('Username',$Username)->where('password',$password)->first();
      //  echo '<pre>';
        //print ($result);
       // echo '</pre>';
       if($result)
        {
            Session::put('Username',$result->Username);
            Session::put('id',$result->id);
           return view("admin.dashboard");
         
        }
         else {
            Session::put('message','');
            return view("admin.login");
        }
    }
    public function dangxuat()
    {
        return view("admin.login");
    }
}
