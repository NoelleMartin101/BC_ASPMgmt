<%@ Page Title="Scales List" Language="C#" MasterPageFile="~/CrossFit.master" AutoEventWireup="true" CodeFile="Scales_List.aspx.cs" Inherits="Scales_List" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="pageHeader" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="pageContent" ContentPlaceHolderID="body" runat="Server">
    <div class="row managementPageHeader">
        <div class="col-lg-12 adminButtons">
            <asp:LinkButton runat="server" ID="btn_Back" Style="float: left;" CausesValidation="false"> <span class="glyphicon glyphicon-arrow-left"></span>&nbsp; Back</asp:LinkButton>
            <p><b>&nbsp;&nbsp; Scales</b></p>
        </div>
    </div>
    <div>
        <asp:Label ID="lbl_Msg" runat="server" EnableViewState="false" CssClass="msgbox" Visible="false" />
    </div>
    <div>
        <br />
        <telerik:RadGrid ID="grid_Scales" PageSize="20" runat="server" AllowPaging="True" ShowStatusBar="True" GridLines="None" 
            OnUpdateCommand="grid_Scales_UpdateCommand" OnInsertCommand="grid_Scales_InsertCommand"
            DataSourceID="SqlDs_Scales_ViewAll" Width="50%" AllowSorting="True">
            <GroupingSettings CaseSensitive="false" />
            <MasterTableView CommandItemDisplay="Top" EditMode="InPlace" AutoGenerateColumns="false" Font-Names="Arial" DataSourceID="SqlDs_Scales_ViewAll" DataKeyNames="ScaleID" AllowFilteringByColumn="false">
                <CommandItemSettings ShowExportToExcelButton="false" ShowRefreshButton="false" ShowAddNewRecordButton="true" />
                <Columns>
                    <telerik:GridTemplateColumn DataField="ScaleID" HeaderText="ID" SortExpression="ScaleID" UniqueName="ScaleID" AllowFiltering="false">
                        <ItemTemplate>
                            <%# Eval("ScaleID")%>
                        </ItemTemplate>
                        <ItemStyle Width="40px" HorizontalAlign="Center" />
                        <HeaderStyle Width="40px" HorizontalAlign="Center" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="ScaleDescription" SortExpression="ScaleDescription" HeaderText="Scale">
                        <ItemTemplate>
                            <%# Eval("ScaleDescription")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtScaleDescription" runat="server" TextMode="SingleLine" Width="100%" Text='<%# Eval("ScaleDescription") %>' />
                        </EditItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridEditCommandColumn Visible="true" UniqueName="GridEditCommandColumn" ButtonType="ImageButton" UpdateText="Update" CancelText="Cancel" InsertText="Add Comment" EditText="Edit Record" />
                        
                </Columns>
                <PagerStyle AlwaysVisible="false" />
            </MasterTableView>
        </telerik:RadGrid>
    </div>
    <asp:SqlDataSource ID="SqlDs_Scales_ViewAll" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="Scales_ViewAll" SelectCommandType="StoredProcedure" />
</asp:Content>

