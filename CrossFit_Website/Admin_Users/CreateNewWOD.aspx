<%@ Page Title="CCAT" Language="C#" MasterPageFile="~/CrossFit.master" AutoEventWireup="true" CodeFile="CreateNewWOD.aspx.cs" Inherits="CreateNewWOD" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="pageHeader" ContentPlaceHolderID="head" runat="Server">
    <meta name="confirm" content="true" />

</asp:Content>
<asp:Content ID="pageContent" ContentPlaceHolderID="body" runat="Server">
    <div class="row managementPageHeader">
        <div class="col-sx-12 col-sm-12 col-md-9 col-lg-9 adminButtons">
            <asp:LinkButton runat="server" ID="btn_Back" Style="float: left;" CausesValidation="false"><span class="glyphicon glyphicon-arrow-left"></span>&nbsp; Back</asp:LinkButton>
            <p><b>&nbsp;&nbsp; Add Event WOD </b></p>
        </div>
    </div>
    <div>
        <asp:Label ID="lbl_Msg" runat="server" EnableViewState="false" CssClass="msgbox" Visible="false" />
    </div>
    <div>
        <table class="SpaciousHalf" style="width: 50%; margin: 35px 50px; font-size: 10pt; background-color: transparent;">
            <tr>
                <td class="spaciousTitleCell">Competition</td>
                <td>
                    <asp:DropDownList ID="ddlCompetition" runat="server" Width="98%" TabIndex="1" DataSourceID="SqlDs_Competitions" AppendDataBoundItems="True" DataTextField="CompetitionDesc" DataValueField="CompetitionID" />
                    <asp:SqlDataSource ID="SqlDs_Competitions" runat="server" ConnectionString="<%$ ConnectionStrings:CrossFitConnectionString %>" SelectCommand="Competitions_ShortView" SelectCommandType="StoredProcedure" />
                </td>
                <td class="spaciousTitleCell">Division
                </td>
                <td>
                    <asp:DropDownList ID="ddlDivision" runat="server" Width="98%" TabIndex="1" DataSourceID="SqlDs_Division" AppendDataBoundItems="True" DataTextField="DivisionName" DataValueField="DivisionID" />
                    <asp:SqlDataSource ID="SqlDs_Division" runat="server" ConnectionString="<%$ ConnectionStrings:CrossFitConnectionString %>" SelectCommand="Divisions_ShortView" SelectCommandType="StoredProcedure" />
                </td>
            </tr>
            <tr>
                <td class="spaciousTitleCell">Scale
                </td>
                <td>
                    <asp:DropDownList ID="ddlScale" runat="server" Width="98%" TabIndex="1" DataSourceID="SqlDs_Scale" AppendDataBoundItems="True" DataTextField="ScaleDescription" DataValueField="ScaleID" />
                    <asp:SqlDataSource ID="SqlDs_Scale" runat="server" ConnectionString="<%$ ConnectionStrings:CrossFitConnectionString %>" SelectCommand="Scales_ShortView" SelectCommandType="StoredProcedure" />
                </td>

               
                <td class="spaciousTitleCell">Location
                </td>
                <td>
                    <asp:DropDownList ID="ddlLocation" runat="server" Width="98%" TabIndex="1" DataSourceID="SqlDs_Location" AppendDataBoundItems="True" DataTextField="EventLocationDesc" DataValueField="EventLocationID" />
                    <asp:SqlDataSource ID="SqlDs_Location" runat="server" ConnectionString="<%$ ConnectionStrings:CrossFitConnectionString %>" SelectCommand="EventLocations_ShortView" SelectCommandType="StoredProcedure" />
                </td>
            </tr>
            <tr>
                <td colspan="6">

                    <telerik:RadGrid ID="grid_EventExercises" PageSize="20" runat="server" AllowPaging="True" ShowStatusBar="True" GridLines="None"
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
                    <asp:SqlDataSource ID="SqlDS_EventNumbers" runat="server" ConnectionString="<%$ ConnectionStrings:CrossFitConnectionString %>" SelectCommand="EventNumbers_ShortView" SelectCommandType="StoredProcedure" />
                    <asp:SqlDataSource ID="SqlDS_Exercises" runat="server" ConnectionString="<%$ ConnectionStrings:CrossFitConnectionString %>" SelectCommand="Exercises_ShortView" SelectCommandType="StoredProcedure" />
                    <asp:SqlDataSource ID="SqlDS_" runat="server" ConnectionString="<%$ ConnectionStrings:CrossFitConnectionString %>" SelectCommand="EventLocations_ShortView" SelectCommandType="StoredProcedure" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

