<%@ Page Title="Event Numbers List" Language="C#" MasterPageFile="~/CrossFit.master" AutoEventWireup="true" CodeFile="EventNumbers_List.aspx.cs" Inherits="EventNumbers_List" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="pageHeader" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="pageContent" ContentPlaceHolderID="body" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="row managementPageHeader">
        <div class="col-lg-12 adminButtons">
            <asp:LinkButton runat="server" ID="btn_Back" Style="float: left;" CausesValidation="false"> <span class="glyphicon glyphicon-arrow-left"></span>&nbsp; Back</asp:LinkButton>
            <p><b>&nbsp;&nbsp; EventNumbers</b></p>
        </div>
    </div>
    <div>
        <asp:Label ID="lbl_Msg" runat="server" EnableViewState="false" CssClass="msgbox" Visible="false" />
    </div>
    <div>
        <br />
        <telerik:RadGrid ID="grid_EventNumbers" PageSize="100" runat="server" AllowPaging="True" ShowStatusBar="True" GridLines="None" 
            OnUpdateCommand="grid_EventNumbers_UpdateCommand" OnInsertCommand="grid_EventNumbers_InsertCommand"
            DataSourceID="SqlDs_EventNumbers_ViewAll" Width="50%" AllowSorting="True">
            <GroupingSettings CaseSensitive="false" />
            <MasterTableView CommandItemDisplay="Top" EditMode="InPlace" AutoGenerateColumns="false" Font-Names="Arial" DataSourceID="SqlDs_EventNumbers_ViewAll" DataKeyNames="EventNumberID" AllowFilteringByColumn="false">
                <CommandItemSettings ShowExportToExcelButton="false" ShowRefreshButton="false" ShowAddNewRecordButton="true" />
                <Columns>
                    <telerik:GridTemplateColumn DataField="EventNumberID" HeaderText="ID" SortExpression="EventNumberID" UniqueName="EventNumberID" AllowFiltering="false">
                        <ItemTemplate>
                            <%# Eval("EventNumberID")%>
                        </ItemTemplate>
                        <ItemStyle Width="40px" HorizontalAlign="Center" />
                        <HeaderStyle Width="40px" HorizontalAlign="Center" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                   
                    <telerik:GridTemplateColumn DataField="EventNumberDescription" SortExpression="EventNumberDescription" HeaderText="Event Number">
                        <ItemTemplate>
                            <%# Eval("EventNumberDescription")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEventNumberDescription" runat="server" TextMode="SingleLine" Width="100%" Text='<%# Eval("EventNumberDescription") %>' />
                        </EditItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridEditCommandColumn Visible="true" UniqueName="GridEditCommandColumn" ButtonType="ImageButton" UpdateText="Update" CancelText="Cancel" InsertText="Add Comment" EditText="Edit Record" />
                        
                </Columns>
                <PagerStyle AlwaysVisible="false" />
            </MasterTableView>
        </telerik:RadGrid>
    </div>
    <asp:SqlDataSource ID="SqlDs_EventNumbers_ViewAll" runat="server" ConnectionString="<%$ ConnectionStrings:CrossFitConnectionString %>" SelectCommand="EventNumbers_ViewAll" SelectCommandType="StoredProcedure" />
</asp:Content>

