<%@ Page Title="CompetitionToDoLists List" Language="C#" MasterPageFile="~/CrossFit.master" AutoEventWireup="true" CodeFile="ToDo_List.aspx.cs" Inherits="ToDo_List" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="pageHeader" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="pageContent" ContentPlaceHolderID="body" runat="Server">
    <div class="row managementPageHeader">
        <div class="col-lg-12 adminButtons">
            <asp:LinkButton runat="server" ID="btn_Back" Style="float: left;" CausesValidation="false"> <span class="glyphicon glyphicon-arrow-left"></span>&nbsp; Back</asp:LinkButton>
            <p><b>&nbsp;&nbsp; Competition To Do Lists</b></p>
        </div>
    </div>
    <div>
        <telerik:RadGrid ID="grid_CompetitionToDoLists" PageSize="20" runat="server" AllowPaging="True" ShowStatusBar="True" GridLines="None"
            OnUpdateCommand="grid_CompetitionToDoLists_UpdateCommand" OnInsertCommand="grid_CompetitionToDoLists_InsertCommand"
            DataSourceID="SqlDs_CompetitionToDoLists_ViewAll" Width="100%" AllowSorting="True">
            <GroupingSettings CaseSensitive="false" />
            <MasterTableView CommandItemDisplay="Top" EditMode="InPlace" AutoGenerateColumns="false" Font-Names="Arial" DataSourceID="SqlDs_CompetitionToDoLists_ViewAll" DataKeyNames="CompetitionToDoListID" AllowFilteringByColumn="false" HeaderStyle-HorizontalAlign="Left" HeaderStyle-Font-Bold="true">
                <CommandItemSettings ShowExportToExcelButton="false" ShowRefreshButton="false" ShowAddNewRecordButton="true" />
                <Columns>
                    <telerik:GridEditCommandColumn Visible="true" UniqueName="GridEditCommandColumn" ButtonType="ImageButton" UpdateText="Update" CancelText="Cancel" InsertText="Add Comment" EditText="Edit Record" />
                    <telerik:GridTemplateColumn DataField="CompetitionToDoListID" HeaderText="ID" SortExpression="CompetitionToDoListID" UniqueName="CompetitionToDoListID" AllowFiltering="false">
                        <ItemTemplate>
                            <%# Eval("CompetitionToDoListID")%>
                        </ItemTemplate>
                        <ItemStyle Width="40px" HorizontalAlign="Center" />
                        <HeaderStyle Width="40px" HorizontalAlign="Center"/>
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="ListDetails" SortExpression="ListDetails" HeaderText="Details">
                        <ItemTemplate>
                            <%# Eval("ListDetails")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtListDetails" runat="server" TextMode="SingleLine" Width="100%" Text='<%# Eval("ListDetails") %>' />
                        </EditItemTemplate>
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="RAGStatus" SortExpression="RAGStatus" HeaderText="RAG Status">
                        <ItemTemplate>
                            <%# Eval("RAGStatusFull")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <telerik:RadComboBox ID="ddlRAGStatus" runat="server" AppendDataBoundItems="true" Width="98%" TabIndex="1" SelectedValue='<%# Bind("RAGStatus")%>'>
                                <Items>
                                    <telerik:RadComboBoxItem Text="Please Select" />
                                    <telerik:RadComboBoxItem Value="G" Text="Green" />
                                    <telerik:RadComboBoxItem Value="A" Text="Amber" />
                                    <telerik:RadComboBoxItem Value="R" Text="Red" />
                                </Items>
                            </telerik:RadComboBox>
                        </EditItemTemplate>
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="IsCompleted" UniqueName="IsCompleted" HeaderText="Is Completed" SortExpression="IsCompleted">
                        <ItemTemplate>                            
                                <%# Convert.ToBoolean(Eval("IsCompleted")) ? "<span class='fa fa-check style='color:forestgreen;font-size:1.5em;'>": "<span" %>
                        </ItemTemplate>
                        
                        <ItemStyle  HorizontalAlign="Center" />
                        <HeaderStyle HorizontalAlign="Center"/>
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn UniqueName="Edit" AllowFiltering="false">
                        <ItemTemplate>
                            <asp:Button ID="btn_Complete" runat="server" CssClass="btn btn-warning" Text="Complete" ToolTip="Once completed the task will not be displayed on the dashboard" CausesValidation="false" OnCommand="btn_Complete_Command" CommandArgument='<%#  Eval("CompetitionToDoListID")%>' Visible='<%# ! Convert.ToBoolean(Eval("IsCompleted")) %>' />

                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="50px" />
                        <HeaderStyle HorizontalAlign="Center" Width="50px" />
                    </telerik:GridTemplateColumn>

                    
                </Columns>
                <PagerStyle AlwaysVisible="false" />
            </MasterTableView>
        </telerik:RadGrid>
    </div>
    <asp:SqlDataSource ID="SqlDs_CompetitionToDoLists_ViewAll" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="CompetitionToDoLists_ViewAll" SelectCommandType="StoredProcedure" />
</asp:Content>

