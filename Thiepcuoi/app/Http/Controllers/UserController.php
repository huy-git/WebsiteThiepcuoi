<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
class UserController extends Controller
{
   public function trangchu()
   {
   	$menu=DB::table('tbl_loaisanpham')->orderBy('maloai','ASC')->get();
   	$sp = DB::table('tbl_sanpham')->limit(16)->orderBy('masanpham','ASC')->get();
   	 return view('User.Home',compact('sp','menu'));
   }
   public function danhmucsp($id_loaisp)
   {
   	   	$menu=DB::table('tbl_loaisanpham')->orderBy('maloai','ASC')->get();
   	   	$cate_by_id=DB::table('tbl_sanpham')->join('tbl_loaisanpham','tbl_sanpham.maloai','=','tbl_loaisanpham.maloai')->where('tbl_sanpham.maloai',$id_loaisp)->get();
   	 return view('User.danhmuc',compact('cate_by_id','menu'));

   }
     public function chitietsp($id_sp)
   {
   	   	$menu=DB::table('tbl_loaisanpham')->orderBy('maloai','ASC')->get();
   	   	$name=DB::table('tbl_sanpham')->where('tbl_sanpham.masanpham',$id_sp)->limit(1)->get();
   	   	$sp = DB::table('tbl_sanpham')->limit(4)->orderBy('masanpham','ASC')->get();
   	   	$detail=DB::table('tbl_sanpham')->orderBy('masanpham','ASC')->join('tbl_loaisanpham','tbl_sanpham.maloai','=','tbl_loaisanpham.maloai')->where('tbl_sanpham.masanpham',$id_sp)->get();
   	 return view('User.chitietsp',compact('detail','menu','name','sp'));

   }
   public function Search(Request $req)
   {
      $menu=DB::table('tbl_loaisanpham')->orderBy('maloai','ASC')->get();
      $key=$req->timkiem;
      $search=DB::table('tbl_sanpham')->where('tensanpham','like','%'.$key.'%')->get();
      return view('User.Timkiem',compact('search','menu'));
   }
      public function tintuc()
   {
      $menu=DB::table('tbl_loaisanpham')->orderBy('maloai','ASC')->get();
      $loaitintuc=DB::table('tbl_loaitintuc')->orderBy('maloaitintuc','ASC')->get();
      $tintuc=DB::table('tbl_tintuc')->get();
      return view('User.tintuc',compact('loaitintuc','menu','tintuc'));
   }
      public function cttintuc($id)
   {
      $menu=DB::table('tbl_loaisanpham')->orderBy('maloai','ASC')->get();
      $loaitintuc=DB::table('tbl_loaitintuc')->orderBy('maloaitintuc','ASC')->get();
      $tintuc=DB::table('tbl_tintuc')->where('tbl_tintuc.matintuc',$id)->get();
      return view('User.chitiettt',compact('loaitintuc','menu','tintuc'));
   }
   public function lienhe()
   {
      $menu=DB::table('tbl_loaisanpham')->orderBy('maloai','ASC')->get();
      return view('User.lienhe', compact('menu'));
   }
     public function gioithieu()
   {
      $menu=DB::table('tbl_loaisanpham')->orderBy('maloai','ASC')->get();
      return view('User.gioithieu', compact('menu'));
   }
}