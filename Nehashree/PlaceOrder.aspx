<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="Nehashree.PlaceOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="bg-image">
                <div style="background-image: url('images/sbg.jpg');"></div>
                <div class="bg-image-overlay" style="background-color: rgba(12, 12, 12, 0.6);"></div>
            </div>
    <div class = "container" >
	<div class="wrapper">
		<div class="form-signin">       
		    <h3 class="form-signin-heading">Place Your Order Here!</h3>
			  <hr class="colorgraph"/><br/>
			  <asp:Label ID="lblMsg" runat="server"></asp:Label>
                <asp:TextBox ID="tbname" CssClass="form-control" placeholder="Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfname" runat="server" ErrorMessage="Please enter your name" ValidationGroup="main" ControlToValidate="tbname" ForeColor="Red"></asp:RequiredFieldValidator>

                <asp:TextBox ID="tbEmail" CssClass="form-control" placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfemail" runat="server" ErrorMessage="Please enter your email" ValidationGroup="main" ControlToValidate="tbEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="expmail" runat="server" ErrorMessage="Enter a valid email" ControlToValidate="tbEmail"  ForeColor="Red"
                  ValidationExpression="^(.+)@([^\.].*)\.([a-z]{2,})$"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="lblevent" runat="server" Text="Event" CssClass="form-control-label"></asp:Label>
                <asp:DropDownList ID="ddlevent" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlevent_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem Value="Wedding">Wedding</asp:ListItem>
                    <asp:ListItem Value="Birthday">Birthday</asp:ListItem>
                    <asp:ListItem Value="Corporate">Corporate</asp:ListItem>
                </asp:DropDownList> <br />
                

                <asp:Label ID="lblopt" runat="server" Text="Option" CssClass="form-control-label"></asp:Label>
                <asp:DropDownList ID="ddlopt" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlopt_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem Value="Photography">Photography</asp:ListItem>
                    <asp:ListItem Value="Videography">Videography</asp:ListItem>
                    <asp:ListItem Value="Both">Both</asp:ListItem>
                </asp:DropDownList> <br />

                 <asp:Label ID="lblprice" runat="server" CssClass="form-control-label" Text="Price"></asp:Label>
                 <asp:TextBox ID="tbprice" CssClass="form-control" runat="server"></asp:TextBox> <br />

                 <asp:TextBox ID="tbmob" CssClass="form-control" placeholder="Mobile Number" runat="server" TextMode="Phone"></asp:TextBox>
                
                 <asp:RegularExpressionValidator ID="expmob" runat="server" ErrorMessage="Enter a valid number" ControlToValidate="tbmob" ForeColor="Red"
                  ValidationExpression ="[789]\d{9}$"></asp:RegularExpressionValidator>           
                 <asp:RequiredFieldValidator ID="rfmob" runat="server" ErrorMessage="Please enter your mob number" ControlToValidate="tbmob" ForeColor="Red" ValidationGroup="main"></asp:RequiredFieldValidator>
                 
                 <asp:Label ID="lblcal" runat="server" CssClass="form-control-label" Text="Event Date"></asp:Label>
                 <asp:TextBox ID="tbcal" runat="server"></asp:TextBox> <br />
                 <br /><asp:Calendar ID="cal" runat="server" OnSelectionChanged="cal_SelectionChanged"></asp:Calendar> <br />
                
                <asp:TextBox ID="tbadd" CssClass="form-control input-sm" placeholder="Your Event Address" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfadd" runat="server" ErrorMessage="Please enter your address" ControlToValidate="tbadd" ForeColor="Red" ValidationGroup="main"></asp:RequiredFieldValidator>
            	 <br />
                <asp:TextBox ID="tbpin" CssClass="form-control input-sm" placeholder="Pin Code of Event Venue" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfpin" runat="server" ErrorMessage="Please enter your pin code" ControlToValidate="tbpin" ForeColor="Red" ValidationGroup="main"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="exppin" runat="server" ErrorMessage="Enter a valid number" ControlToValidate="tbpin" ForeColor="Red"
                  ValidationExpression ="\d{6}$"></asp:RegularExpressionValidator>

			<asp:Button ID="btnorder" runat="server" CssClass="btn btn-lg btn-primary btn-block" Text="Place Order" OnClick="btnorder_Click"/> 
            <br />
              
            			
		</div>			
	</div>
</div>
</asp:Content>
