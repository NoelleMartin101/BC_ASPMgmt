<%@ Page Title="Event Numbers List" Language="C#" MasterPageFile="~/CrossFit.master" AutoEventWireup="true" CodeFile="ExerciseAreas_List.aspx.cs" Inherits="ExerciseAreas_List" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="pageHeader" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="pageContent" ContentPlaceHolderID="body" runat="Server">
    <div class="row managementPageHeader">
        <div class="col-lg-12 adminButtons">
            <asp:LinkButton runat="server" ID="btn_Back" Style="float: left;" CausesValidation="false"> <span class="glyphicon glyphicon-arrow-left"></span>&nbsp; Back</asp:LinkButton>
            <p><b>&nbsp;&nbsp; ExerciseAreas</b></p>
        </div>
    </div>
    <div>
        <asp:Label ID="lbl_Msg" runat="server" EnableViewState="false" CssClass="msgbox" Visible="false" />
    </div>
    <div>
        <br />
        <telerik:RadGrid ID="grid_ExerciseAreas" PageSize="100" runat="server" AllowPaging="True" ShowStatusBar="True" GridLines="None" 
            OnUpdateCommand="grid_ExerciseAreas_UpdateCommand" OnInsertCommand="grid_ExerciseAreas_InsertCommand"
            DataSourceID="SqlDs_ExerciseAreas_ViewAll" Width="50%" AllowSorting="True">
            <GroupingSettings CaseSensitive="false" />
            <MasterTableView CommandItemDisplay="Top" EditMode="InPlace" AutoGenerateColumns="false" Font-Names="Arial" DataSourceID="SqlDs_ExerciseAreas_ViewAll" DataKeyNames="ExerciseBodyAreaID" AllowFilteringByColumn="false">
                <CommandItemSettings ShowExportToExcelButton="false" ShowRefreshButton="false" ShowAddNewRecordButton="true" />
                <Columns>
                    <telerik:GridTemplateColumn DataField="ExerciseBodyAreaID" HeaderText="ID" SortExpression="ExerciseBodyAreaID" UniqueName="ExerciseBodyAreaID" AllowFiltering="false">
                        <ItemTemplate>
                            <%# Eval("ExerciseBodyAreaID")%>
                        </ItemTemplate>
                        <ItemStyle Width="40px" HorizontalAlign="Center" />
                        <HeaderStyle Width="40px" HorizontalAlign="Center" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                   
                    <telerik:GridTemplateColumn DataField="ExerciseAreaDescription" SortExpression="ExerciseAreaDescription" HeaderText="Event Number">
                        <ItemTemplate>
                            <%# Eval("ExerciseAreaDescription")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtExerciseAreaDescription" runat="server" TextMode="SingleLine" Width="100%" Text='<%# Eval("ExerciseAreaDescription") %>' />
                        </EditItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridEditCommandColumn Visible="true" UniqueName="GridEditCommandColumn" ButtonType="ImageButton" UpdateText="Update" CancelText="Cancel" InsertText="Add Comment" EditText="Edit Record" />
                        
                </Columns>
                <PagerStyle AlwaysVisible="false" />
            </MasterTableView>
        </telerik:RadGrid>
    </div>
    <asp:SqlDataSource ID="SqlDs_ExerciseAreas_ViewAll" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="ExerciseAreas_ViewAll" SelectCommandType="StoredProcedure" />
</asp:Content>

