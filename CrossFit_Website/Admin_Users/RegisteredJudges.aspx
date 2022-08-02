<%@ Page Title="Registered Judges List" Language="C#" MasterPageFile="~/CrossFit.master" AutoEventWireup="true" CodeFile="RegisteredJudges.aspx.cs" Inherits="RegisteredJudges" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="pageHeader" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="pageContent" ContentPlaceHolderID="body" runat="Server">
    <div class="row managementPageHeader">
        <div class="col-lg-12 adminButtons">
            <asp:LinkButton runat="server" ID="btn_Back" Style="float: left;" CausesValidation="false"> <span class="glyphicon glyphicon-arrow-left"></span>&nbsp; Back</asp:LinkButton>
            <p><b>&nbsp;&nbsp; Registered Judges</b></p>
        </div>
    </div>
    <div>
        <asp:Label ID="lbl_Msg" runat="server" EnableViewState="false" CssClass="msgbox" Visible="false" />
    </div>
    <div>
        <br />
        <telerik:RadGrid ID="grid_RegisteredJudges" PageSize="20" runat="server" AllowPaging="True" ShowStatusBar="True" GridLines="None"
            DataSourceID="SqlDs_RegisteredJudges_ViewAll" Width="100%" AllowSorting="True">
            <GroupingSettings CaseSensitive="false" />
            <MasterTableView AutoGenerateColumns="false" Font-Names="Arial" DataSourceID="SqlDs_RegisteredJudges_ViewAll" DataKeyNames="UserID" AllowFilteringByColumn="false">
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
                </Columns>
                <PagerStyle AlwaysVisible="false" />
            </MasterTableView>
        </telerik:RadGrid>
    </div>
    <asp:SqlDataSource ID="SqlDs_RegisteredJudges_ViewAll" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="RegiseredJudges_ViewAll" SelectCommandType="StoredProcedure" />
   
</asp:Content>

