<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ViewUsers.aspx.cs" Inherits="Nehashree.admin.ViewUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server"> 

         <div class="container" style="border:double;height:700px;width:1100px;margin-left:100px;margin-top:100px">

            <!-- grid view -->
            <div class="col-lg-6"  style="float:left;height:500px">
                <asp:GridView ID="GridView1" runat="server" Font-Bold="false" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="4" BorderStyle="None" DataKeyNames="U_Id" CellSpacing="2" Width="298px" AllowCustomPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">

                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399"></FooterStyle>

                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF"></HeaderStyle>

                    <PagerStyle HorizontalAlign="Left" BackColor="#99CCCC" ForeColor="#003399"></PagerStyle>

                    <RowStyle BackColor="White" ForeColor="#003399" />

                    <SelectedRowStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True"></SelectedRowStyle>

                    <SortedAscendingCellStyle BackColor="#EDF6F6"></SortedAscendingCellStyle>

                    <SortedAscendingHeaderStyle BackColor="#0D4AC4"></SortedAscendingHeaderStyle>

                    <SortedDescendingCellStyle BackColor="#D6DFDF"></SortedDescendingCellStyle>

                    <SortedDescendingHeaderStyle BackColor="#002876"></SortedDescendingHeaderStyle>

                </asp:GridView>

                <div style="margin-top:200px">
                    <asp:Button ID="btndel" runat="server" Text="Delete"  CssClass="btn btn-primary" OnClick="btndel_Click"/>
                </div>

            </div>

            <!-- grid view -->

            <!-- display data -->
            <div class="col-lg-6" style="float:right;height:600px">
                <div style="position: absolute; width: 400px; height:500px;margin-left:30px;margin-top:50px;border:ridge">
                    <asp:Label ID="lblshow" runat="server" Text="Users"  Enabled="False" Font-Bold="True" Font-Names="Georgia" Font-Size="Medium"></asp:Label>
                </div>
            </div>
            <!-- display data -->

        </div>
     </form>
</asp:Content>
