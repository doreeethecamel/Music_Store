<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="viewuser.aspx.cs" Inherits="project.net.admin.viewuser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <div class="adm-contain"> 
    <!--view user section-->
    <asp:Panel ID="pnlUser" runat="server">
        <section class="user" id="user">
            <p>Click the button below to see all registered users</p>
            <br /><br />
            <asp:Button ID="btnShowUser" runat="server" Text="See All Users" OnClick="btnShowUser_Click" CssClass="btn" />
            <br /><br />
            <asp:GridView ID="dgvUser" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="165px" Width="674px">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="txtCuser" runat="server"></asp:TextBox>
            <asp:Button ID="btnCget" runat="server" Text="Get Record" CssClass="btn" OnClick="btnCget_Click" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Full Name"></asp:Label>
            <asp:TextBox ID="txtCfname" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtCemail" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="txtCpword" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnUdelete" runat="server" OnClick="btnUdelete_Click" Text="Delete Record" />
            <br />
            <asp:Button ID="Button2" runat="server" CssClass="btn" OnClick="Button2_Click" Text="Update Record" />
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    </section>
    </asp:Panel>
            </div>
        </div>
</asp:Content>
