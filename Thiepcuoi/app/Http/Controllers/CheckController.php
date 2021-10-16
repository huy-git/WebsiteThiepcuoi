<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;
use DB;
use Session;
use Cart;
class CheckController extends Controller
{
   public function checkout()
   {
   	 $menu=DB::table('tbl_loaisanpham')->orderBy('maloai','ASC')->get();
   	 return view('User.Giohang.thongtinKH',compact('menu'));
   }
   public function addKH(Request $req)
   {
      $data=array(); //Khai báo 1 data = mảng
     //khai báo các trường trong csdl
       $data['tenKH']=$req->customer_name;
       $data['sdt']=$req->customer_phone;
      $data['diachi']=$req->customer_address;
       $customer_id = DB::table('tbl_khachhang')->insertGetId($data);//khi insert vào lấy luôn dl vừa insert
        Session::put('maKH',$customer_id);//trong $inset_customer đã có tất cả các dl
        Session::put('maKH',$req->customer_name);//trong $inset_customer đã có tất cả các dl
         return Redirect('/thong-tin');

   } 
   public function save_checkout(Request $req)
   {
   	  $data=array(); //Khai báo 1 data = mảng
     //khai báo các trường trong csdl
      $data['tenKH']=$req->ten;
      $data['sdt']=$req->phone;
      $data['diachi']=$req->address;
      $shipping_id = DB::table('tbl_khachhang')->insertGetId($data);//khi insert vào lấy luôn dl vừa insert
       Session::put('maKH',$shipping_id);//trong $inset_customer đã có tất cả các dl
        return Redirect('/thanh-toan');
   }
   public function thanhtoan()
   {
    $menu=DB::table('tbl_loaisanpham')->orderBy('maloai','ASC')->get();
   	return view('User.Giohang.thanhtoan',compact('menu'));
   } 
   public function dathang()
   {
   

   	  //Insert đặt hàng
    $order=array();
    $order['maKH']=Session::get('maKH');
    $order['tongtien']=Cart::subtotal(0,'.','');
    $order_id=DB::table('tbl_donhang')->insertGetId($order);


     //Insert chi tiết
    $content=Cart::content();//Truyền vào biến content
    foreach($content as $v_content)
    {
    $order_d=array();
    //$order_d['id_ctdonghang']=$v_content->rowId;
    $order_d['maDH']=$order_id;
    $order_d['masanpham']=$v_content->id;
    $order_d['soluong']=$v_content->qty;
    $order_d['giaban']=$v_content->price;
    $order_d['trangthai']='Đang chờ xử lý';
    DB::table('tbl_chitietdh')->insertGetId($order_d);
    }
     Cart::destroy();
     return Redirect::to('/dat-hang-thanh-cong');   
   }
   public function check_dathang()
   {
        $menu=DB::table('tbl_loaisanpham')->orderBy('maloai','ASC')->get();

   	return view('User.Giohang.dathangtc',compact('menu'));
   }
}