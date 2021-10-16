<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;
use DB;
use Cart;
class CartController extends Controller
{
      public function save_cart(Request $req)
      {
          $productID =$req->productid_hidden;
          $quantity=$req->qty;
          $product_info=DB::table('tbl_sanpham')->where('masanpham',$productID)->first();
          $menu=DB::table('tbl_loaisanpham')->orderBy('maloai','ASC')->get();
          $data['id']=$product_info->masanpham;
          $data['qty']=$quantity;
          $data['name']=$product_info->tensanpham;
          $data['price']=$product_info->giaban;
          $data['weight']=$product_info->giaban;
          $data['options']['image']=$product_info->hinhanh; 
          Cart::add($data);
           return Redirect::to('/gio-hang'); 
      }
      public function show_cart()
      {
          $menu=DB::table('tbl_loaisanpham')->orderBy('maloai','ASC')->get();
          return view('User.Giohang.gio_hang',compact('menu'));
      }
      public function xoa($rowId) 
      {
         Cart::update($rowId,0);
          return Redirect::to('/gio-hang');
      }
      public function sua(Request $req)
      {
         $rowId=$req->rowId_cart;
         $qty=$req->quantity;
         Cart::update($rowId,$qty);
          return Redirect::to('/gio-hang');
      }
}