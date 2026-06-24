<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HOME.aspx.cs" Inherits="HOME" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>MY TIME</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
    <style type="text/css">
        .style1
        {
            width: 291px;
            height: 214px;
        }
        .style2
        {
            width: 336px;
        }
        .TextBox
        {
            
        }
        .TextBox:hover
        {
            bordercolor:red;
        }
        .style3
        {
            width: 336px;
            text-align: center;
        }
    </style>
</head>
<body class="animsition">
	
	<!-- Header -->
	<header class="header-v3">
		<!-- Header desktop -->
		<div class="container-menu-desktop trans-03">
			<div class="wrap-menu-desktop">
				<nav class="limiter-menu-desktop p-l-45">
					
					<!-- Logo desktop -->		
					<a href="#" class="logo">
						<img src="images/icons/logo-02.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li>
								<a href="HOME.aspx">Home</a>
								
							</li>
                            
							<li>
								<a href="ABOUT.aspx">About Us</a>
								
							</li>
							<li>
								<a href="watch.aspx">Pets</a>
							</li>

							<li>
								<a href="USERLOGIN.aspx">User Login</a>
							</li>
                            <li>
								<a href="ADMINLOGIN.aspx">Admin Login</a>
							</li>
                            <li>
								<a href="EMPLOGIN.aspx">Employee Login</a>
							</li>
                           
							<li>
								<a href="contact.aspx">Contact</a>
							</li>
                             <li>
								<a href="reg.aspx">SIGN UP</a>
							</li>

						</ul>
					</div>	

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m h-full">							
						<div class="flex-c-m h-full p-r-25 bor6">
							
						</div>
							
						
					</div>
				</nav>
			</div>	
		</div>

		<!-- Header Mobile -->
		


		<!-- Menu Mobile -->
		

		<!-- Modal Search -->
		
	</header>


	<!-- Sidebar -->
	<aside class="wrap-sidebar js-sidebar">
		<div class="s-full js-hide-sidebar"></div>

		<div class="sidebar flex-col-l p-t-22 p-b-25">
			<div class="flex-r w-full p-b-30 p-r-27">
				<div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-sidebar">
					<i class="zmdi zmdi-close"></i>

                    
				</div>
			</div>

			<div class="sidebar-content flex-w w-full p-lr-65 js-pscroll">
				

				<div class="sidebar-gallery w-full p-tb-30">
					<asp:Panel ID="Panel1" runat="server" Height="301px" Width="311px">
                    <form runat="server">
            <table class="style1">
                <tr>
                    <td class="style3" align=center>
                        <img src="images/wdsqwdqws.png" width="75" height="75"/><br /></td>
                </tr>
                <tr>
                    <td class="style3" align=center>
                        <span class="mtext-101 cl5">
						<br />Member Login
					</span></td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:TextBox ID="TextBox1" runat="server" 
                            class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" BorderStyle="Solid" 
                            BorderColor="Black" BorderWidth="2px" Height="45px" ></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label1" runat="server" ForeColor="Red" 
                            Text="Invalid Login Details"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:TextBox ID="TextBox3" runat="server" BorderColor="Black" 
                            BorderStyle="Solid" BorderWidth="2px" 
                            class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" Height="45px" 
                            TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Button ID="Button1" runat="server" Text="Login" 
                            
                            class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer" 
                            onclick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2" align=center>
                        <asp:HyperLink ID="HyperLink1" runat="server" data-caption="Foot Wear" 
                            ForeColor="#3366FF" NavigateUrl="~/reg.aspx"><font name="Century Gothic">Signup New User</font></asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                </tr>
            </table>
            </form>
        </asp:Panel>
					
				</div>

				
			</div>
		</div>
	</aside>


	<!-- Cart -->
	<div class="wrap-header-cart js-panel-cart">
		<div class="s-full js-hide-cart"></div>

		
	</div>



	<!-- Slider -->
	<section class="section-slide">
		<div class="wrap-slick1 rs2-slick1">
			<div class="slick1">
				<div class="item-slick1 bg-overlay1" style="background-image: url(images/slide-05.jpg);">
					<div class="container h-full">
						<div class="flex-col-c-m h-full p-t-100 p-b-60 respon5">
							<div class="layer-slick1 animated visible-false" data-appear="fadeInDown" data-delay="0">
								<span class="ltext-202 txt-center cl0 respon2">
									Find your new best friend
								</span>
							</div>
								
							<div class="layer-slick1 animated visible-false" data-appear="fadeInUp" data-delay="800">
								<h2 class="ltext-104 txt-center cl0 p-t-22 p-b-40 respon1">
									   MY TIME
								</h2>
							</div>
								
							<div class="layer-slick1 animated visible-false" data-appear="zoomIn" data-delay="1600">
								<a href="watch.aspx" class="button33">
									Shop Now
								</a>
							</div>
						</div>
					</div>
				</div>

				<div class="item-slick1 bg-overlay1" style="background-image: url(images/slide-06.jpg);">
					<div class="container h-full">
						<div class="flex-col-c-m h-full p-t-100 p-b-60 respon5">
							<div class="layer-slick1 animated visible-false" data-appear="rollIn" data-delay="0">
								<span class="ltext-202 txt-center cl0 respon2">
									Find your new best friend
								</span>
							</div>
								
							<div class="layer-slick1 animated visible-false" data-appear="lightSpeedIn" data-delay="800">
								<h2 class="ltext-104 txt-center cl0 p-t-22 p-b-40 respon1">
										MY TIME
								</h2>
							</div>
								
							<div class="layer-slick1 animated visible-false" data-appear="slideInUp" data-delay="1600">
								<a href="watch.aspx" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn2 p-lr-15 trans-04">
								Shop Now
								</a>
							</div>
						</div>
					</div>
				</div>

				<div class="item-slick1 bg-overlay1" style="background-image: url(images/slide-07.jpg);" >
					<div class="container h-full">
						<div class="flex-col-c-m h-full p-t-100 p-b-60 respon5">
							<div class="layer-slick1 animated visible-false" data-appear="rotateInDownLeft" data-delay="0">
								<span class="ltext-202 txt-center cl0 respon2">
									Find your new best friend
								</span>
							</div>
								
							<div class="layer-slick1 animated visible-false" data-appear="rotateInUpRight" data-delay="800">
								<h2 class="ltext-104 txt-center cl0 p-t-22 p-b-40 respon1">
									MY TIME
								</h2>
							</div>
								
							<div class="layer-slick1 animated visible-false" data-appear="rotateIn" data-delay="1600">
								<a href="watch.aspx" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn2 p-lr-15 trans-04">
									Shop Now
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class=""></div>
		</div>
	</section>


	<!-- Banner -->
	
			</div>
		</div>
	</div>

<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script>
	    $(".js-select2").each(function () {
	        $(this).select2({
	            minimumResultsForSearch: 20,
	            dropdownParent: $(this).next('.dropDownSelect2')
	        });
	    })
	</script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/slick/slick.min.js"></script>
	<script src="js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script src="vendor/parallax100/parallax100.js"></script>
	<script>
	    $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
	    $('.gallery-lb').each(function () { // the containers for all your galleries
	        $(this).magnificPopup({
	            delegate: 'a', // the selector for gallery item
	            type: 'image',
	            gallery: {
	                enabled: true
	            },
	            mainClass: 'mfp-fade'
	        });
	    });
	</script>
<!--===============================================================================================-->
	<script src="vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/sweetalert/sweetalert.min.js"></script>
	<script>
	    $('.js-addwish-b2').on('click', function (e) {
	        e.preventDefault();
	    });

	    $('.js-addwish-b2').each(function () {
	        var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
	        $(this).on('click', function () {
	            swal(nameProduct, "is added to wishlist !", "success");

	            $(this).addClass('js-addedwish-b2');
	            $(this).off('click');
	        });
	    });

	    $('.js-addwish-detail').each(function () {
	        var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

	        $(this).on('click', function () {
	            swal(nameProduct, "is added to wishlist !", "success");

	            $(this).addClass('js-addedwish-detail');
	            $(this).off('click');
	        });
	    });

	    /*---------------------------------------------*/

	    $('.js-addcart-detail').each(function () {
	        var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
	        $(this).on('click', function () {
	            swal(nameProduct, "is added to cart !", "success");
	        });
	    });
	</script>
<!--===============================================================================================-->
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>