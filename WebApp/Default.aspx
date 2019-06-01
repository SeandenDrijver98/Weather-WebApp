<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title> Weather Watcher </title>
    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/logo.ico" rel="shortcut icon" type="image/x-icon" />

</head>
<body>
      <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" runat="server" href="~/">Weather Watcher</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class ="rightLink"><a runat="server" href="~/">Sign In</a></li>
                    </ul>
                </div>
            </div>
        </div>
    <div class="jumbotron">
        <h1>Welcome to Weather Watcher on the Web</h1>
        </div>
    <form id="defaultForm" runat="server">
         <div class="form">
        <h2>Login</h2>
  <div class="form-group">
    <label for="loginEmail">Email address </label>&nbsp;
      <asp:TextBox ID="loginEmail" runat="server"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="loginPassword">Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>&nbsp;
      <asp:TextBox ID="loginPassword" runat="server" TextMode="Password"></asp:TextBox>
      </div>
      <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
  
</div>
     
<div class="form">
        <h2>Sign Up</h2>
  <div class="form-group">
    <label for="signUpEmail">Email address </label>&nbsp;
      <asp:TextBox ID="signUpEmail" runat="server"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="loginPassword">Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>&nbsp;
      <asp:TextBox ID="signUpPassword" runat="server" TextMode="Password"></asp:TextBox>
       </div>
           
           <div class="form-group">
          <label for="ddPermissions">User Type </label>&nbsp;<br/>
            <asp:DropDownList ID="ddPermissions" runat="server">
          <asp:ListItem>General User</asp:ListItem>
          <asp:ListItem Value="Admin">Forecaster</asp:ListItem>
      </asp:DropDownList>
               </div>
     
      <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" />
 
    </div>
    </form>


</body>

</html>
