<%@ Page Title="CCAT" Language="C#" MasterPageFile="~/CrossFit.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .RadGrid {
            border-radius: 5px;
            overflow: hidden;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">

    <table style="width: 100%; border: none !important">
        <tr>
            <td style="width: 25%; vertical-align: top; padding-left: 25px">
                <div class="row">
                    <%--Status--%>
                    <div class="mypanel panel-ATR" style="width: 90%; padding-bottom: 5px;">
                        <div style="text-align: left; font-size: 16px; height: 40px; display: flex; align-items: center; background-color: steelblue; color: white">
                            &nbsp;&nbsp;<i class="ion-android-clipboard"></i> &nbsp;&nbsp;
                            Open Details
                        </div>
                        <div style="padding: 0px 11px 8px 6px;">
                            <div class="mypanel totalEventsPanel row" runat="server" visible="true">
                                <table>
                                    <tr>
                                        <td style="width: 330px; padding: 0 7px;">
                                            <a style="text-decoration: none;">
                                                <span class="grayTitle eventsTitle">Registered</span>
                                            </a>
                                        </td>
                                        <td style="width: 120px; padding: 0 7px; text-align: right;">
                                            <a style="text-decoration: none;">
                                                <asp:Label class="grayTitle eventsTitle" ID="lblRegistered" runat="server" Text="0" />
                                            </a>
                                        </td>
                                        <td style="width: 80px; padding: 0 7px; text-align: right;">
                                            <asp:Button runat="server" ID="btnRegistered" CssClass="weeklylabel greenLabel1 btn" Text="View" Enabled="false" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="mypanel totalEventsPanel row">
                                <table>
                                    <tr>
                                        <td style="width: 330px; padding: 0 7px;">
                                            <a style="text-decoration: none;">
                                                <span class="grayTitle eventsTitle">Submitted 22.1 Score</span>
                                            </a>
                                        </td>
                                        <td style="width: 120px; padding: 0 7px; text-align: right;">
                                            <a style="text-decoration: none;">
                                                <asp:Label class="grayTitle eventsTitle" ID="lblSubmittedScore1" runat="server" Text="0" />
                                            </a>
                                        </td>
                                        <td style="width: 80px; padding: 0 7px; text-align: right;">
                                            <asp:Button runat="server" ID="btnSubmittedScore" CssClass="weeklylabel greenLabel1 btn" Text="View" Enabled="false" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="mypanel totalEventsPanel row">
                                <table>
                                    <tr>
                                        <td style="width: 330px; padding: 0 7px;">
                                            <a style="text-decoration: none;">
                                                <span class="grayTitle eventsTitle">Submitted 22.2 Score</span>
                                            </a>
                                        </td>
                                        <td style="width: 120px; padding: 0 7px; text-align: right;">
                                            <a style="text-decoration: none;">
                                                <asp:Label class="grayTitle eventsTitle" ID="lblSubmittedScore2" runat="server" Text="0" />
                                            </a>
                                        </td>
                                        <td style="width: 80px; padding: 0 7px; text-align: right;">
                                            <asp:Button runat="server" ID="btnSubmittedScore2" CssClass="weeklylabel greenLabel1 btn" Text="View" Enabled="false" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="mypanel totalEventsPanel row">
                                <table>
                                    <tr>
                                        <td style="width: 330px; padding: 0 7px;">
                                            <a style="text-decoration: none;">
                                                <span class="grayTitle eventsTitle">Submitted 22.3 Score</span>
                                            </a>
                                        </td>
                                        <td style="width: 120px; padding: 0 7px; text-align: right;">
                                            <a style="text-decoration: none;">
                                                <asp:Label class="grayTitle eventsTitle" ID="lblSubmittedScore3" runat="server" Text="0" />
                                            </a>
                                        </td>
                                        <td style="width: 80px; padding: 0 7px; text-align: right;">
                                            <asp:Button runat="server" ID="btnSubmittedScore3" CssClass="weeklylabel greenLabel1 btn" Text="View" Enabled="false" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="mypanel totalEventsPanel row">
                                <table>
                                    <tr>
                                        <td style="width: 330px; padding: 0 7px;">
                                            <a style="text-decoration: none;">
                                                <span class="grayTitle eventsTitle">Open Leaderboard</span>
                                            </a>
                                        </td>
                                        <td style="width: 120px; padding: 0 7px; text-align: right;">
                                            <a style="text-decoration: none;">
                                                <asp:Label class="grayTitle eventsTitle" ID="lblLeaderBoard" runat="server" Text="0" />
                                            </a>
                                        </td>
                                        <td style="width: 80px; padding: 0 7px; text-align: right;">
                                            <asp:Button runat="server" ID="btnLeaderBoard" CssClass="weeklylabel greenLabel1 btn" Text="View" Enabled="false" />
                                        </td>
                                    </tr>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>
            </td>
            <%-- Open Links --%>

            <td style="width: 25%; vertical-align: top; padding-left: 25px" align="center">
                <div class="row">
                    <%--Buttons--%>
                    <div class="col-sx-12">
                        <br />
                        <asp:LinkButton ID="lnk_CurrentRegisteredUsers" runat="server" CssClass="btn btn-success" Width="250px" PostBackUrl="~/Admin_Users/CurrentRegisteredUsers.aspx?returnurl=~/Admin_Users/Dashboard.aspx"><span class="glyphicon glyphicon-arrow-right"></span>&nbsp;&nbsp;All Currently Registered Athletes</asp:LinkButton>
                        <br />
                        <br />
                        <asp:LinkButton ID="lnk_CreateNewWOD" runat="server" CssClass="btn btn-success" Width="250px" PostBackUrl="~/Admin_Users/CreateNewWOD.aspx?returnurl=~/Admin_Users/Dashboard.aspx"><span class="glyphicon glyphicon-arrow-right"></span>&nbsp;&nbsp;Create New WOD</asp:LinkButton>
                        <br />
                        <br />
                        <asp:LinkButton ID="lnk_PreviousYearsLeaderBoards" runat="server" CssClass="btn btn-success" Width="250px" PostBackUrl="~/Admin_Users/CurrentRegisteredUsers.aspx?returnurl=~/Admin_Users/Dashboard.aspx"><span class="glyphicon glyphicon-arrow-right"></span>&nbsp;&nbsp;Previous Leader Boards</asp:LinkButton>
                        <br />
                        <br />
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success" Width="250px" PostBackUrl="~/Admin_Users/CurrentRegisteredUsers.aspx?returnurl=~/Admin_Users/Dashboard.aspx"><span class="glyphicon glyphicon-arrow-right"></span>&nbsp;&nbsp;Previous Leader Boards</asp:LinkButton>
                        <br />
                        <br />
                        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-success" Width="250px" PostBackUrl="~/Admin_Users/CurrentRegisteredUsers.aspx?returnurl=~/Admin_Users/Dashboard.aspx"><span class="glyphicon glyphicon-arrow-right"></span>&nbsp;&nbsp;Previous Leader Boards</asp:LinkButton>
                        <br />
                    </div>
                </div>
            </td>
            <%-- Buttons --%>
            <td style="width: 50%; vertical-align: top; padding-left: 25px" colspan="2">
                <div class="row">
                    <div class="mypanel panel-ATR" style="width: 90%; padding-bottom: 5px;">
                        <div style="text-align: left; font-size: 16px; height: 40px; display: flex; align-items: center; background-color: steelblue; color: white">
                            &nbsp;&nbsp;<i class="ion-android-clipboard"></i> &nbsp;&nbsp;
                            Next Competition Status - Semi Finals
                        </div>
                        <div style="padding: 0px 11px 8px 50px; height: 200px">
                            <div class="row">
                                <div class="mypanel panel-ATR" style="width: 28%; padding-bottom: 5px;">
                                    <div style="text-align: left; font-size: 14px; height: 30px; display: flex; align-items: center; background-color: green; color: white">
                                        &nbsp;&nbsp;<i class="ion-android-clipboard"></i> &nbsp;&nbsp;
                                        Green
                                    </div>
                                    <div style="padding: 0px 11px 8px 6px; height: 180px">
                                        <ul>
                                            <li style="font-size: 12pt">Prize fund ready</li>
                                            <li style="font-size: 12pt">Events 1,2,3,4 ready</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="mypanel panel-ATR" style="width: 28%; padding-bottom: 5px;">
                                    <div style="text-align: left; font-size: 14px; height: 30px; display: flex; align-items: center; background-color: orange; color: white">
                                        &nbsp;&nbsp;<i class="ion-android-clipboard"></i> &nbsp;&nbsp;
                                        Amber
                                    </div>
                                    <div style="padding: 0px 11px 8px 6px; height: 180px">
                                        <ul>
                                            <li style="font-size: 12pt">Team Event 3 - Sourcing 25kg bales</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="mypanel panel-ATR" style="width: 28%; padding-bottom: 5px;">
                                    <div style="text-align: left; font-size: 14px; height: 30px; display: flex; align-items: center; background-color: red; color: white">
                                        &nbsp;&nbsp;<i class="ion-android-clipboard"></i> &nbsp;&nbsp;
                                        Red
                                    </div>
                                    <div style="padding: 0px 11px 8px 6px; height: 180px">
                                        <ul>
                                            <li style="font-size: 12pt">Only 5 WODs Completed</li>
                                            <li style="font-size: 12pt">SF Event 5 Location Required</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </td>
            <%-- Next Comp - RAG Status --%>
        </tr>
        <tr>
            <td style="width: 25%; vertical-align: top; padding-left: 25px">
                <div class="row">
                    <div class="mypanel panel-ATR" style="width: 90%; padding-bottom: 5px;">
                        <div style="text-align: left; font-size: 16px; height: 40px; display: flex; align-items: center; background-color: steelblue; color: white">
                            &nbsp;&nbsp;<i class="ion-android-clipboard"></i> &nbsp;&nbsp;
                            Open Divisions Chart
                        </div>
                        <div style="padding: 0px 11px 8px 6px; height: 350px">
                            <img src="../images/OpenAthleteChart.PNG" width="95%" height="325px" />
                        </div>
                    </div>

                </div>
            </td>
            <td style="width: 25%; vertical-align: top; padding-left: 25px">
                <div class="row">
                    <div class="mypanel panel-ATR" style="width: 90%; padding-bottom: 5px;">
                        <div style="text-align: left; font-size: 16px; height: 40px; display: flex; align-items: center; background-color: steelblue; color: white">
                            &nbsp;&nbsp;<i class="ion-android-clipboard"></i> &nbsp;&nbsp;
                            Open Details
                        </div>
                        <div style="padding: 0px 11px 8px 6px; height: 350px">
                            <img src="../images/CaptureBar.PNG"  width="95%" height="325px"/>
                        </div>
                    </div>

                </div>
            </td>
            <td style="width: 25%; vertical-align: top; padding-left: 25px">
                <div class="row">
                    <div class="mypanel panel-ATR" style="width: 90%; padding-bottom: 5px;">
                        <div style="text-align: left; font-size: 16px; height: 40px; display: flex; align-items: center; background-color: steelblue; color: white">
                            &nbsp;&nbsp;<i class="ion-android-clipboard"></i> &nbsp;&nbsp;
                            Open Details
                        </div>
                        <div style="padding: 0px 11px 8px 6px; height: 350px">
                            <img src="../images/Capture.PNG" width="95%" height="325px" />
                        </div>
                    </div>

                </div>
            </td>
            <td style="width: 25%; vertical-align: central; padding-left: 25px">
                <div style="padding: 0px 11px 8px 6px; height: 350px">
                    <asp:LinkButton runat="server" ID="btnQFNft" CssClass="nftBtn">
                        <div class="btnContent" style="font-size:34px;">
                            Mint QF NFT
                        </div>
                    </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="btnSFNft" CssClass="nftBtn">
                        <div class="btnContent" style="font-size:34px;">
                            Mint SF NFT
                        </div>
                    </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="btnGamesNft" CssClass="nftBtn">
                        <div class="btnContent" style="font-size:34px;">
                            Mint Games NFT
                        </div>
                    </asp:LinkButton>
                    

                </div>
            </td>

        </tr>
    </table>
</asp:Content>
