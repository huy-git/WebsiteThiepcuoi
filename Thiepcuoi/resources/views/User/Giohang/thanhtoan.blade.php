@extends('layout')
@section('content_user')
	<!-- breadcrumb -->
	<script src="https://kit.fontawesome.com/c9e0d0ccd3.js" crossorigin="anonymous"></script>

	<div class="container" style="margin-top: 130px">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="index.html" class="stext-109 cl8 hov-cl1 trans-04">
				Home
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<span class="stext-109 cl4">
				Thanh toán 
			</span>
		</div>
	</div>
		

	<!-- Shoping Cart -->
	<form class="bg0 p-t-75 p-b-85">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
					<div class="m-l-25 m-r--38 m-lr-0-xl">
						<div class="wrap-table-shopping-cart">
							<?php
							$content=Cart::content();
							?>
							<table class="table-shopping-cart">
								<tr class="table_head">
									<th class="column-1">Sản Phẩm</th>
									<th class="column-2"></th>
									<th class="column-3">Giá Bán</th>
									<th class="column-4">Số Lượng</th>
									<th class="column-5">Thành tiền</th>
									<th class="column-6"></th>
								</tr>
                                @foreach($content as $con)
								<tr class="table_row">
									<td class="column-1">
										<div class="how-itemcart1">
											<img src="{{asset('/imgsp/'.$con->options->image)}}" alt="IMG">
										</div>
									</td>
									<td class="column-2">{{$con->name}}</td>
									<td class="column-3">{{number_format($con->price)}}</td>
									<td class="column-4">
										<div class="wrap-num-product flex-w m-l-auto m-r-0">
										<form action="{{URL('/update-cart')}}" method="get">
                                        	 
                                            	<input class="cart_quantity_input form-control" type="text" name="quantity" value="{{$con->qty}}">
								                <input type="hidden" value="{{$con->rowId}}" name="rowId_cart" class="form-control">

                                               <!-- <input type="submit"  value="Cập nhật" name="update_qty" class="btn btn-primary far fas-edit" >-->
                                         </form>
										</div>
									</td>
									</td>
									
									<td class="column-5">
                                    <?php 
                                    $tong=$con->price*$con->qty;
                                    echo number_format($tong);
                                    ?>
									</td>
									<td class="column-6"><button class="btn"><a class="cart_quantity_delete text-center" href="{{URL('/delete/'.$con->rowId)}}"> Xóa </a></button></td>
								</tr>
								@endforeach
							</table>
						</div>
                    
						<div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
							<div class="flex-w flex-m m-r-20 m-tb-5">
								<input class="stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5" type="text" name="coupon" placeholder="Mã giảm giá">
									
								<div class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5">
									Phiếu giảm giá
								</div>
							</div>

							
						</div>
					</div>
				</div>

				<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
					<div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
						<h4 class="mtext-109 cl2 p-b-30">
							Tổng
						</h4>

						<div class="flex-w flex-t bor12 p-b-13">
							<div class="size-208">
								<span class="stext-110 cl2">
									Tổng tiền
								</span>
							</div>

							<div class="size-209">
								<span class="mtext-110 cl2">
								
								</span>
							</div>
						</div>

						<div class="flex-w flex-t bor12 p-t-15 p-b-30">
							<div class="size-208 w-full-ssm">
								<span class="stext-110 cl2">
									Chuyển hàng:
								</span>
							</div>

							<div class="size-209 p-r-18 p-r-0-sm w-full-ssm">
								<p class="stext-111 cl6 p-t-2">
									Không có phương thức vận chuyển nào có sẵn. Vui lòng kiểm tra kỹ địa chỉ của bạn, hoặc liên hệ với chúng tôi nếu bạn cần bất kỳ trợ giúp nào. 
								</p>
								
								<div class="p-t-15">
									<span class="stext-112 cl8">
										Thông tin đặt hàng
									</span>

									

									<div class="bor8 bg0 m-b-12">
										<input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" name="state" placeholder="State /  country">
									</div>

									<div class="bor8 bg0 m-b-22">
										<input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" name="postcode" placeholder="Postcode / Zip">
									</div>
									
									
								</div>
							</div>
						</div>
                        <form action="{{URL::to('/dat-hang')}}" method="POST">
                        	{{ csrf_field() }}
						<div class="flex-w flex-t p-t-27 p-b-33">
							<div class="size-208">
								<span class="mtext-101 cl2">
									Tổng tiền:
								</span>
							</div>

							<div class="size-209 p-t-1">
								<span class="mtext-110 cl2">
									{{Cart::subtotal(0,'.','')}}
								</span>
							</div>
						</div>

						<button class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
						 <a href="{{URL::to('/dat-hang')}}">Đặt hàng</a>
						</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</form>
@endsection