<%@ Page Title="" Language="C#" MasterPageFile="~/USER/altj.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="project.net.USER.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!---account section---->
    <asp:Panel ID="Panel1" runat="server">
        <!--login-->
        <div class="wrapper">
        <div class="form-box login">
            <h2>Login</h2>
           
       <div class="input-box">
           <span class="icon"><ion-icon name="person"></ion-icon></span>
               
           
<asp:TextBox ID="txtUname" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ErrorMessage="Username Required" Text="*" ValidationGroup="gv" ControlToValidate="txtUname"></asp:RequiredFieldValidator>
           <label>Username</label>
       </div>
               <div class="input-box">
                    <span class="icon"><ion-icon name="lock-closed"></ion-icon></span>
                   <asp:TextBox ID="txtPword" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red" ControlToValidate="txtPword" ErrorMessage="Password Required" ValidationGroup="gv" Text="*"></asp:RequiredFieldValidator> 
                   <label>Password</label>
               </div>

               
       <div class="remember-forgot">
           <label><input type="checkbox" />Remember Me</label>
           <a href="#">Forgot Password?</a>
       </div>
                 <asp:Button ID="btnlogin" runat="server" Text="Login" ValidationGroup="vg" OnClick="btnlogin_Click" CssClass="btn"  /><asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red" ValidationGroup="gv" />
            <asp:Label ID="lblError" runat="server" Text="Label" ForeColor="#FF3300" Font-Size="Medium"></asp:Label>
   <div class="login-register">
       <p>Don't have an account?<asp:LinkButton ID="link2reg" runat="server" OnClick="link2reg_Click">Register</asp:LinkButton></p>
   </div>
        </div>
    </div>
    </asp:Panel>
   
    
    <!--register-->

    <br /><asp:Panel ID="Panel2" runat="server">
        
       <div class="wrapper">
         <div class="form-box register">
            <h2>Create an Account</h2>
           
       <div class="input-box">
           <span class="icon"><ion-icon name="person"></ion-icon></span>
               
           
<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="Username Required" Text="*" ValidationGroup="vg" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
           <label>Username</label>
       </div>
             
             <div class="input-box">
           <span class="icon"><ion-icon name="person"></ion-icon></span>
           <asp:TextBox ID="txtFname" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red" ErrorMessage="Full Name required" Text="*" ValidationGroup="vg" ControlToValidate="txtFname"></asp:RequiredFieldValidator>
           <label>Full Name</label>
       </div>
               
            
              

             <div class="input-box">
           <span class="icon"><ion-icon name="mail"></ion-icon></span>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email Required" ForeColor="Red" ControlToValidate="txtEmail" Text="*" ValidationGroup="vg"></asp:RequiredFieldValidator>
                 
           <label>Email</label>
       </div>
             

             <div class="input-box">
                    <span class="icon"><ion-icon name="lock-closed"></ion-icon></span>
                   <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Password Required" ForeColor="Red" Text="*" ValidationGroup="vg" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                   <label>Password</label>
               </div>
                
             <div class="input-box">
                    <span class="icon"><ion-icon name="lock-closed"></ion-icon></span>
                     <asp:TextBox ID="txtConfirm" runat="server"></asp:TextBox>
                   <label>Confirm Password</label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="You must confirm your password!" ForeColor="Red" ControlToValidate="txtConfirm">*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirm" ErrorMessage="Password and Compare Password must be same!" ForeColor="Red" ValidationGroup="vg">*</asp:CompareValidator>
        
               </div>
               
      
            <asp:Button ID="btnReg" runat="server" Text="Register" ValidationGroup="vg" OnClick="btnReg_Click" CssClass="btn" /> <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="vg" />
             <asp:Label ID="lblRegSuccess" runat="server" Text="Label" ForeColor="#33CC33"></asp:Label>
             <asp:LinkButton ID="lbnLogin" runat="server" OnClick="lbnLogin_Click">Click here to Login</asp:LinkButton>
             
             <div class="login-register">
       <p>Already have an account?
          <!--fix this--> <asp:LinkButton ID="link2log" runat="server" OnClick="link2log_Click">Login</asp:LinkButton>
                 </p>
   </div>
             </div>   
     </div>
        </asp:Panel>
</asp:Content>
