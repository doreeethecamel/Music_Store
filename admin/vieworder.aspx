<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="vieworder.aspx.cs" Inherits="project.net.admin.vieworder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <div class="adm-contain"> 
             <!--view orders-->
    <asp:Panel ID="pnlOrder" runat="server">
         <section class="order" id="order">
            <p>Click the button below to see all orders made</p>
            <br /><br />
            <asp:Button ID="btnOrder" runat="server" Text="See All Orders" OnClick="btnOrder_Click"  />
            <br /><br />
            <asp:GridView ID="dgvOrder" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="165px" Width="674px" >
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

    </section>
    </asp:Panel>
            </div>
        </div>
</asp:Content>
