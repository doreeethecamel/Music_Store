<%@ Page Title="" Language="C#" MasterPageFile="~/USER/altj.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="project.net.USER.products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!--<section class="prod" id="prod">
    <h2 class="heading">Available <span>Products</span></h2>
    <div class="prod-container">
        <div class="prod-box">
            <i class='bx bx-code-alt'></i>
            <h3>Saxophone</h3>
            <p>No we don’t mean that it’s scary free jazz, but rather that going along costs nothing, nada, zero, zilch. Friday’s first act is on at 7pm, while the Saturday and Sunday programmes start from 1.30pm and continue through
                till late evening.</p>
            <a href="#" class="btn">Buy</a>
        </div>
        
        <div class="prod-box">
            <i class='bx bx-code-alt'></i>
            
            <a href="#" class="btn">Buy</a>
        </div>

        <div class="prod-box">
            <i class='bx bx-code-alt'></i>
            <h3>Violin</h3>
            <p>Listen to music by the Anbessa Orchestra, who are Israeli musicians based in Brooklyn (and now L.A.) who are fans of the “golden age” of Ethiopian music. From their most recent record, Negestat, which means
              Kings in Amharic, hear the Ethio-groove laden title track.</p>
            <a href="#" class="btn">Buy</a>
        </div>
    </div>
        </section>-->

    <br />
    <br /><br />
    <br /><br />
    <br /><br />
    <br /><br />

    <br /><br />
    <br /><br />

    <table>
        <tr>
            <td style="text-align:left;">
                <asp:TextBox ID="txtSearch" runat="server" Height="34px" Width="243px"></asp:TextBox><asp:ImageButton runat="server" Height="30px" ImageUrl="~/images/search.png" Width="30px" ID="imgbtnSearch" OnClick="imgbtnSearch_Click"  />
            </td>
        </tr>
       
        
    </table>

    <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="pcode" DataSourceID="SqlDataSource1" Height="293px" RepeatDirection="Horizontal" Width="310px" RepeatColumns="6" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <table>
                <tr>
                    <td style="text-align:center; background-color:#000">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("pname") %>' Font-Bold="True" ForeColor="White" Font-Size="Medium"></asp:Label>
                        
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center">
                        <asp:Image ID="Image1" runat="server" Height="279px" Width="278px" BorderColor="#FF9900" BorderWidth="1px"  ImageUrl='<%# Eval("image") %>'/>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center; background-color:#000">
                        <asp:Label ID="Label2" runat="server" Text="Price: Ksh" Font-Bold="True" ForeColor="White" Font-Size="Medium"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>' Font-Bold="True" ForeColor="White" Font-Size="Medium"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center">Quantity
                        <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" ImageUrl="../images/Add-To-Cart-Button-Transparent-PNG.png" Width="160px" CommandArgument='<%# Eval("pcode") %>' CommandName="AddToCart"/>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <br /><br />
    
    <asp:Button ID="btnBack" runat="server" Text="Back" CssClass="btn" Height="38px" OnClick="btnBack_Click" Width="256px" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [pcode], [pname], [type], [description], [image], [price] FROM [product]"></asp:SqlDataSource>

</asp:Content>


