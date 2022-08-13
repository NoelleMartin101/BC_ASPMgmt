<%@ Page Title="CCAT" Language="C#" MasterPageFile="~/CrossFit.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

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
             <td style="width: 50%; vertical-align: top; padding-left: 25px" colspan="2">
                <div class="row">
                    <div class="mypanel panel-ATR" style="width: 90%; padding-bottom: 5px;">
                        <div style="text-align: left; font-size: 16px; height: 40px; display: flex; align-items: center; background-color: steelblue; color: white">
                            &nbsp;&nbsp;<i class="ion-android-clipboard"></i> &nbsp;&nbsp;
                            Next Competition Status
                        </div>
                        <div style="padding: 0px 0px 0px 30px; height: 200px">
                            <div class="row">
                                <div class="mypanel panel-ATR" style="width: 28%; padding-bottom: 5px;">
                                    <div style="text-align: left; font-size: 14px; height: 30px; display: flex; align-items: center; background-color: green; color: white">
                                        &nbsp;&nbsp;<i class="ion-android-clipboard"></i> &nbsp;&nbsp;
                                        Green
                                    </div>
                                    <div style=" height: 180px">
                                        <telerik:RadGrid ID="grid_CompetitionToDoLists_Green" PageSize="5" runat="server" AllowPaging="True" ShowStatusBar="false" GridLines="None"
                                            DataSourceID="SqlDs_CompetitionToDoLists_ViewAll_Green" Width="100%" AllowSorting="false">
                                            <MasterTableView AutoGenerateColumns="false" Font-Names="Arial" DataSourceID="SqlDs_CompetitionToDoLists_ViewAll_Green" AllowFilteringByColumn="false" ShowHeader="false">
                                                <Columns>
                                                    <telerik:GridTemplateColumn>
                                                        <ItemTemplate>
                                                            <i class="fa fa-dot-circle-o" aria-hidden="true"></i>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                                                    </telerik:GridTemplateColumn>
                                                    <telerik:GridTemplateColumn DataField="ListDetails" SortExpression="ListDetails">
                                                        <ItemTemplate>
                                                            <%# Eval("ListDetails")%>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                                                    </telerik:GridTemplateColumn>
                                                </Columns>
                                                <PagerStyle AlwaysVisible="false" />
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </div>
                                </div>
                                <div class="mypanel panel-ATR" style="width: 28%; padding-bottom: 5px;">
                                    <div style="text-align: left; font-size: 14px; height: 30px; display: flex; align-items: center; background-color: orange; color: white">
                                        &nbsp;&nbsp;<i class="ion-android-clipboard"></i> &nbsp;&nbsp;
                                        Amber
                                    </div>
                                    <div style=" height: 180px">
                                        <telerik:RadGrid ID="grid_CompetitionToDoLists_Amber" PageSize="5" runat="server" AllowPaging="True" ShowStatusBar="false" GridLines="None"
                                            DataSourceID="SqlDs_CompetitionToDoLists_ViewAll_Amber" Width="100%" AllowSorting="false">
                                            <MasterTableView AutoGenerateColumns="false" Font-Names="Arial" DataSourceID="SqlDs_CompetitionToDoLists_ViewAll_Amber" AllowFilteringByColumn="false" ShowHeader="false">
                                                <Columns>
                                                    <telerik:GridTemplateColumn>
                                                        <ItemTemplate>
                                                            <i class="fa fa-dot-circle-o" aria-hidden="true"></i>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                                                    </telerik:GridTemplateColumn>
                                                    <telerik:GridTemplateColumn DataField="ListDetails" SortExpression="ListDetails">
                                                        <ItemTemplate>
                                                            <%# Eval("ListDetails")%>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                                                    </telerik:GridTemplateColumn>
                                                </Columns>
                                                <PagerStyle AlwaysVisible="false" />
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </div>
                                </div>
                                <div class="mypanel panel-ATR" style="width: 28%; padding-bottom: 5px;">
                                    <div style="text-align: left; font-size: 14px; height: 30px; display: flex; align-items: center; background-color: red; color: white">
                                        &nbsp;&nbsp;<i class="ion-android-clipboard"></i> &nbsp;&nbsp;
                                        Red
                                    </div>
                                    <div style=" height: 180px">
                                        <telerik:RadGrid ID="grid_CompetitionToDoLists_Red" PageSize="5" runat="server" AllowPaging="True" ShowStatusBar="false" GridLines="None" DataSourceID="SqlDs_CompetitionToDoLists_ViewAll_Red" Width="100%" AllowSorting="false">
                                            <MasterTableView AutoGenerateColumns="false" Font-Names="Arial" DataSourceID="SqlDs_CompetitionToDoLists_ViewAll_Red" AllowFilteringByColumn="false" ShowHeader="false">
                                                <Columns>
                                                    <telerik:GridTemplateColumn>
                                                        <ItemTemplate>
                                                            <i class="fa fa-dot-circle-o" aria-hidden="true"></i>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                                                    </telerik:GridTemplateColumn>
                                                    <telerik:GridTemplateColumn DataField="ListDetails" SortExpression="ListDetails">
                                                        <ItemTemplate>
                                                            <%# Eval("ListDetails")%>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                                                    </telerik:GridTemplateColumn>
                                                </Columns>
                                                <PagerStyle AlwaysVisible="false" />
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </td>
            <%-- Next Comp - RAG Status --%>
           
            <td style="width: 25%; vertical-align: top; padding-left: 25px" align="center">
                <div class="row">
                    <%--Buttons--%>
                    <div class="col-sx-12">
                        <br />
                        <asp:LinkButton ID="lnk_CurrentRegisteredAthletes" runat="server" CssClass="btn btn-success" Width="75%" PostBackUrl="~/Admin_Users/RegisteredAthletes.aspx?returnurl=~/Admin_Users/Dashboard.aspx"><span class="glyphicon glyphicon-arrow-right"></span>&nbsp;&nbsp;All Currently Registered Althletes</asp:LinkButton>
                        <br />
                        <br />
                        <asp:LinkButton ID="lnk_CurrentRegisteredJudges" runat="server" CssClass="btn btn-success" Width="75%" PostBackUrl="~/Admin_Users/RegisteredJudges.aspx?returnurl=~/Admin_Users/Dashboard.aspx"><span class="glyphicon glyphicon-arrow-right"></span>&nbsp;&nbsp;All Registered Judges</asp:LinkButton>
                        <br />
                        <br />
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success" Width="75%" PostBackUrl="~/Admin_Users/RegisteredAthleteBenchmarks.aspx?returnurl=~/Admin_Users/Dashboard.aspx"><span class="glyphicon glyphicon-arrow-right"></span>&nbsp;&nbsp;All Athletes Benchmarks</asp:LinkButton>
                        <br />
                        <br />
                        <asp:LinkButton ID="lnk_CreateNewEvent" runat="server" CssClass="btn btn-success" Width="75%" PostBackUrl="~/Admin_Users/CreateNewWOD.aspx?returnurl=~/Admin_Users/Dashboard.aspx"><span class="glyphicon glyphicon-arrow-right"></span>&nbsp;&nbsp;Create New Event</asp:LinkButton>
                        <br />
                        <br />
                        <asp:LinkButton ID="lnk_ViewAndUpdateExistingEvents" runat="server" CssClass="btn btn-success" Width="75%" PostBackUrl="~/Admin_Users/ViewCompetitions.aspx?returnurl=~/Admin_Users/Dashboard.aspx"><span class="glyphicon glyphicon-arrow-right"></span>&nbsp;&nbsp;View/Update Existing Events</asp:LinkButton>
                        <br />
                        <br />
                        <asp:LinkButton ID="lnk_ToDoList" runat="server" CssClass="btn btn-success" Width="75%" PostBackUrl="~/Admin_Users/ToDo_List.aspx?returnurl=~/Admin_Users/Dashboard.aspx"><span class="glyphicon glyphicon-arrow-right"></span>&nbsp;&nbsp;TODO List</asp:LinkButton>
                        <br />
                        <br />
                    </div>
                </div>
            </td>
            <%-- Buttons --%>
            <td style="width: 25%; vertical-align: middle; padding-left: 25px" align="center" rowspan="2">
                <div style="padding: 0px 11px 8px 6px; height: 350px">
                     <asp:LinkButton runat="server" ID="LinkButton2" CssClass="nftBtn" PostBackUrl="~/Admin_Users/NethereumTest.aspx">
                        <div class="btnContent" style="font-size:34px;">
                            Mint Open NFT
                        </div>
                    </asp:LinkButton>
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
          
            <%-- Open Links --%>
        </tr>
        <tr>
            <td style="width: 25%; vertical-align: top; padding-left: 25px">
                <div class="row">
                    <div class="mypanel panel-ATR" style="width: 90%; padding-bottom: 5px;">
                        <div style="text-align: left; font-size: 16px; height: 40px; display: flex; align-items: center; background-color: steelblue; color: white">
                            &nbsp;&nbsp;<i class="ion-android-clipboard"></i> &nbsp;&nbsp;
                            Registered Athlete's Per Country
                        </div>
                        <div style=" height: 350px">
                            <asp:Chart runat="server" ID="crt_Countries" DataSourceID="SQLDs_RegisteredUsersCountries" Height="348px" Width="391px">
                                <Series>
                                    <asp:Series Name="Series1" ChartType="Pie" XValueMember="ChartData" YValueMembers="CountRegisteredUsers"></asp:Series>
                                </Series>
                                <ChartAreas>
                                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                </ChartAreas>
                                <Legends>
                                    <asp:Legend Enabled="false" Docking="Right" />
                                </Legends>
                            </asp:Chart>
                        </div>
                    </div>
                </div>
            </td>
            <td style="width: 25%; vertical-align: top; padding-left: 25px">
                <div class="row">
                    <div class="mypanel panel-ATR" style="width: 90%; padding-bottom: 5px;">
                        <div style="text-align: left; font-size: 16px; height: 40px; display: flex; align-items: center; background-color: steelblue; color: white">
                            &nbsp;&nbsp;<i class="ion-android-clipboard"></i> &nbsp;&nbsp;
                            Average Submitted Scores Per Division
                        </div>
                        <div style=" height: 350px">
                            <asp:Chart ID="Chart2" runat="server" DataSourceID="SQLDs_EventAverageScores" Height="342px" Width="349px">
                                <Series>
                                    <asp:Series Name="Series1" XValueMember="DivisionGroup" YValueMembers="AverageScore" ChartType="Bar"></asp:Series>
                                </Series>
                                <ChartAreas>
                                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                </ChartAreas>
                            </asp:Chart>
                        </div>
                    </div>
                </div>
            </td>
            <td style="width: 25%; vertical-align: top; padding-left: 25px">
                <div class="row">
                    <div class="mypanel panel-ATR" style="width: 90%; padding-bottom: 5px;">
                        <div style="text-align: left; font-size: 16px; height: 40px; display: flex; align-items: center; background-color: steelblue; color: white">
                            &nbsp;&nbsp;<i class="ion-android-clipboard"></i> &nbsp;&nbsp;
                            Open Registered Athletes Per Division
                        </div>
                        <div style=" height: 350px">
                            <asp:Chart runat="server" ID="Chart1" DataSourceID="SQLDs_RegisteredUsersDivisions" Height="341px" Width="376px">
                                <Series>
                                    <asp:Series Name="Series1" ChartType="Pie" XValueMember="ChartData" YValueMembers="CountRegisteredUsers"></asp:Series>
                                </Series>
                                <ChartAreas>
                                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                </ChartAreas>
                                <Legends>
                                    <asp:Legend Enabled="true" Docking="Right" />
                                </Legends>
                            </asp:Chart>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SQLDs_RegisteredUsersCountries" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="RegisterUsers_CountryChartData" SelectCommandType="StoredProcedure"/>
    <asp:SqlDataSource ID="SQLDs_EventAverageScores" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="RegisterUsers_EventScoresChartData" SelectCommandType="StoredProcedure" />
    <asp:SqlDataSource ID="SQLDs_RegisteredUsersDivisions" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="RegisterUsers_DivisionChartData" SelectCommandType="StoredProcedure"/>
    <asp:SqlDataSource ID="SqlDs_CompetitionToDoLists_ViewAll_Green" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="CompetitionToDoLists_ViewAll_Green" SelectCommandType="StoredProcedure" />
    <asp:SqlDataSource ID="SqlDs_CompetitionToDoLists_ViewAll_Amber" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="CompetitionToDoLists_ViewAll_Amber" SelectCommandType="StoredProcedure" />
    <asp:SqlDataSource ID="SqlDs_CompetitionToDoLists_ViewAll_Red" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="CompetitionToDoLists_ViewAll_Red" SelectCommandType="StoredProcedure" />
    <script>

        //let account;
        //const connectMetamaskReg = async () => {
        //    if (window.ethereum !== "underfined") {
        //        const accounts = await ethereum.request({ method: "eth_requestAccounts" });
        //        account = accounts[0];
        //        document.getElementById("userAreaRegister").innerHTML = `User Account: ${account}`;
        //    }
        //}
        //const connectMetamaskSub = async () => {
        //    if (window.ethereum !== "underfined") {
        //        const accounts = await ethereum.request({ method: "eth_requestAccounts" });
        //        account = accounts[0];
        //        document.getElementById("userAreaSumit").innerHTML = `User Account: ${account}`;
        //    }
        //}
    </script>
</asp:Content>
