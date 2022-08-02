<%@ Page Title="Registered Users List" Language="C#" MasterPageFile="~/CrossFit.master" AutoEventWireup="true" CodeFile="RegisteredAthleteBenchmarks.aspx.cs" Inherits="RegisteredAthleteBenchmarks" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="pageHeader" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="pageContent" ContentPlaceHolderID="body" runat="Server">
    <div class="row managementPageHeader">
        <div class="col-lg-12 adminButtons">
            <asp:LinkButton runat="server" ID="btn_Back" Style="float: left;" CausesValidation="false"> <span class="glyphicon glyphicon-arrow-left"></span>&nbsp; Back</asp:LinkButton>
            <p><b>&nbsp;&nbsp; Registered Users Benchmarks</b></p>
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
                <Columns>
                    <telerik:GridTemplateColumn DataField="UserID" HeaderText="ID" SortExpression="UserID" UniqueName="UserID" AllowFiltering="false">
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
                    <telerik:GridTemplateColumn DataField="Sex" SortExpression="Sex" HeaderText="Sex">
                        <ItemTemplate>
                            <%# Eval("Sex")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    
                   <telerik:GridTemplateColumn DataField="Measurement" SortExpression="Measurement" HeaderText="Units">
                        <ItemTemplate>
                            <%# Eval("Measurement")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="Fran" SortExpression="Fran" HeaderText="Fran">
                        <ItemTemplate>
                            <%# Eval("Fran")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Right" Font-Bold="true" />
                        <ItemStyle HorizontalAlign="Right" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="Grace" SortExpression="Grace" HeaderText="Grace">
                        <ItemTemplate>
                            <%# Eval("Grace")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Right" Font-Bold="true" />
                        <ItemStyle HorizontalAlign="Right" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="Helen" SortExpression="Helen" HeaderText="Helen">
                        <ItemTemplate>
                            <%# Eval("Helen")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Right" Font-Bold="true" />
                        <ItemStyle HorizontalAlign="Right" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="Filthy50" SortExpression="Filthy50" HeaderText="Filthy 50">
                        <ItemTemplate>
                            <%# Eval("Filthy50")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Right" Font-Bold="true" />
                        <ItemStyle HorizontalAlign="Right" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="FightGoneBad" SortExpression="FightGoneBad" HeaderText="Fight Gone Bad">
                        <ItemTemplate>
                            <%# Eval("FightGoneBad")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Right" Font-Bold="true" />
                        <ItemStyle HorizontalAlign="Right" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="Snatch" SortExpression="Snatch" HeaderText="Snatch">
                        <ItemTemplate>
                            <%# Eval("Snatch")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Right" Font-Bold="true" />
                        <ItemStyle HorizontalAlign="Right" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="Clean" SortExpression="Clean" HeaderText="Clean">
                        <ItemTemplate>
                            <%# Eval("Clean")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Right" Font-Bold="true" />
                        <ItemStyle HorizontalAlign="Right" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="Deadlift" SortExpression="Deadlift" HeaderText="Deadlift">
                        <ItemTemplate>
                            <%# Eval("Deadlift")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Right" Font-Bold="true" />
                        <ItemStyle HorizontalAlign="Right" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="Squat" SortExpression="Squat" HeaderText="Squat">
                        <ItemTemplate>
                            <%# Eval("Squat")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Right" Font-Bold="true" />
                        <ItemStyle HorizontalAlign="Right" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="MaxPullUps" SortExpression="MaxPullUps" HeaderText="Max Pull Ups">
                        <ItemTemplate>
                            <%# Eval("MaxPullUps")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Right" Font-Bold="true" />
                        <ItemStyle HorizontalAlign="Right" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="Run5k" SortExpression="Run5k" HeaderText="Run 5k">
                        <ItemTemplate>
                            <%# Eval("Run5k")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Right" Font-Bold="true" />
                        <ItemStyle HorizontalAlign="Right" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="Sprint400m" SortExpression="Sprint400m" HeaderText="Sprint 400m">
                        <ItemTemplate>
                            <%# Eval("Sprint400m")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Right" Font-Bold="true" />
                        <ItemStyle HorizontalAlign="Right" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                </Columns>
                <PagerStyle AlwaysVisible="false" />
            </MasterTableView>
        </telerik:RadGrid>
    </div>
    <asp:SqlDataSource ID="SqlDs_RegisteredUsers_ViewAll" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="RegiseredUsers_Benchmarks" SelectCommandType="StoredProcedure" />
</asp:Content>

