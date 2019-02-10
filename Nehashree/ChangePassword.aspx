<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Nehashree.ChangePassword" %>
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
		    <h3 class="form-signin-heading">Chaneg Your Password Here!</h3>
			  <hr class="colorgraph"/><br/>
			      <asp:Label ID="lblMsg" runat="server"></asp:Label>
                 <asp:TextBox ID="tbEmail" CssClass="form-control" placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfemail" runat="server" ErrorMessage="Please enter your email" ValidationGroup="main" ControlToValidate="tbEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="expmail" runat="server" ErrorMessage="Enter a valid email" ControlToValidate="tbEmail"  ForeColor="Red"
                  ValidationExpression="^(.+)@([^\.].*)\.([a-z]{2,})$"></asp:RegularExpressionValidator>
                <br />

               <asp:TextBox ID="tbcurpw" CssClass="form-control" placeholder="Current Passsword" runat="server" TextMode="Password"></asp:TextBox>
               <asp:RequiredFieldValidator ID="rfcurpw" runat="server" ErrorMessage="Please enter your email" ControlToValidate="tbcurpw" ForeColor="Red"></asp:RequiredFieldValidator>
			  
			    <asp:TextBox ID="tbnewpw" CssClass="form-control" placeholder="New Password" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfnewpass" runat="server" ErrorMessage="Please enter your password" ControlToValidate="tbnewpw" ForeColor="Red"></asp:RequiredFieldValidator>  
            
                <asp:TextBox ID="tbconnewpw" CssClass="form-control" placeholder="New Password" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfconnew" runat="server" ErrorMessage="Please enter your password" ControlToValidate="tbconnewpw" ForeColor="Red"></asp:RequiredFieldValidator>   	
                <asp:CompareValidator ID="cp1" runat="server" ErrorMessage="Passwords should match" ForeColor="Red" ControlToValidate="tbconnewpw" ControlToCompare="tbnewpw"></asp:CompareValidator>
            	 	
			<asp:Button ID="btnupdate" runat="server" CssClass="btn btn-lg btn-primary btn-block" Text="Update Password" OnClick="btnupdate_Click" /> 
             <br />
             <h6> <a href="Log.aspx" >Login</a>  </h6>
            		
		</div>			
	</div>
</div>
</asp:Content>
