<%@ Page Title="Competitions List" Language="C#" MasterPageFile="~/CrossFit.master" AutoEventWireup="true" CodeFile="Competitions_List.aspx.cs" Inherits="Competitions_List" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="pageHeader" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="pageContent" ContentPlaceHolderID="body" runat="Server">
    <div class="row managementPageHeader">
        <div class="col-lg-12 adminButtons">
            <asp:LinkButton runat="server" ID="btn_Back" Style="float: left;" CausesValidation="false"> <span class="glyphicon glyphicon-arrow-left"></span>&nbsp; Back</asp:LinkButton>
            <p><b>&nbsp;&nbsp; Competitions</b></p>
        </div>
    </div>
    <div>
        <asp:Label ID="lbl_Msg" runat="server" EnableViewState="false" CssClass="msgbox" Visible="false" />
    </div>
    <div>
        <br />
        <telerik:RadGrid ID="grid_Competitions" PageSize="100" runat="server" AllowPaging="True" ShowStatusBar="True" GridLines="None" 
            OnUpdateCommand="grid_Competitions_UpdateCommand" OnInsertCommand="grid_Competitions_InsertCommand"
            DataSourceID="SqlDs_Competitions_ViewAll" Width="50%" AllowSorting="True">
            <GroupingSettings CaseSensitive="false" />
            <MasterTableView CommandItemDisplay="Top" EditMode="InPlace" AutoGenerateColumns="false" Font-Names="Arial" DataSourceID="SqlDs_Competitions_ViewAll" DataKeyNames="CompetitionID" AllowFilteringByColumn="false">
                <CommandItemSettings ShowExportToExcelButton="false" ShowRefreshButton="false" ShowAddNewRecordButton="true" />
                <Columns>
                    <telerik:GridTemplateColumn DataField="CompetitionID" HeaderText="ID" SortExpression="CompetitionID" UniqueName="CompetitionID" AllowFiltering="false">
                        <ItemTemplate>
                            <%# Eval("CompetitionID")%>
                        </ItemTemplate>
                        <ItemStyle Width="40px" HorizontalAlign="Center" />
                        <HeaderStyle Width="40px" HorizontalAlign="Center" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                   
                    <telerik:GridTemplateColumn DataField="CompetitionDescription" SortExpression="CompetitionDescription" HeaderText="Competition">
                        <ItemTemplate>
                            <%# Eval("CompetitionDescription")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCompetitionDescription" runat="server" TextMode="SingleLine" Width="100%" Text='<%# Eval("CompetitionDescription") %>' />
                        </EditItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridEditCommandColumn Visible="true" UniqueName="GridEditCommandColumn" ButtonType="ImageButton" UpdateText="Update" CancelText="Cancel" InsertText="Add Comment" EditText="Edit Record" />
                        
                </Columns>
                <PagerStyle AlwaysVisible="false" />
            </MasterTableView>
        </telerik:RadGrid>
    </div>
    <asp:SqlDataSource ID="SqlDs_Competitions_ViewAll" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="Competitions_ViewAll" SelectCommandType="StoredProcedure" />
</asp:Content>

