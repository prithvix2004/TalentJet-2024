<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_view_student.aspx.cs" Inherits="BLANK" EnableEventValidation="false" %>

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
        .style1
        {
            color: #FF6600;
            text-align: center;
        }
        
        
         .imageb
{
     padding:3px;
      border:1px solid silver;
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
       border-radius:75px;
}
.imageb:hover
{
    transform-sclae(1.5);
}
    div.polaroid5 {
  width: 200px;
  height:220px;
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
                        <li><a href="adminhome.aspx">Home</a></li>
                        <li><a href="admin_add_counselor.aspx">Add Director</a></li>
                        <li><a class="active" href="admin_view_student.aspx">Model List</a></li>
                        <li><a href="admin_director.aspx">Directors Profile</a></li>
                        <li><a href="admin_profile.aspx">Change Password</a></li>
                        <li><a href="HOME.aspx">Logout</a></li>
                      
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td><asp:Panel ID="Panel1" runat="server" BorderColor="" BorderStyle="Solid" 
                    BorderWidth="0px" Height="2000px" Width="1150px" CssClass=BB>
                    <br /><table width=1150><tr><td align=center><h1 style="font-size: xx-large; text-align: center;">
                        Registered Model List</h1></td></tr></table>
                <p class="style1">
                    ----------------------------------------------------------------------</p> 
                    <div class="text-center">
                        <table class="w-100">
                            <tr>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:DataList ID="DataList1" runat="server" 
                                                    onselectedindexchanged="DataList1_SelectedIndexChanged1" RepeatColumns="4" 
                                                    RepeatDirection="Horizontal" Width=850>
                                                    <ItemTemplate>
                                                        <asp:Panel ID="Panel4" runat="server"  Width="125px">
                                                            <table width="125"  CellPadding=20 CellSpacing=20>
                                                                <tr>
                                                                    <td align=center>  <div class="polaroid5">
                                                                        <asp:ImageButton ID="ImageButton2" runat="server" BorderColor="#CC6600" 
                                                                            BorderStyle="None" BorderWidth="0px" 
                                                                            CommandArgument='<%# DataBinder.Eval(Container.DataItem,"uid") %>' 
                                                                            Height="140px" ImageUrl='<%# "student.ashx?id="+Eval("uid") %>' 
                                                                            onclick="ImageButton1_Click1" oncommand="ImageButton1_Command1" 
                                                                            Width="140px" CssClass=imageb/>
                                                                        <br />
                                                                       
                                                                        <asp:Label ID="Label7" runat="server" 
                                                                            Text='<%# DataBinder.Eval(Container.DataItem,"name") %>' 
                                                                            ForeColor="#FF6600" Font-Bold="True"></asp:Label><br /> 
                                                                             <asp:Label ID="Label1" runat="server" 
                                                                            Text='<%# DataBinder.Eval(Container.DataItem,"loc") %>' ForeColor="Black" 
                                                                                 Font-Bold="True" Font-Size="Small"></asp:Label></div>
                                                                    </td>
                                                                </tr>
                                                                <tr><td>..</td></tr>
                                                            </table>
                                                        </asp:Panel>
                                                    </ItemTemplate>
                                                </asp:DataList></td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td class="text-center">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td class="text-center">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td class="text-center">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td colspan="3">
                                    &nbsp;
                                    </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
&nbsp;</div>
                    </asp:Panel></td>
                <td></td>
                </tr>
                
                
                <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
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