<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="updateproduct.aspx.cs" Inherits="project.net.admin.updateproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <div class="adm-contain">
            <br /><br />
            <br /><br />
            <br /><br />
              <!--update product-->
    <asp:Panel ID="pnlUpdate" runat="server">
        <section class="update" id="update">
            <asp:TextBox ID="txtPcode" placeholder="Enter Product Code" runat="server"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Product Code!" Text="*" ForeColor="#FF3300" ValidationGroup="VaG" ControlToValidate="txtPcode"></asp:RequiredFieldValidator>           <asp:Button ID="btnGet" runat="server" Text="Get Record" OnClick="btnGet_Click" />
            <br /><br />
            <asp:TextBox ID="txtType" placeholder="Enter Instrument Type" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Type of Instrument!" Font-Bold="False" Font-Overline="False" Text="*" ValidationGroup="VaG" ForeColor="#FF3300" ControlToValidate="txtType"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:TextBox ID="txtPname" placeholder="Enter Product Name" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Name of Product!" ForeColor="#FF3300" ValidationGroup="VaG" ControlToValidate="txtPname">*</asp:RequiredFieldValidator>
            <br /><br />
            <asp:TextBox ID="txtDes" placeholder="Enter Description" runat="server"></asp:TextBox>
            <br /><br />
            <asp:TextBox ID="txtPrice" placeholder="Enter Product Price" runat="server"></asp:TextBox>
            <br /><br />
            <asp:TextBox ID="txtQuan" placeholder="Enter Quantity of Product" runat="server"></asp:TextBox>
            <Br /><br />
             <div>
<label for="productImage">Image:</label>
                <asp:FileUpload ID="fupImage" runat="server" />
            </div>
            <br /><br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" ValidationGroup="VaG" />
            <br />

            <asp:Button ID="btnInsert" runat="server" Text="Insert Product to record" OnClick="btnInsert_Click" ValidationGroup="VaG" />
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" ValidationGroup="VaG"  />

            <br />
            <br />
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete product from record" ValidationGroup="VaG" />
            <br />
            <br />
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update Product in record" ValidationGroup="VaG" />

            <Br /><br />
            <asp:Label ID="lblSuccess" runat="server" Text="Label" ForeColor="Green"></asp:Label>
             <asp:GridView ID="dgvUpdate" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="165px" Width="674px">
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
