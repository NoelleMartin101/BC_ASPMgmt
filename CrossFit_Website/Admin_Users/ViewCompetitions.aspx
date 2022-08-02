<%@ Page Title="CCAT" Language="C#" MasterPageFile="~/CrossFit.master" AutoEventWireup="true" CodeFile="ViewCompetitions.aspx.cs" Inherits="ViewCompetitions" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="pageHeader" ContentPlaceHolderID="head" runat="Server">
    <meta name="confirm" content="true" />

</asp:Content>
<asp:Content ID="pageContent" ContentPlaceHolderID="body" runat="Server">
    <div class="row managementPageHeader">
        <div class="col-sx-12 col-sm-12 col-md-9 col-lg-9 adminButtons">
            <asp:LinkButton runat="server" ID="btn_Back" Style="float: left;" CausesValidation="false"><span class="glyphicon glyphicon-arrow-left"></span>&nbsp; Back</asp:LinkButton>
            <p><b>&nbsp;&nbsp; View Events</b></p>
        </div>
        <asp:LinkButton ID="lnk_Add" runat="server" CssClass="btn btn-default" PostBackUrl="CreateNewWOD.aspx?returnurl=~ViewCompetitions.aspx"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;&nbsp; Add&nbsp;&nbsp;&nbsp;</asp:LinkButton>
    </div>
    <div>
        <div class="row managementPageHeader">
            <telerik:RadGrid ID="grid_EventExercises" PageSize="20" runat="server" AllowPaging="True" ShowStatusBar="True" GridLines="None" DataSourceID="SqlDs_CompetitionEvents_View" Width="100%" AllowSorting="True">
                <GroupingSettings CaseSensitive="false" />
                <MasterTableView CommandItemDisplay="None" AutoGenerateColumns="false" Font-Names="Arial" DataSourceID="SqlDs_CompetitionEvents_View" DataKeyNames="CompetitionEventID" AllowFilteringByColumn="false" HeaderStyle-HorizontalAlign="Left" HeaderStyle-Font-Bold="true">
                    <Columns>
                        <telerik:GridTemplateColumn DataField="CompetitionEventID" HeaderText="ID" SortExpression="CompetitionEventID" UniqueName="CompetitionEventID" AllowFiltering="false">
                            <ItemTemplate>
                                <%# Eval("CompetitionEventID")%>
                            </ItemTemplate>
                            <ItemStyle Width="40px" HorizontalAlign="Center" />
                            <HeaderStyle Width="40px" HorizontalAlign="Center" />
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn DataField="CompetitionDescription" SortExpression="CompetitionDescription" HeaderText="Competition">
                            <ItemTemplate>
                                <%# Eval("CompetitionDescription")%>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn DataField="ScaleDescription" SortExpression="ScaleDescription" HeaderText="Scale">
                            <ItemTemplate>
                                <%# Eval("ScaleDescription")%>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn DataField="EventLocationDescription" SortExpression="EventLocationDescription" HeaderText="Location">
                            <ItemTemplate>
                                <%# Eval("EventLocationDescription")%>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn DataField="NofEvents" SortExpression="NofEvents" HeaderText="# Events">
                            <ItemTemplate>
                                <%# Eval("NofEvents")%>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                            <HeaderStyle HorizontalAlign="Center"/>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn DataField="EventsAdded" SortExpression="EventsAdded" HeaderText="# Events Added">
                            <ItemTemplate>
                                <%# Eval("EventsAdded")%>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                            <HeaderStyle HorizontalAlign="Center"/>
                        </telerik:GridTemplateColumn>
                         <telerik:GridTemplateColumn DataField="DateOfEvent" SortExpression="DateOfEvent" HeaderText="Date Of Event">
                            <ItemTemplate>
                                <%# Eval("DateOfEvent", "{0:d}")%>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn DataField="TimeOfLaunch" SortExpression="TimeOfLaunch" HeaderText="Time Of Launch">
                            <ItemTemplate>
                                <%# Eval("TimeOfLaunch")%>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                         <telerik:GridTemplateColumn DataField="LengthOfEvent" SortExpression="LengthOfEvent" HeaderText="Length Of Event">
                            <ItemTemplate>
                                <%# Eval("LengthOfEvent")%>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                            <HeaderStyle HorizontalAlign="Center"/>
                        </telerik:GridTemplateColumn>
                         <telerik:GridTemplateColumn DataField="CompletionDate" SortExpression="CompletionDate" HeaderText="Completion Date">
                            <ItemTemplate>
                                <%# Eval("CompletionDate", "{0:d}")%>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                         <telerik:GridTemplateColumn DataField="IsCompleted" SortExpression="IsCompleted" HeaderText="Submission Completed">
                            <ItemTemplate>
                                <%# Eval("IsCompleted")%>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                            <HeaderStyle HorizontalAlign="Center"/>
                        </telerik:GridTemplateColumn>
                         <telerik:GridTemplateColumn DataField="HasExpired" SortExpression="HasExpired" HeaderText="Event Expired">
                            <ItemTemplate>
                                <%# Convert.ToBoolean(Eval("HasExpired")) ? "<span class='fa fa-check style='color:forestgreen;font-size:1.5em;'>": "<span" %>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                            <HeaderStyle HorizontalAlign="Center"/>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn UniqueName="Edit" AllowFiltering="false">
                            <ItemTemplate>                                                                
                                <asp:HyperLink ID="HyperLink1" runat="server" ToolTip="Edit..." CssClass="btn btn-warning" NavigateUrl='<%# String.Format("~/Admin_Users/EditCompetition.aspx?CompetitionEventID={0}&returnurl=ViewCompetitions.aspx" + Request.Url.Query, Eval("CompetitionEventID"))%>'>
                                <span  class="glyphicon glyphicon-edit" style="color: white;"></span>
                                </asp:HyperLink>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" Width="50px" />
                            <HeaderStyle HorizontalAlign="Center" Width="50px" />
                        </telerik:GridTemplateColumn>
                    </Columns>
                    <PagerStyle AlwaysVisible="false" />
                </MasterTableView>
            </telerik:RadGrid>
            <asp:SqlDataSource ID="SqlDs_CompetitionEvents_View" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="CompetitionEvents_View" SelectCommandType="StoredProcedure" />

        </div>
    </div>
</asp:Content>

