<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Log.aspx.cs" Inherits="Nehashree.Log" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg-image">
                <div style="background-image: url('images/logbg.jpg');"></div>
                <div class="bg-image-overlay" style="background-color: rgba(12, 12, 12, 0.6);"></div>
            </div>
    <div class = "container">
	<div class="wrapper">
		<div class="form-signin">       
		    <h3 class="form-signin-heading">Welcome Back! Please Sign In</h3>
			  <hr class="colorgraph"/><br/>
			  
               <asp:TextBox ID="tbEmail" CssClass="form-control" placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
               <asp:RequiredFieldValidator ID="rfemail" runat="server" ErrorMessage="Please enter your email" ControlToValidate="tbEmail"></asp:RequiredFieldValidator>
			  
			    <asp:TextBox ID="tbPass" CssClass="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfpass" runat="server" ErrorMessage="Please enter your password" ControlToValidate="tbPass"></asp:RequiredFieldValidator>  
               		  
			<asp:Button ID="btnlog" runat="server" CssClass="btn btn-lg btn-primary btn-block" Text="Login" OnClick="btnlog_Click"/> 
             <br />
             <h6>Don't have an account? <a href="Signup.aspx" >Sign Up Now!</a>  </h6>
             <h6> <a href="ChangePassword.aspx" >Change Password</a></h6>
            <asp:Label ID="lblMsg" runat="server"></asp:Label>			
		</div>			
	</div>
</div>
    
</asp:Content>
