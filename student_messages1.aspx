<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_messages1.aspx.cs" Inherits="BLANK" EnableEventValidation="false" %>

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

.BB6
          {
     padding: 10px;
     font-size: 16px;
     border-width: 1px;
     border-color: #c5c2c2;
     background-color:white;
     color: #000000;
     align:left;
     border-style: solid;
     border-radius: 0px;
     box-shadow: 0px 0px 11px rgba(184,184,195,.75);
    
}
 .BB1
          {
    
     background-color:white;
    
    
}
                
        
         .imageb
{
     padding:3px;
      border:1px solid silver;
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
       border-radius:50px;
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
                        <li><a  href="studenthome.aspx">Home</a></li>
                        <li><a class="active" href="student_messages.aspx">Messages</a></li>
                       
                        <li><a href="student_quotes.aspx">Quotes</a></li>
                        <li><a href="student_profile.aspx">Profile</a></li>
                        <li><a href="student_change_pwd.aspx">Change Password</a></li>
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
                    &nbsp;</td>
                <td><asp:Panel ID="Panel1" runat="server" BorderColor="" BorderStyle="Solid" 
                    BorderWidth="0px" Height="900px" Width="1150px" CssClass=BB>
                    <br /> 
                    <div class="">
                        <table class="">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td class="text-left">
                                    &nbsp;</td>
                                <td class="text-left" colspan="3">
                                    <span>
                                    <asp:ImageButton ID="ImageButton1" runat="server" CssClass="imageb" 
                                        Height="100" Width="100" />
                                    <br />
                                    </span>
                                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                <td colspan="3">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <table class="nav-justified">
                                        <tr>
                                            <td>
                                                <span style="font-size: small">
                                                <asp:DataList ID="DataList2" runat="server" 
                                                    onselectedindexchanged="DataList2_SelectedIndexChanged">
                                                    <ItemTemplate>
                                                        <table class="nav-justified">
                                                            <tr>
                                                                <td>
                                                                    <span style="font-size: small">
                                                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="10pt" 
                                                                        ForeColor="Black" Text='<%# DataBinder.Eval(Container.DataItem,"msg") %>'></asp:Label>
                                                                    </span>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </ItemTemplate>
                                                </asp:DataList>
                                                </span>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <span style="font-size: small">
                                                <asp:DataList ID="DataList3" runat="server" 
                                                    onselectedindexchanged="DataList3_SelectedIndexChanged">
                                                    <ItemTemplate>
                                                        <span style="font-size: small">
                                                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="10pt" 
                                                            ForeColor="#FF6600" Text='<%# DataBinder.Eval(Container.DataItem,"reply") %>'></asp:Label>
                                                        </span>
                                                    </ItemTemplate>
                                                </asp:DataList>
                                                </span>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td class="text-left">
                                    &nbsp;</td>
                                <td class="text-left">
                                    &nbsp;</td>
                                <td class="text-left">
                                    <asp:TextBox ID="TextBox8" runat="server" CssClass="css-input7" Height="100px" 
                                        PlaceHolder="Type your message" TextMode="MultiLine" Width="800px"></asp:TextBox>
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button4" runat="server" 
                                        class="btn btn-light btn-radius btn-brd" Height="60px" onclick="Button1_Click" 
                                        Text="SEND" Width="200px" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button5" runat="server" 
                                        class="btn btn-light btn-radius btn-brd" Height="60px" onclick="Button6_Click" 
                                        Text="CLEAR" Width="200px" />
                                </td>
                                <td class="text-left">
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
                                <td class="text-left">
                                    &nbsp;</td>
                                <td class="text-left" colspan="3">
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
                                <td class="text-left">
                                    &nbsp;</td>
                                <td class="text-left" colspan="3">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td colspan="6" class="text-left">
                                    &nbsp;
                                    </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td class="text-left">
                                    &nbsp;</td>
                                <td class="text-left" colspan="3">
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
                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
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
                    <p class="footer-company-name">All Rights Reserved. &copy; 2024 ref="#">TALENTJET | </a> Design By : 
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