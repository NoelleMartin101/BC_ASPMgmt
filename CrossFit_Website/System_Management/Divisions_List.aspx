<%@ Page Title="Divisions List" Language="C#" MasterPageFile="~/CrossFit.master" AutoEventWireup="true" CodeFile="Divisions_List.aspx.cs" Inherits="Divisions_List" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="pageHeader" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="pageContent" ContentPlaceHolderID="body" runat="Server">
    <div class="row managementPageHeader">
        <div class="col-lg-12 adminButtons">
            <asp:LinkButton runat="server" ID="btn_Back" Style="float: left;" CausesValidation="false"> <span class="glyphicon glyphicon-arrow-left"></span>&nbsp; Back</asp:LinkButton>
            <p><b>&nbsp;&nbsp; Divisions</b></p>
        </div>
    </div>
    <div>
        <asp:Label ID="lbl_Msg" runat="server" EnableViewState="false" CssClass="msgbox" Visible="false" />
    </div>
    <div>
        <br />
        <telerik:RadGrid ID="grid_Divisions" PageSize="100" runat="server" AllowPaging="True" ShowStatusBar="True" GridLines="None" Height="700px"
            OnUpdateCommand="grid_Divisions_UpdateCommand" OnInsertCommand="grid_Divisions_InsertCommand"
            DataSourceID="SqlDs_Divisions_ViewAll" Width="50%" AllowSorting="True">
            <GroupingSettings CaseSensitive="false" />
            <MasterTableView CommandItemDisplay="Top" EditMode="InPlace" AutoGenerateColumns="false" Font-Names="Arial" DataSourceID="SqlDs_Divisions_ViewAll" DataKeyNames="DivisionID" AllowFilteringByColumn="false">
                <CommandItemSettings ShowExportToExcelButton="false" ShowRefreshButton="false" ShowAddNewRecordButton="true" />
                <Columns>
                    <telerik:GridTemplateColumn DataField="DivisionID" HeaderText="ID" SortExpression="DivisionID" UniqueName="DivisionID" AllowFiltering="false">
                        <ItemTemplate>
                            <%# Eval("DivisionID")%>
                        </ItemTemplate>
                        <ItemStyle Width="40px" HorizontalAlign="Center" />
                        <HeaderStyle Width="40px" HorizontalAlign="Center" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                   
                    <telerik:GridTemplateColumn DataField="DivisionName" SortExpression="DivisionName" HeaderText="Division">
                        <ItemTemplate>
                            <%# Eval("DivisionName")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtDivisionName" runat="server" TextMode="SingleLine" Width="100%" Text='<%# Eval("DivisionName") %>' />
                        </EditItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridEditCommandColumn Visible="true" UniqueName="GridEditCommandColumn" ButtonType="ImageButton" UpdateText="Update" CancelText="Cancel" InsertText="Add Comment" EditText="Edit Record" />
                        
                </Columns>
                <PagerStyle AlwaysVisible="false" />
            </MasterTableView>
            
              <ClientSettings>
                <Scrolling AllowScroll="true" UseStaticHeaders="true" />
            </ClientSettings>
        </telerik:RadGrid>
    </div>
    <asp:SqlDataSource ID="SqlDs_Divisions_ViewAll" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="Divisions_ViewAll" SelectCommandType="StoredProcedure" />
</asp:Content>

