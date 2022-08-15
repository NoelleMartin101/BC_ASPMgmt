<%@ Page Title="CCAT" Language="C#" MasterPageFile="~/CrossFit.master" AutoEventWireup="true" CodeFile="EditCompetition.aspx.cs" Inherits="EditCompetition" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="pageHeader" ContentPlaceHolderID="head" runat="Server">
    <meta name="confirm" content="true" />

</asp:Content>
<asp:Content ID="pageContent" ContentPlaceHolderID="body" runat="Server">
    <div class="row managementPageHeader">
        <div class="col-sx-12 col-sm-12 col-md-9 col-lg-9 adminButtons">
            <asp:LinkButton runat="server" ID="btn_Back" Style="float: left;" CausesValidation="false"><span class="glyphicon glyphicon-arrow-left"></span>&nbsp; Back</asp:LinkButton>
            <p><b>&nbsp;&nbsp; Edit Competition</b></p>
        </div>
    </div>
    <div>
        <asp:Label ID="lbl_Msg" runat="server" EnableViewState="false" CssClass="msgbox" Visible="false" />
    </div>
    <div>
        <table class="SpaciousHalf" style="width: 75%; margin: 35px 50px; font-size: 10pt; background-color: transparent;">
            <tr>
                <td class="spaciousTitleCell">Competition</td>
                <td>
                    <asp:DropDownList ID="ddlCompetition" runat="server" Width="98%" TabIndex="1" DataSourceID="SqlDs_Competitions" AppendDataBoundItems="True" DataTextField="CompetitionDescription" DataValueField="CompetitionID">
                        <asp:ListItem Text="--- Please Select---"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDs_Competitions" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="Competitions_ShortView" SelectCommandType="StoredProcedure" />
                </td>
                <td class="spaciousTitleCell">Scale
                </td>
                <td>
                    <asp:DropDownList ID="ddlScale" runat="server" Width="98%" TabIndex="1" DataSourceID="SqlDs_Scale" AppendDataBoundItems="True" DataTextField="ScaleDescription" DataValueField="ScaleID">
                        <asp:ListItem Text="--- Please Select---"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDs_Scale" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="Scales_ViewAll" SelectCommandType="StoredProcedure" />
                </td>
                <td class="spaciousTitleCell">Adaptive Option
                </td>
                <td>
                    <asp:DropDownList ID="ddlAdaptiveOption" runat="server" Width="98%" TabIndex="1" DataSourceID="SqlDs_AdaptiveOption" AppendDataBoundItems="True" DataTextField="AdaptiveOption" DataValueField="AdaptiveOptionID">
                        <asp:ListItem Text="--- Please Select---"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDs_AdaptiveOption" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="AdaptiveOptions_ViewAll" SelectCommandType="StoredProcedure" />
                </td>
                <td class="spaciousTitleCell">Location
                </td>
                <td>
                    <asp:DropDownList ID="ddlLocation" runat="server" Width="98%" TabIndex="1" DataSourceID="SqlDs_Location" AppendDataBoundItems="True" DataTextField="EventLocationDescription" DataValueField="EventLocationID">
                        <asp:ListItem Text="--- Please Select---"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDs_Location" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="EventLocations_ViewAll" SelectCommandType="StoredProcedure" />
                </td>
            </tr>

            <tr>
                <td class="spaciousTitleCell">Competition Start Date & Launch Time
                </td>
                <td>
                    <telerik:RadDateInput ID="dteDateOfEvent" runat="server" Width="98%" MinDate="1900-01-01" TabIndex="1" />
                </td>
              
                <td class="spaciousTitleCell">No of Events
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtNoFEvents" />
                </td>
                 <td class="spaciousTitleCell">Length Of Competition
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtLengthOfCompetition" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:LinkButton ID="btnSave" runat="server" CssClass="btn btn-primary" OnClick="btnSave_Click" Visible="true"><span class="fa fa-save"></span>&nbsp;&nbsp;&nbsp; Save&nbsp;&nbsp;&nbsp;</asp:LinkButton>
                    <asp:LinkButton ID="btnSaveAndComplete" runat="server" CssClass="btn btn-success" OnClick="btnSaveAndComplete_Click" Visible="true"><span class="fa fa-save"></span>&nbsp;&nbsp;&nbsp; Save & Complete&nbsp;&nbsp;&nbsp;</asp:LinkButton>
                </td>
            </tr>
        </table>
        <div class="row managementPageHeader" runat="server" visible="true" id="div_Title">
            <div class="col-sx-12 col-sm-12 col-md-9 col-lg-9 adminButtons">
                <p><b>&nbsp;&nbsp; Add Event WODs</b></p>
            </div>
        </div>
        <div class="row managementPageHeader" runat="server" id="div_WODs">
            <telerik:RadGrid ID="grid_EventExercises" PageSize="20" runat="server" AllowPaging="True" ShowStatusBar="True" GridLines="None" DataSourceID="SqlDs_EventExercises_ViewAll" Width="100%" AllowSorting="True"
                 OnUpdateCommand="grid_EventExercises_UpdateCommand" OnInsertCommand="grid_EventExercises_InsertCommand"  >
                <GroupingSettings CaseSensitive="false" />
                <MasterTableView CommandItemDisplay="Top" EditMode="InPlace" AutoGenerateColumns="false" Font-Names="Arial" DataSourceID="SqlDs_EventExercises_ViewAll" DataKeyNames="EventWorkoutID" AllowFilteringByColumn="false">
                    <CommandItemSettings ShowExportToExcelButton="false" ShowRefreshButton="false" ShowAddNewRecordButton="true" />
                    <Columns>
                        <telerik:GridTemplateColumn DataField="EventNumberID" SortExpression="EventNumberID" HeaderText="Event No">
                            <ItemTemplate>
                                <%# Eval("EventNumberDescription")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <telerik:RadComboBox ID="ddlEventNumberDescription" runat="server" AppendDataBoundItems="true" Width="98%" TabIndex="1" DataSourceID="SqlDS_EventNumbers" DataTextField="EventNumberDescription" DataValueField="EventNumberID" SelectedValue='<%# Bind("EventNumberID")%>'>
                                    <Items>
                                        <telerik:RadComboBoxItem Text="Please Select" />
                                    </Items>
                                </telerik:RadComboBox>
                            </EditItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" Font-Bold="true" Width="100px" />
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn DataField="ExerciseID" SortExpression="ExerciseID" HeaderText="Exercise">
                            <ItemTemplate>
                                <%# Eval("Exercise")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <telerik:RadComboBox ID="ddlExercise" runat="server" AppendDataBoundItems="true" Width="98%" TabIndex="1" DataSourceID="SqlDS_Exercises" DataTextField="Exercise" DataValueField="ExerciseID" SelectedValue='<%# Bind("ExerciseID")%>'>
                                    <Items>
                                        <telerik:RadComboBoxItem Text="Please Select" />
                                    </Items>
                                </telerik:RadComboBox>
                            </EditItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" Font-Bold="true" Width="250px"  />
                        </telerik:GridTemplateColumn>
                         <telerik:GridTemplateColumn DataField="Reps" SortExpression="Reps" HeaderText="Reps">
                            <ItemTemplate>
                                <%# Eval("Reps")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox runat="server" ID="txtReps" Text='<%# Bind("Reps")%>' Width="50px"  />
                            </EditItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                        </telerik:GridTemplateColumn>
                         <telerik:GridTemplateColumn DataField="DistanceInMeters" SortExpression="DistanceInMeters" HeaderText="Distance In Meters">
                            <ItemTemplate>
                                <%# Eval("DistanceInMeters")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox runat="server" ID="txtDistanceInMeters" Text='<%# Bind("DistanceInMeters")%>' Width="100px" />
                            </EditItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                        </telerik:GridTemplateColumn> 
                         <telerik:GridTemplateColumn DataField="TimeInSeconds" SortExpression="TimeInSeconds" HeaderText="Time In Seconds">
                            <ItemTemplate>
                                <%# Eval("TimeInSeconds")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox runat="server" ID="txtTimeInSeconds" Text=' <%# Bind("TimeInSeconds")%>' Width="100px" />
                            </EditItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                        </telerik:GridTemplateColumn> 
                        <telerik:GridTemplateColumn DataField="WorkoutDescription" SortExpression="WorkoutDescription" HeaderText="Workout Description">
                            <ItemTemplate>
                                <%# Eval("WorkoutDescription")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox runat="server" ID="txtWorkoutDescription" Text='<%# Bind("WorkoutDescription")%>' Width="300px" />
                            </EditItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                        </telerik:GridTemplateColumn>
                         <telerik:GridTemplateColumn DataField="SpecialRequirements" SortExpression="SpecialRequirements" HeaderText="Special Requirements">
                            <ItemTemplate>
                                <%# Eval("SpecialRequirements")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox runat="server" ID="txtSpecialRequirements" Text='<%# Bind("SpecialRequirements")%>'  Width="300px"/>
                            </EditItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                        </telerik:GridTemplateColumn>
                        <telerik:GridEditCommandColumn Visible="true" UniqueName="GridEditCommandColumn" ButtonType="ImageButton" UpdateText="Update" CancelText="Cancel" InsertText="Add Comment" EditText="Edit Record" />

                    </Columns>
                    <PagerStyle AlwaysVisible="false" />
                </MasterTableView>
            </telerik:RadGrid>
            <asp:SqlDataSource ID="SqlDS_EventNumbers" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="EventNumbers_ViewAll" SelectCommandType="StoredProcedure" />
            <asp:SqlDataSource ID="SqlDS_Exercises" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="Exercises_ViewAll" SelectCommandType="StoredProcedure" />
            <asp:SqlDataSource ID="SqlDS_EventLocations" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="EventLocations_ViewAll" SelectCommandType="StoredProcedure" />
            <asp:SqlDataSource ID="SqlDs_EventExercises_ViewAll" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="CompetitionEventWorkouts_ViewPerCompetition" SelectCommandType="StoredProcedure" >
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="3" Name="CompetitionEventID" QueryStringField="CompetitionEventID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>
    </div>
</asp:Content>

