<%@ Page Title="Registered Users List" Language="C#" MasterPageFile="~/CrossFit.master" AutoEventWireup="true" CodeFile="RegisteredAthletes.aspx.cs" Inherits="RegisteredAthletes" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="pageHeader" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="pageContent" ContentPlaceHolderID="body" runat="Server">
    <div class="row managementPageHeader">
        <div class="col-lg-12 adminButtons">
            <asp:LinkButton runat="server" ID="btn_Back" Style="float: left;" CausesValidation="false"> <span class="glyphicon glyphicon-arrow-left"></span>&nbsp; Back</asp:LinkButton>
            <p><b>&nbsp;&nbsp; Registered Athletes</b></p>
        </div>
    </div>
    <div>
        <asp:Label ID="lbl_Msg" runat="server" EnableViewState="false" CssClass="msgbox" Visible="false" />
    </div>
    <div>
        <br />
        <telerik:RadGrid ID="grid_RegisteredUsers" PageSize="20" runat="server" AllowPaging="True" ShowStatusBar="True" GridLines="None"
            DataSourceID="SqlDs_RegisteredUsers_ViewAll" Width="100%" AllowSorting="True">
            <GroupingSettings CaseSensitive="false" />
            <MasterTableView AutoGenerateColumns="false" Font-Names="Arial" DataSourceID="SqlDs_RegisteredUsers_ViewAll" DataKeyNames="UserID" AllowFilteringByColumn="false">
                <CommandItemSettings ShowExportToExcelButton="false" ShowRefreshButton="false" ShowAddNewRecordButton="true" />
                <NestedViewTemplate>
                    <table class="SpaciousHalf" style="width:80%">
                        <tr>
                            <td>Fran:</td>
                            <td>
                                <asp:Label ID="fran" runat="server" Text='<%# Eval("Fran")%>' />
                            </td>
                            <td>Max Pull-Ups:</td>
                            <td>
                                <asp:Label ID="maxPullUps" runat="server" Text='<%# Eval("MaxPullUps")%>' />
                            </td>
                            <td>Grace:</td>
                            <td>
                                <asp:Label ID="grace" runat="server" Text='<%# Eval("Grace")%>' />
                            </td>
                            <td>Clean:</td>
                            <td>
                                <asp:Label ID="clean" runat="server" Text='<%# Eval("Clean")%>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Helen:</td>
                            <td>
                                <asp:Label ID="helen" runat="server" Text='<%# Eval("Helen")%>' />
                            </td>
                            <td>Squat:</td>
                            <td>
                                <asp:Label ID="squat" runat="server" Text='<%# Eval("Squat")%>' />
                            </td>
                            <td>Fight Gone Bad:</td>
                            <td>
                                <asp:Label ID="fightGoneBad" runat="server" Text='<%# Eval("FightGoneBad")%>' />
                            </td>
                            <td>Snatch:</td>
                            <td>
                                <asp:Label ID="snatch" runat="server" Text='<%# Eval("Snatch")%>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Filthy 50:</td>
                            <td>
                                <asp:Label ID="filthy50" runat="server" Text='<%# Eval("Filthy50")%>' />
                            </td>
                            <td>Deadlift:</td>
                            <td>
                                <asp:Label ID="deadlift" runat="server" Text='<%# Eval("Deadlift")%>' />
                            </td>
                            <td>Run 5K:</td>
                            <td>
                                <asp:Label ID="run5k" runat="server" Text='<%# Eval("Run5k")%>' />
                            </td>
                            <td>Sprint</td>
                            <td>
                                <asp:Label ID="sprint400" runat="server" Text='<%# Eval("Sprint400m")%>' />
                            </td>
                        </tr>
                    </table>
                </NestedViewTemplate>
                <Columns>
                    <telerik:GridTemplateColumn DataField="UserUD" HeaderText="ID" SortExpression="UserUD" UniqueName="UserUD" AllowFiltering="false">
                        <ItemTemplate>
                            <%# Eval("UserID")%>
                        </ItemTemplate>
                        <ItemStyle Width="40px" HorizontalAlign="Center" />
                        <HeaderStyle Width="40px" HorizontalAlign="Center" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="UserFullName" SortExpression="UserFullName" HeaderText="Full Name">
                        <ItemTemplate>
                            <%# Eval("UserFullName")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="UserRole" SortExpression="UserRole" HeaderText="User Role">
                        <ItemTemplate>
                            <%# Eval("UserRole")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="CountryDescription" SortExpression="CountryDescription" HeaderText="Country">
                        <ItemTemplate>
                            <%# Eval("CountryCode")+ "; "+ Eval("CountryDescription")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="AffiliateName" SortExpression="AffiliateName" HeaderText="Affiliate">
                        <ItemTemplate>
                            <%# Eval("AffiliateName")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="DateofBirth" SortExpression="DateofBirth" HeaderText="DOB">
                        <ItemTemplate>
                            <%# Eval("DateOfBirth", "{0:d}")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="Sex" SortExpression="Sex" HeaderText="Sex">
                        <ItemTemplate>
                            <%# Eval("Sex")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="Height" SortExpression="Height" HeaderText="Height">
                        <ItemTemplate>
                            <%# Eval("Height")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="Weight" SortExpression="Weight" HeaderText="Weight">
                        <ItemTemplate>
                            <%# Eval("Weight")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="GlobalRanking" SortExpression="GlobalRanking" HeaderText="Global Ranking">
                        <ItemTemplate>
                            <%# Eval("GlobalRanking")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>

                </Columns>
                <PagerStyle AlwaysVisible="false" />
            </MasterTableView>
        </telerik:RadGrid>
    </div>
    <asp:SqlDataSource ID="SqlDs_RegisteredUsers_ViewAll" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="RegiseredAtheletes_ViewAll" SelectCommandType="StoredProcedure" />
   
</asp:Content>

