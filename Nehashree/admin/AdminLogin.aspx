<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Nehashree.admin.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server"> 
     <div class="bg-image">
                <div style="background-image: url('images/logbg.jpg');"></div>
                <div class="bg-image-overlay" style="background-color: rgba(12, 12, 12, 0.6);"></div>
            </div>
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
         </form>
</asp:Content>
