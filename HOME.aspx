<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HOME.aspx.cs" Inherits="HOME" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">

    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
 
     <!-- Site Metas -->
    <title>TALENTJET</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">

    <!-- Modernizer for Portfolio -->
    <script src="js/modernizer.js"></script>

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>

    <!-- LOADER -->
    <div id="preloader">
        <div class="loader">
			<div class="loader__bar"></div>
			<div class="loader__bar"></div>
			<div class="loader__bar"></div>
			<div class="loader__bar"></div>
			<div class="loader__bar"></div>
			<div class="loader__ball"></div>
		</div>
    </div><!-- end loader -->
    <!-- END LOADER -->
    
    <header class="header header_style_01">
        <nav class="megamenu navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><img src="images/logos/logo.png" alt="image"></a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a class="active" href="HOME.aspx">HOME</a></li>
                        <li><a href="ABOUT.aspx">ABOUT</a></li>
                        <li><a href="TEAM.aspx">MODELS</a></li>
                        <li><a href="MODELLOGIN.aspx">MODEL LOGIN</a></li>
                        <li><a href="DIRECTORLOGIN.aspx">DIRECTOR LOGIN</a></li>
                        <li><a href="REG.aspx">BE A MODEL</a></li>
                        <li><a href="CONTACT.aspx">CONTACT</a></li>
                      
                    </ul>
                </div>
            </div>
        </nav>
    </header>
	
	<div class="slider-area">
		<div class="slider-wrapper owl-carousel">
        <div class="slider-item text-center home-one-slider-otem slider-item-four slider-bg-two">
				<div class="container">
					<div class="row">
						<div class="slider-content-area">
							<div class="slide-text">
                                <table width=1200><tr><td align=center> <asp:Image ID="Image1" runat="server" ImageUrl="~/images/SSSS.png" Width=300 Height=300/></td></tr></table>
								<h1 class="homepage-three-title"> <span>Talent</span>Jet</h1>
								<h2>TALENTJET, popularly known as the ultimate model factory, is a platform where models are trained, groomed and prepared for shining in the glamour industry.</h2>
								<div class="slider-content-btn">
									<a class="button btn btn-light btn-radius btn-brd" href="REG.aspx">Join Us</a>
									<a class="button btn btn-light btn-radius btn-brd" href="CONTACT.asox">Contact</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			 <div class="slider-item text-center home-one-slider-otem slider-item-four slider-bg-two">
				<div class="container">
					<div class="row">
						<div class="slider-content-area">
							<div class="slide-text">
                                <table width=1200><tr><td align=center> <asp:Image ID="Image2" runat="server" ImageUrl="~/images/SSSS.png" Width=300 Height=300/></td></tr></table>
								<h1 class="homepage-three-title"> <span>Talent</span>Jet</h1>
								<h2>TALENTJET, popularly known as the ultimate model factory, is a platform where models are trained, groomed and prepared for shining in the glamour industry.</h2>
								<div class="slider-content-btn">
									<a class="button btn btn-light btn-radius btn-brd" href="REG.aspx">Join Us</a>
									<a class="button btn btn-light btn-radius btn-brd" href="CONTACT.asox">Contact</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			 <div class="slider-item text-center home-one-slider-otem slider-item-four slider-bg-two">
				<div class="container">
					<div class="row">
						<div class="slider-content-area">
							<div class="slide-text">
                                <table width=1200><tr><td align=center> <asp:Image ID="Image3" runat="server" ImageUrl="~/images/SSSS.png" Width=100 Height=100/></td></tr></table>
								<h1 class="homepage-three-title"> <span>Talent</span>Jet</h1>
								<h2>TALENTJET, popularly known as the ultimate model factory, is a platform where models are trained, groomed and prepared for shining in the glamour industry.</h2>
								<div class="slider-content-btn">
									<a class="button btn btn-light btn-radius btn-brd" href="REG.aspx">Join Us</a>
									<a class="button btn btn-light btn-radius btn-brd" href="CONTACT.asox">Contact</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>

    <div id="about" class="section wb">
        <div class="container">
           
            <hr class="hr1"> 

            <div class="row">
				<div class="col-md-6">
                    <div class="post-media wow fadeIn">
                        <img src="uploads/about_02.jpg" alt="" class="img-responsive img-rounded">
                    </div><!-- end media -->
                </div><!-- end col -->
				
                <div class="col-md-6">
                    <div class="message-box">
                        <h4>Who We are</h4>
                        <h2>TALENTJET </h2>
                        <p class="lead">Model Hunting Zone</p>

                        <p class="MsoNormal"> TALENTJET, popularly known as the ultimate model factory, is a 
                            platform where models are trained, groomed and prepared for shining in the 
                            glamour industry. The literal meaning of model that signifies a person with 
                            ideal qualities who can be considered the best to follow while pursuing fashion 
                            trends. TALENTJET thus strives to prepare these models to their best. According 
                            to them, a model shouldn’t be a person with just good looks and figure, but they 
                            should also possess ideal style of walking, speaking and communicating. These 
                            trends together in a person make up a good model. With the detailed research and 
                            analysis, TALENTJET prepares the best models and launches them into the glamour 
                            industry every year.</p>

                        <p class="text-justify"> &nbsp;</p>

                        <a href="ADMIN_LOGIN.aspx" class="btn btn-light btn-radius btn-brd grd1">ADMIN LOGIN</a>
                    </div><!-- end messagebox -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
	


   
    <div class="copyrights">
        <div class="container">
            <div class="footer-distributed">
                <div class="footer-left">                   
                    <p class="footer-company-name">All Rights Reserved. &copy; 2024 <a href="#">TALENTJET | </a> Design By : 
					<a href="">UBTech Solutions</a></p>
                </div>

                
            </div>
        </div><!-- end container -->
    </div><!-- end copyrights -->

    <a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>

    <!-- ALL JS FILES -->
    <script src="js/all.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>
    <script src="js/portfolio.js"></script>
    <script src="js/hoverdir.js"></script>    

</body>
</html>