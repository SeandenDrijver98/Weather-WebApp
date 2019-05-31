<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h1>Welcome to Weather Watcher on the Web</h1>
   
  <div class="form-group">
    <label for="loginEmail">Email address </label>&nbsp;
      <asp:TextBox ID="loginEmail" runat="server"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="loginPassword">Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>&nbsp;
      <asp:TextBox ID="loginPassword" runat="server"></asp:TextBox>
      <br />
      <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
  </div>
    </form>

</body>
</html>
