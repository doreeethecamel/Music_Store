<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="admin_home.aspx.cs" Inherits="project.net.admin.admin_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <div class="adm-contain">
            <!--home section-->
    <asp:Panel ID="pnlHome" runat="server">
        <section class="home" id="home">
        <div class="home-content">

            
            
            <p>Click the buttons below to perform an action.</p>

            
            <br />
            <asp:Button ID="btnreUser" class="btn" runat="server" Text="View Users" OnClick="btnreUser_Click"  />
            <br /><br />
            <asp:Button ID="btnreProduct" class="btn" runat="server" Text="View Products" OnClick="btnreProduct_Click" />
             <br /><br />
            <asp:Button ID="btnreUpdate" class="btn" runat="server" Text="Update Products" OnClick="btnreUpdate_Click" />
             <br /><br />
            <asp:Button ID="btnreOrder" class="btn" runat="server" Text="View Orders" OnClick="btnreOrder_Click"  />
            
            
        </div>
     </section>
    </asp:Panel> 
   
        </div>
         
    </div>       
    
   

</asp:Content>
