@extends('layout')
@section('content_user')
<style type="text/css">
	section
	{
		font-family: Arial;
	}
</style>
<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/bg-02.jpg');">
		<h2 class="ltext-105 cl0 txt-center">
		</h2>
	</section>	


	<!-- Content page -->
	<section class="bg0 p-t-62 p-b-60">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-lg-9 p-b-80">
					<div class="p-r-45 p-r-0-lg">
						@foreach($tintuc as $tt)
						<!-- item blog -->
						<div class="p-b-63">
							<a href="blog-detail.html" class="hov-img0 how-pos5-parent">
								<img src="{{asset('/imgsp/'.$tt->hinhanh)}}" alt="IMG-BLOG">

								<div class="flex-col-c-m size-123 bg9 how-pos5">
						

									<span class="stext-109 cl3 txt-center">
										{{$tt->ngaydang}}
									</span>
								</div>
							</a>

							<div class="p-t-32">
								<h4 class="p-b-15">
									<a href="{{URL::to('/chi-tiet-tin/'.$tt->matintuc)}}" class="ltext-108 cl2 hov-cl1 trans-04">
									 {{$tt->tieude}}
									</a>
								</h4>

								<p class="stext-117 cl6">
									{{$tt->noidung}}
								</p>

								<div class="flex-w flex-sb-m p-t-18">
									<span class="flex-w flex-m stext-111 cl2 p-r-30 m-tb-10">
										<span>
											<span class="cl4">By</span> {{$tt->nguoidang}}  
											<span class="cl12 m-l-4 m-r-6">|</span>
										</span>
								</div>
							</div>
						</div>
						@endforeach
					
					</div>
				</div>

				<div class="col-md-4 col-lg-3 p-b-80">
					<div class="side-menu">
						<div class="bor17 of-hidden pos-relative">
							<input class="stext-103 cl2 plh4 size-116 p-l-28 p-r-55" type="text" name="search" placeholder="Search">

							<button class="flex-c-m size-122 ab-t-r fs-18 cl4 hov-cl1 trans-04">
								<i class="zmdi zmdi-search"></i>
							</button>
						</div>

						<div class="p-t-55">
							<h4 class="mtext-112 cl2 p-b-33">
								Loại tin tức
							</h4>

							<ul>
								@foreach($loaitintuc as $loai)
								<li class="bor18">
									<a href="#" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										{{$loai->tenloaitintuc}}
									</a>
								</li>
                             @endforeach
							</ul>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>
@endsection