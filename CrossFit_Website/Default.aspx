﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="App_Themes/DefaultTheme/Style.css" rel="stylesheet" type="text/css" />
    <title>CCAT</title>
    <link rel="shortcut icon" href="App_Themes/DefaultTheme/images/D.png" type="image/x-icon" />
    <link rel="icon" href="App_Themes/DefaultTheme/images/D.png" type="image/x-icon" />
</head>
<body style="background-image: url('images/Login_bg.png'); background-repeat: repeat; background-color:#fff; margin: 0 auto;">
    <form id="form1" runat="server">
        <div align="center" style="margin: 0 auto; padding-top: 60px;">
            <div style="width: 500px; height: 130px;">
               
                <span style="color: #000; font-size: 40px; font-weight: bold; font-family: Calibri;">CrossFit Competition & Athlete Tracker</span><br />
                <br />
            </div>
            <div>
                <table class="logInTable">
                    <tr>
                        <td>UserName:</td>
                        <td>
                            <asp:TextBox ID="txtUserName" runat="server" Width="400px" MaxLength="25" />
                        </td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td>
                            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" Width="400px" MaxLength="15" />                            
                        </td>
                    </tr>
                </table>
            </div>
            <div>              
                <asp:LinkButton runat="server" ID="btn_Connect" CssClass="btn btn-success" OnClick="btn_Connect_Click">
                    <div class="btnContent" style="font-size:44px;">
                        Login
                    </div>
                </asp:LinkButton>
            </div>
            <asp:Label ID="lblNotVerified" runat="server" Style="font-size: 38px; color:red;"/>            
        </div>
    </form>
</body>
</html>
