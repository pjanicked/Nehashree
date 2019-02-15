<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Nehashree.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">

    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg-image">
                <div style="background-image: url('images/sbg.jpg');"></div>
                <div class="bg-image-overlay" style="background-color: rgba(12, 12, 12, 0.6);"></div>
            </div>
    <div class = "container" >
	<div class="wrapper">
		<div class="form-signin">       
		    <h3 class="form-signin-heading">Register on our website.. Its completely frre!!</h3>
			  <hr class="colorgraph"/><br/>
			  <asp:Label ID="lblMsg" runat="server"></asp:Label>
                <asp:TextBox ID="tbname" CssClass="form-control" placeholder="Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfname" runat="server" ErrorMessage="Please enter your name" ControlToValidate="tbname" ForeColor="Red"></asp:RequiredFieldValidator>

                <asp:TextBox ID="tbEmail" CssClass="form-control" placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfemail" runat="server" ErrorMessage="Please enter your email" ControlToValidate="tbEmail" ForeColor="Red"></asp:RequiredFieldValidator>
			     <asp:RegularExpressionValidator ID="expmail" runat="server" ErrorMessage="Enter a valid email" ControlToValidate="tbEmail"  ForeColor="Red"
                  ValidationExpression="^(.+)@([^\.].*)\.([a-z]{2,})$"></asp:RegularExpressionValidator>
			    <asp:TextBox ID="tbpass" CssClass="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfpass" runat="server" ErrorMessage="Please enter your password" ControlToValidate="tbpass" ForeColor="Red"></asp:RequiredFieldValidator>  
               	
                <asp:TextBox ID="tbcpass" CssClass="form-control" placeholder="Confirm Password" TextMode="Password" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="cvpw" runat="server" ErrorMessage="Passworsd should match!" ControlToCompare="tbpass" ControlToValidate="tbcpass" ForeColor="Red"></asp:CompareValidator>

                 <asp:TextBox ID="tbmob" CssClass="form-control" placeholder="Mobile Number" runat="server" TextMode="Phone"></asp:TextBox>
                 <asp:RangeValidator ID="rvmob" runat="server" ErrorMessage="Enter a valid number" MinimumValue="7000000000" MaximumValue="9999999999" ControlToValidate="tbmob" ForeColor="Red"></asp:RangeValidator>
                 <asp:RequiredFieldValidator ID="rfmob" runat="server" ErrorMessage="Please enter your mob number" ControlToValidate="tbmob" ForeColor="Red"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="expmob" runat="server" ErrorMessage="Enter a valid number" ControlToValidate="tbmob" ForeColor="Red"
                  ValidationExpression ="[789]\d{9}$"></asp:RegularExpressionValidator>
                <asp:TextBox ID="tbadd" CssClass="form-control input-sm" placeholder="Address" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfadd" runat="server" ErrorMessage="Please enter your address" ControlToValidate="tbadd" ForeColor="Red"></asp:RequiredFieldValidator>
            	 <br />
			<asp:Button ID="btnreg" runat="server" CssClass="btn btn-lg btn-primary btn-block" Text="Register" OnClick="btnreg_Click"/> 
            <br />
             <h5>Already have an account? </h5><a href="Log.aspx" >Login Now!</a> 
            			
		</div>			
	</div>
</div>
</asp:Content>
