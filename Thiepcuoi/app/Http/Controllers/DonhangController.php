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
use App\Http\Controllers\Controller;
class DonhangController extends Controller
{
    
	public function all_donhang()
	{
		$customer=DB::table('tbl_khachhang')->orderBy('maKH','ASC')->get();
		$dh=DB::table('tbl_donhang')->get();
		return view('Admin.all_donhang',compact('dh','customer'));
 	}
 	public function ctdonhang($id)
	{
		$or=DB::table('tbl_donhang')->where('maDH')->get();
		$ctdh=DB::table('tbl_donhang')->join('tbl_chitietdh','tbl_donhang.maDH','=','tbl_chitietdh.maDH')->join('tbl_sanpham','tbl_sanpham.masanpham','=','tbl_chitietdh.maDH')->where(
			'tbl_donhang.maDH','=',$id)->select('tbl_donhang.*','tbl_chitietdh.*','tbl_sanpham.tensanpham as product_name')->get();
		return view('Admin.chitietdonhang',compact('ctdh','or'));
 	}
	
	public function print_donhang($checkout_code)
	{
 		$pdf=\App::make('dompdf.wrapper');
		$pdf->loadHTML($this->print_donhang_convert($checkout_code));
		return $pdf->stream();
	}
	public function print_donhang_convert($checkout_code)
	{
		$order_detail=DB::table('tbl_chitietdh')->where('maCTDH',$checkout_code)->get();
		$order=DB::table('tbl_donhang')->where('maDH',$checkout_code)->get();
		$ctdh=DB::table('tbl_donhang')->join('tbl_chitietdh','tbl_donhang.maDH','=','tbl_chitietdh.maDH')->join('tbl_sanpham','tbl_sanpham.masanpham','=','tbl_chitietdh.maDH')->where(
			'tbl_donhang.maDH','=',$checkout_code)->select('tbl_donhang.*','tbl_chitietdh.*','tbl_sanpham.tensanpham as product_name')->get();
		foreach ($order as $val) 
		{
			$customer_id=$val->maKH;
		}
		$customer=DB::table('tbl_khachhang')->where('maKH',$customer_id)->first();

		$output='';

		$output.=
		'
		<style> 
		body
		{
			font-family: DejaVu Sans;
		}
		</style>
		<h1 style="text-align: center;">Shop Thiệp Cưới Thiệp Hồng</h1>
		<p style="text-align: center;margin-top:-10px;">ĐC:273 Đường Hồ Tùng Mậu, Cầu Diễn, Từ Liêm, Hà Nội</p>
		<p style="text-align: center;margin-top:-10px;">SDT:0986869999</p>
		<p style="text-align: center;margin-top:-10px;">-------------</p>
		<h2 style="text-align: center">Hóa đơn bán hàng</h2>
		';

		$output.='

		<span>Tên khác hàng: <span style="margin-left:20px;">'.$customer->tenKH.'</span> </span >
		<br>
		<span>Số điện thoại: <span style="margin-left:33px;">'.$customer->sdt.'</span> </span>
		<br>				
		<span>Địa chỉ nhận hàng: <span style="margin-left:5px;">'.$customer->diachi.'</span> </span>
		';

		$output.='
		
		';
		$output.='
		<table  border="1" style="width:100%;border-collapse: collapse;margin-top:30px;" >
			<thead>
				<tr style="text-align:center">
					<td>STT</td>
					<td>Tên sản phẩm</td>
					<td>Số lượng</td>
					<td>Giá bán</td>
				</tr>
			</thead>
			<tbody>';
			$total=0;
			$stt=1;
			foreach($ctdh as $key =>$val)
			{
				$subtotal=$val->giaban*$val->soluong;
				$total +=$subtotal;
		
	
		$output.='
				<tr >
					<td style="text-align:center">'.$stt++.'</td>
					<td>'.$val->product_name.'</td>
					
					<td style="text-align:right">'.$val->soluong.'</td>
					<td style="text-align:right">'.number_format($subtotal).'</td>	
				</tr>';
					}
		$output.='	
			</tbody>

		</table>
		<br>
		<div>--------------------------------------------------------------------------------------------------------------------------</div>
			<div style="padding-left:370px;">
				<p >Tổng tiền hàng :<span style="margin-left:50px;">'.number_format($total).'đ'.'</span></p>
				<p style="margin-top:-13px;">Chiết khấu : <span style="margin-left:100px;"> 0%</span> </p>
				<p style="margin-top:-13px;"><b>Tổng cộng</b> :  <b style="margin-left:62px;">'.number_format($total).'đ'.'</b></p>
			</div>
		<p style="text-align:center" >----------------------------------------------------------------------</p>
		<p style="text-align:center"><b>Xin cảm ơn quý khách,hẹn gặp lại!</b></p>
		';
		return $output;
	}
}
