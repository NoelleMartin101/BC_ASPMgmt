<%@ Page Title="Exercises List" Language="C#" MasterPageFile="~/CrossFit.master" AutoEventWireup="true" CodeFile="Exercises_List.aspx.cs" Inherits="Exercises_List" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="pageHeader" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="pageContent" ContentPlaceHolderID="body" runat="Server">
    <div class="row managementPageHeader">
        <div class="col-lg-12 adminButtons">
            <asp:LinkButton runat="server" ID="btn_Back" Style="float: left;" CausesValidation="false"> <span class="glyphicon glyphicon-arrow-left"></span>&nbsp; Back</asp:LinkButton>
            <p><b>&nbsp;&nbsp; Exercises</b></p>
        </div>
    </div>
    <div>
        <asp:Label ID="lbl_Msg" runat="server" EnableViewState="false" CssClass="msgbox" Visible="false" />
    </div>
    <div>
        <br />
        <telerik:RadGrid ID="grid_Exercises" PageSize="20" runat="server" AllowPaging="True" ShowStatusBar="True" GridLines="None" 
            OnUpdateCommand="grid_Exercises_UpdateCommand" OnInsertCommand="grid_Exercises_InsertCommand"
            DataSourceID="SqlDs_Exercises_ViewAll" Width="75%" AllowSorting="True">
            <GroupingSettings CaseSensitive="false" />
            <MasterTableView CommandItemDisplay="Top" EditMode="InPlace" AutoGenerateColumns="false" Font-Names="Arial" DataSourceID="SqlDs_Exercises_ViewAll" DataKeyNames="ExerciseID" AllowFilteringByColumn="false">
                <CommandItemSettings ShowExportToExcelButton="false" ShowRefreshButton="false" ShowAddNewRecordButton="true" />
                <Columns>
                    <telerik:GridTemplateColumn DataField="ExerciseID" HeaderText="ID" SortExpression="ExerciseID" UniqueName="ExerciseID" AllowFiltering="false">
                        <ItemTemplate>
                            <%# Eval("ExerciseID")%>
                        </ItemTemplate>
                        <ItemStyle Width="40px" HorizontalAlign="Center" />
                        <HeaderStyle Width="40px" HorizontalAlign="Center" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                     <telerik:GridTemplateColumn DataField="ExerciseBodyAreaID" HeaderText="Body Area" SortExpression="ExerciseBodyAreaID" UniqueName="ExerciseBodyAreaID" AllowFiltering="false">
                        <ItemTemplate>
                            <%# Eval("ExerciseAreaDescription")%>
                        </ItemTemplate>
                         <EditItemTemplate>
                           <telerik:RadComboBox ID="ddlExerciseBodyArea" runat="server" AppendDataBoundItems="true" Width="98%" TabIndex="1" DataSourceID="SqlDs_ExerciseBodyAreaID" DataTextField="ExerciseAreaDescription" DataValueField="ExerciseBodyAreaID" SelectedValue='<%# Bind("ExerciseBodyAreaID")%>'>
                                <Items>
                                    <telerik:RadComboBoxItem Text="Please Select" />
                                </Items>
                            </telerik:RadComboBox>
                         </EditItemTemplate>
                        <ItemStyle Width="200px" />
                        <HeaderStyle Width="200px" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="Exercise" SortExpression="Exercise" HeaderText="Exercise">
                        <ItemTemplate>
                            <%# Eval("Exercise")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtExercise" runat="server" TextMode="SingleLine" Width="200px" MaxLength="50" Text='<%# Eval("Exercise") %>' />
                        </EditItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="ExerciseDescription" SortExpression="ExerciseDescription" HeaderText="Exercise Description & Notes">
                        <ItemTemplate>
                            <%# Eval("ExerciseDescription")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtExerciseDescription" runat="server" TextMode="SingleLine" Width="100%" Text='<%# Eval("ExerciseDescription") %>' />
                        </EditItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridEditCommandColumn Visible="true" UniqueName="GridEditCommandColumn" ButtonType="ImageButton" UpdateText="Update" CancelText="Cancel" InsertText="Add Comment" EditText="Edit Record" />
                        
                </Columns>
                <PagerStyle AlwaysVisible="false" />
            </MasterTableView>
        </telerik:RadGrid>
    </div>
    <asp:SqlDataSource ID="SqlDs_ExerciseBodyAreaID" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="ExerciseAreas_ViewAll" SelectCommandType="StoredProcedure" />
    <asp:SqlDataSource ID="SqlDs_Exercises_ViewAll" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="Exercises_ViewAll" SelectCommandType="StoredProcedure" />
</asp:Content>

