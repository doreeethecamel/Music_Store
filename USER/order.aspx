<%@ Page Title="" Language="C#" MasterPageFile="~/USER/altj.Master" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="project.net.USER.order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="products" id="products">
        <div class="order-container">

             <h2 class="heading">My <span>Shopping Cart</span></h2>
        <asp:HyperLink runat="server" NavigateUrl="~/USER/products.aspx" ForeColor="White" ID="hplContinue" Height="50px" Width="50px">Continue Shopping</asp:HyperLink>
            <br /><Br />
            
            <asp:GridView ID="dgvOrder" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="218px" Width="717px" AutoGenerateColumns="False" OnRowDeleting="dgvOrder_RowDeleting" ShowFooter="True" EmptyDataText="You Have No Items In Your Shopping Cart.">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="Sr No">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pid" HeaderText="Product No">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="pimage" HeaderText="Product Image">
                        <ItemStyle HorizontalAlign="Center" Height="100px" Width="100px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="Pname" HeaderText="Product Name">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pprice" HeaderText="Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pquantity" HeaderText="Quantity">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ptotalprice" HeaderText="Total Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
                </Columns>
                <EmptyDataRowStyle BackColor="#FF9900" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="White" Font-Bold="True" ForeColor="#FF9933" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
             </asp:GridView>

              

              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [orderid], [productid], [productname], [price], [quantity], [orderdate] FROM [order]"></asp:SqlDataSource>

              

              <asp:Button ID="btnBuy" runat="server" Text="Buy" Height="42px" Width="168px" CssClass="btn" OnClick="btnBuy_Click" />
             <asp:Button ID="btnBack" runat="server" Text="Back" CssClass="btn" OnClick="btnBack_Click" Width="140px" />
        </div>
   
        </section>
</asp:Content>
