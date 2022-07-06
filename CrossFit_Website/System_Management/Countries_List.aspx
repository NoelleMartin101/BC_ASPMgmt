<%@ Page Title="Countries List" Language="C#" MasterPageFile="~/CrossFit.master" AutoEventWireup="true" CodeFile="Countries_List.aspx.cs" Inherits="Countries_List" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="pageHeader" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="pageContent" ContentPlaceHolderID="body" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="row managementPageHeader">
        <div class="col-lg-12 adminButtons">
            <asp:LinkButton runat="server" ID="btn_Back" Style="float: left;" CausesValidation="false"> <span class="glyphicon glyphicon-arrow-left"></span>&nbsp; Back</asp:LinkButton>
            <p><b>&nbsp;&nbsp; Countries</b></p>
        </div>
    </div>
    <div>
        <asp:Label ID="lbl_Msg" runat="server" EnableViewState="false" CssClass="msgbox" Visible="false" />
    </div>
    <div>
        <br />
        <telerik:RadGrid ID="grid_Countries" PageSize="20" runat="server" AllowPaging="True" ShowStatusBar="True" GridLines="None" 
            OnUpdateCommand="grid_Countries_UpdateCommand" OnInsertCommand="grid_Countries_InsertCommand"
            DataSourceID="SqlDs_Countries_ViewAll" Width="50%" AllowSorting="True">
            <GroupingSettings CaseSensitive="false" />
            <MasterTableView CommandItemDisplay="Top" EditMode="InPlace" AutoGenerateColumns="false" Font-Names="Arial" DataSourceID="SqlDs_Countries_ViewAll" DataKeyNames="CountryID" AllowFilteringByColumn="false">
                <CommandItemSettings ShowExportToExcelButton="false" ShowRefreshButton="false" ShowAddNewRecordButton="true" />
                <Columns>
                    <telerik:GridTemplateColumn DataField="CountryID" HeaderText="ID" SortExpression="CountryID" UniqueName="CountryID" AllowFiltering="false">
                        <ItemTemplate>
                            <%# Eval("CountryID")%>
                        </ItemTemplate>
                        <ItemStyle Width="40px" HorizontalAlign="Center" />
                        <HeaderStyle Width="40px" HorizontalAlign="Center" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="CountryCode" SortExpression="CountryCode" HeaderText="Code">
                        <ItemTemplate>
                            <%# Eval("CountryCode")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCountryCode" runat="server" TextMode="SingleLine" Width="50px" MaxLength="5" Text='<%# Eval("CountryCode") %>' />
                        </EditItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="CountryDescription" SortExpression="CountryDescription" HeaderText="Country">
                        <ItemTemplate>
                            <%# Eval("CountryDescription")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCountryDescription" runat="server" TextMode="SingleLine" Width="100%" Text='<%# Eval("CountryDescription") %>' />
                        </EditItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridEditCommandColumn Visible="true" UniqueName="GridEditCommandColumn" ButtonType="ImageButton" UpdateText="Update" CancelText="Cancel" InsertText="Add Comment" EditText="Edit Record" />
                        
                </Columns>
                <PagerStyle AlwaysVisible="false" />
            </MasterTableView>
        </telerik:RadGrid>
    </div>
    <asp:SqlDataSource ID="SqlDs_Countries_ViewAll" runat="server" ConnectionString="<%$ ConnectionStrings:CrossFitConnectionString %>" SelectCommand="Countries_ViewAll" SelectCommandType="StoredProcedure" />
</asp:Content>

