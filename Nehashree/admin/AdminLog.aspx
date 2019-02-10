<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLog.aspx.cs" Inherits="Nehashree.admin.AdminLog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i%7cWork+Sans:400,500,700" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="../css/combined.css"/>
    <link href="../css/style.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <header class="nk-header">
        <!-- START: Navbar -->
        <nav class="nk-navbar nk-navbar-top nk-navbar-sticky nk-navbar-transparent nk-navbar-white-text-on-top">
            <div class="container">
                <div class="nk-nav-table">
                    <a href="Home.aspx" class="nk-nav-logo">
                        <img src="images/oglogo.jpg" alt="" width="85" class="nk-nav-logo-onscroll"/>
                        <img src="images/oglogo.jpg" alt="" width="85"/>
                    </a>

                    <ul class="nk-nav nk-nav-right hidden-md-down" data-nav-mobile="#nk-nav-mobile">
                        <li>
                            <a href="../Home.aspx">Go To Site Again</a>
                        </li>
                        <li>
                            <a href="#">Contact</a>
                        </li>
               <!--         <li>
                            <a href="ViewUsers.aspx">View Users</a>
                        </li>
                        <li>
                            <a href="ViewMessage.aspx">View Mesaages</a>
                        </li>
                        <li>
                            <a href="AdminLogout.aspx">Logout</a>
                        </li> -->
                    </ul>

                    <ul class="nk-nav nk-nav-right nk-nav-icons">
                        <li class="single-icon hidden-lg-up">
                            <a href="#" class="nk-navbar-full-toggle">
                                <span class="nk-icon-burger">
                                    <span class="nk-t-1"></span>
                                    <span class="nk-t-2"></span>
                                    <span class="nk-t-3"></span>
                                </span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- END: Navbar -->
              
    </header>

         <!-- START: Navbar Mobile -->
         <nav class="nk-navbar nk-navbar-full nk-navbar-align-center" id="nk-nav-mobile">
        <div class="nk-navbar-bg">
            <div class="bg-image" style="background-image: url('images/mobbg.jpeg')"></div>
        </div>
        <div class="nk-nav-table">
            <div class="nk-nav-row">
                <div class="container">
                    <div class="nk-nav-header">

                        <div class="nk-nav-logo">
                            <a href="Home.aspx" class="nk-nav-logo">
                                <img src="images/logo-light.svg" alt="" width="85"/> <!--logo-->
                            </a>
                        </div>

                        <div class="nk-nav-close nk-navbar-full-toggle">
                            <span class="nk-icon-close"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="nk-nav-row-full nk-nav-row">
                <div class="nano">
                    <div class="nano-content">
                        <div class="nk-nav-table">
                            <div class="nk-nav-row nk-nav-row-full nk-nav-row-center nk-navbar-mobile-content">
                                <ul class="nk-nav">
                                    <!-- Here will be inserted menu from [data-mobile-menu="#nk-nav-mobile"] -->
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="nk-nav-row">
                <div class="container">
                    <div class="nk-nav-social">
                        <ul>
                            <li><a href="https://twitter.com/"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="https://dribbble.com/"><i class="fa fa-dribbble"></i></a></li>
                            <li><a href="https://www.instagram.com/"><i class="fa fa-instagram"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </nav>
       <!-- END: Navbar Mobile -->

        <div class="nk-main"> 

             <div class = "container">
	<div class="wrapper">
		<div class="form-signin">       
		    <h3 class="form-signin-heading">Welcome Admin! Sign In</h3>
			  <hr class="colorgraph"/><br/>
			  
               <asp:TextBox ID="tbName" CssClass="form-control" placeholder="Name" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="rfname" runat="server" ErrorMessage="Please enter your name" ControlToValidate="tbName"></asp:RequiredFieldValidator>
			  
			    <asp:TextBox ID="tbPass" CssClass="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfpass" runat="server" ErrorMessage="Please enter your password" ControlToValidate="tbPass"></asp:RequiredFieldValidator>  
               		  
			<asp:Button ID="btnlog" runat="server" CssClass="btn btn-lg btn-primary btn-block" Text="Login" OnClick="btnlog_Click"/> 
             <br />
            '<asp:Label ID="lblMsg" runat="server"></asp:Label>			
		</div>			
	</div>
</div>
       
        </div>
    </form>
    <script src="../js/combined.js"></script>
    <script src="../js/scripts.js"></script>
    <script src="../js/placeholder.js"></script>
    <script src="../js/jquery.backstretch.min.js"></script>
    <script src="../js/jquery-1.11.1.min.js"></script>
</body>
</html>
