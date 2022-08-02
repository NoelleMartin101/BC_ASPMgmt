<%@ Page Title="CCAT" Language="C#" MasterPageFile="~/CrossFit.master" AutoEventWireup="true" CodeFile="CreateNewWOD.aspx.cs" Inherits="CreateNewWOD" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="pageHeader" ContentPlaceHolderID="head" runat="Server">
    <meta name="confirm" content="true" />

</asp:Content>
<asp:Content ID="pageContent" ContentPlaceHolderID="body" runat="Server">
    <div class="row managementPageHeader">
        <div class="col-sx-12 col-sm-12 col-md-9 col-lg-9 adminButtons">
            <asp:LinkButton runat="server" ID="btn_Back" Style="float: left;" CausesValidation="false"><span class="glyphicon glyphicon-arrow-left"></span>&nbsp; Back</asp:LinkButton>
            <p><b>&nbsp;&nbsp; Create Events</b></p>
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
                    <asp:LinkButton ID="btnSave" runat="server" CssClass="btn btn-primary" OnClick="btnSave_Click" Visible="true"><span class="glyphicon glyphicon-save"></span>&nbsp;&nbsp;&nbsp; Create&nbsp;&nbsp;&nbsp;</asp:LinkButton>                    
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

