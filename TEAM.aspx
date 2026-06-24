<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TEAM.aspx.cs" Inherits="BLANK" EnableEventValidation="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>

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
    <style>
    .BB
          {
    padding: 10px;
     font-size: 16px;
     border-width: 1px;
     border-color: #c5c2c2;
     background-color:white;
     color: #000000;
     border-style: solid;
     border-radius: 0px;
     box-shadow: 0px 0px 11px rgba(184,184,195,.75);
    
}
 .BB1
          {
    
     background-color:white;
    
    
}
 div.polaroid5 {
  width: 275px;
  height:275px;
 border:1px solid Orange;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
padding:10px;
align:center;
}

div.poloroid5.container {

}
div.polaroid5:hover
{
     box-shadow: 0 4px 8px 0 pink, 0 6px 20px 0 pink;
}
.imageb
{
     padding:3px;
      border:1px solid silver;
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
     
}
.imageb:hover
{
    transform-sclae(1.5);
}
    </style>
</head>
<body class=BB1>

    <form id="form1" runat="server">

    <!-- LOADER -->
   
	
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
                        <li><a href="HOME.aspx">HOME</a></li>
                        <li><a href="ABOUT.aspx">ABOUT</a></li>
                        <li><a  class="active" href="TEAM.aspx">MODELS</a></li>
                        <li><a href="MODELLOGIN.aspx">MODEL LOGIN</a></li>
                        <li><a href="MODELLOGIN.aspx">DIRECTOR LOGIN</a></li>
                        <li><a href="REG.aspx">BE A MODEL</a></li>
                        <li><a href="CONTACT.aspx">CONTACT</a></li>
                      
                    </ul>
                </div>
            </div>
        </nav>
    </header>

   	
	
	<div id="services" class="">
        <div class="">
            <div class="">
                <table>
                <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td><asp:Panel ID="Panel1" runat="server" BorderColor="" BorderStyle="Solid" 
                    BorderWidth="0px" Height="3015px" Width="1150px" CssClass=BB>
                    <br /><table width=1150><tr><td align=center><h1 style="font-size: xx-large; text-align: center;">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/SSSS.png" 
                            Width="200px" />
                        <br />
                        Our Top Models</h1></td></tr></table>
                    <table class="nav-justified">
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td align=center> 
                                <p class="lead">
                                    This is the list of our top model.You can also join us to open new career in modeling</p>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                            <td>
                                &nbsp;
                                <asp:DataList ID="DataList1" runat="server" CellPadding="10" 
                                    onselectedindexchanged="DataList1_SelectedIndexChanged1" RepeatColumns="3" 
                                    RepeatDirection="Horizontal" Width="1100">
                                    <ItemTemplate>
                                        <asp:Panel ID="Panel5" runat="server" Width="245px">
                                            <table width="125">
                                                <tr>
                                                    <td align="center">
                                                        <div class="polaroid5">
                                                            <asp:ImageButton ID="ImageButton3" runat="server" BorderColor="#CC6600" 
                                                                BorderStyle="None" BorderWidth="0px" 
                                                                CommandArgument='<%# DataBinder.Eval(Container.DataItem,"uid") %>' 
                                                                CssClass="imageb" Height="245px" 
                                                                ImageUrl='<%# "student.ashx?id="+Eval("uid") %>' 
                                                                onclick="ImageButton1_Click1" oncommand="ImageButton1_Command1" Width="240px" />
                                                            <br />
                                                             </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        ..</td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </ItemTemplate>
                                </asp:DataList>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                 <br />
                    <div class="text-center">

                     
                        <p class="lead">
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </p>

                     
</div>
                    </div>
                    </asp:Panel></td>
                <td>&nbsp;</td>
                <td></td>
                </tr>
                
                
                </table>
                
                <p>
                </p>
            </div><!-- end title -->

          
        </div><!-- end container -->
    </div><!-- end section -->

  

  <div class="copyrights">
        <div class="container">
            <div class="footer-distributed">
                <div class="footer-left">                   
                    <p class="footer-company-name">All Rights Reserved. &copy; 2024 TALENTJET | </a> Design By : 
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

    </form>

</body>
</html>