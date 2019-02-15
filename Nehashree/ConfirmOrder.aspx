<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="ConfirmOrder.aspx.cs" Inherits="Nehashree.ConfirmOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

     <p style="margin-top:200px;margin-left:350px;font:bold;font-family:'Sitka Small';font-size:x-large">
        Your Order has been placed successfully ! You have to pay after the event! <br /> <br />
          <asp:Label ID="Label1" runat="server"></asp:Label> <br />
           <a href="Home.aspx">  Place one more Order </a>
    </p>
</asp:Content>
