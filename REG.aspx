<%@ Page Language="C#" AutoEventWireup="true" CodeFile="REG.aspx.cs" Inherits="BLANK" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>

    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
 
     <!-- Site Metas -->
    <title>STARZONE</title>  
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
        .style2
        {
            width: 96px;
        }
    </style>
</head>
<body class=BB1>

    <form id="form1" runat="server" enctype="multipart/form-data">

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
                        <li><a  href="TEAM.aspx">MODELS</a></li>
                        <li><a href="MODELLOGIN.aspx">MODEL LOGIN</a></li>
                        <li><a href="MODELLOGIN.aspx">DIRECTOR LOGIN</a></li>
                        <li><a  class="active" href="REG.aspx">BE A MODEL</a></li>
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
                <td class="style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td><asp:Panel ID="Panel1" runat="server" BorderColor="" BorderStyle="Solid" 
                    BorderWidth="0px" Height="1300px" Width="1150px" CssClass=BB>
                    <br /><table width=1150><tr><td align=center><h1 style="font-size: xx-large; text-align: center;">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/SSSS.png" 
                            Width="200px" />
                        <br />
                        Model Registration</h1></td></tr></table>
                <p class="style1">
                    ----------------------------------------------------------------------</p> 
                    <div class="text-center">
                        <table class="w-100">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td colspan="3">
                                    Please enter your valid informations.It is 100 % secure and private,Create your own dream career</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="TextBox1" ErrorMessage="Please Fill" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="DropDownList2" ErrorMessage="Please Fill" 
                                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="css-input7" 
                                        PlaceHolder="Full Name" Width="400px"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="css-input7" 
                                        Width="400">
                                        <asp:ListItem>----Gender----</asp:ListItem>
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                        <asp:ListItem>Others</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                        ControlToValidate="TextBox8" ErrorMessage="Please Fill" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                </td>
                                <td>
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
                                    <asp:TextBox ID="TextBox8" runat="server" CssClass="css-input7" 
                                        PlaceHolder="Residence Location" Width="400px"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:TextBox ID="TextBox9" runat="server" CssClass="css-input7" 
                                        PlaceHolder="Experience Details" TextMode="MultiLine" Width="400px"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator11" 
                                        runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid emailid" 
                                        ForeColor="#CC0000" 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator12" 
                                        runat="server" ControlToValidate="TextBox5" ErrorMessage="Invalid Phone Number" 
                                        ForeColor="#CC0000" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="css-input7" 
                                        PlaceHolder="Email Address" Width="400px"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                <td>
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="css-input7" 
                                        PlaceHolder="Contact Number" Width="400px"></asp:TextBox>
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
                                    &nbsp;</td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                        ControlToValidate="FileUpload1" ErrorMessage="Please Select Photo" 
                                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:TextBox ID="TextBox6" runat="server" CssClass="css-input7" 
                                        PlaceHolder="Password" TextMode="Password" Width="400px"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="css-input7" 
                                        Width="400" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
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
                                    <asp:FileUpload ID="FileUpload2" runat="server" CssClass="css-input7" 
                                        Width="400" />
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:FileUpload ID="FileUpload3" runat="server" CssClass="css-input7" 
                                        Width="400" />
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
                                    <asp:FileUpload ID="FileUpload4" runat="server" CssClass="css-input7" 
                                        Width="400" />
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" 
                                        class="btn btn-light btn-radius btn-brd" Height="60px" onclick="Button1_Click" 
                                        Text="SUBMIT" Width="400px" />
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
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
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
                <td class="style2">&nbsp;</td>
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
                    <p class="footer-company-name">All Rights Reserved. &copy; 2022 STARZONE | </a> Design By : 
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