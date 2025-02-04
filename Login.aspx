<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="KIPM.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width,initial-scale=1" />
<title>Login</title>
<link rel="stylesheet" href="Stylesheet/Home2.css" />
    
    <style type="text/css">
        .auto-style1 {
            height: 46px;
            font-size:20px;
            color:black;
        }
    </style>
    
</head>
<body>
    
    <form id="form1" runat="server">
              <div class="header">
          <img src="Images/logo.png" alt="Logo" />
         <h1>KIPM Fee Management System</h1>
</div>
   
               <div class="Table">
                  
                  <table>
                       <tr>
                           <td class="auto-style1">
                               User ID:
                           </td>
                           <td class="auto-style1">
                               <asp:TextBox ID="txtUserID" runat="server" CssClass="input-field"></asp:TextBox>
                           </td>
                       </tr>
                       <tr>
                           <td class="auto-style1">
                               Password:
                           </td>
                           <td>
                               <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="input-field"></asp:TextBox>
                           </td>
                       </tr>
                      <tr>
                          <td colspan="2"><asp:Button ID="btnLogin" Text="Login" OnClick="btnLogin_Click" runat="server" CssClass="login-button" /></td>
                      </tr>
                      <div id="message">
                      <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                          </div>
                   </table>
               </div>
   
      
  
    </form>
        
</body>
</html>
