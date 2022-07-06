<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="App_Themes/DefaultTheme/Style.css" rel="stylesheet" type="text/css" />
    <title>CCAT</title>
    <link rel="shortcut icon" href="App_Themes/DefaultTheme/images/D.png" type="image/x-icon" />
    <link rel="icon" href="App_Themes/DefaultTheme/images/D.png" type="image/x-icon" />
</head>
<body style="background-image: url('images/Login_bg.png'); background-repeat: repeat; background-color:#BDA0CB; margin: 0 auto;">
    <form id="form1" runat="server">
        <div align="center" style="margin: 0 auto; padding-top: 60px;">
            <div style="width: 500px; height: 130px;">
                <span style="color: #068481; font-size: 70px; font-weight: bold; font-family: Arial;">CCAT</span>
                <br />
                <br />
                <span style="color: #068481; font-size: 20px; font-weight: bold; font-family: Calibri;">CrossFit Competition & Appplication Tracker</span><br />
                <br />
            </div>
            <div>
                <asp:LinkButton runat="server" ID="btn_Connect" CssClass="connectBtn" OnClick="btn_Connect_Click">
                    <div class="btnContent" style="font-size:44px;">
                        Login
                    </div>
                </asp:LinkButton>
            </div>
            <asp:Label ID="lbl_StaffNumber" runat="server" Style="font-size: 14px; color: #000;" FormatString="Logging in as  &nbsp;&nbsp;<b>{0}</b>" />            
        </div>
    </form>
</body>
</html>
