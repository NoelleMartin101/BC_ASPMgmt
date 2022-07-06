<%@ Page Title="CCAT" Language="C#" MasterPageFile="~/CrossFit.master" AutoEventWireup="true" CodeFile="ViewDiaryEntries.aspx.cs" Inherits="ViewDiaryEntries" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="pageHeader" ContentPlaceHolderID="head" runat="Server">
    <meta name="confirm" content="true" />

</asp:Content>
<asp:Content ID="pageContent" ContentPlaceHolderID="body" runat="Server">
    <div class="row managementPageHeader">
        <div class="col-sx-12 col-sm-12 col-md-9 col-lg-9 adminButtons">
            <p><b>&nbsp;&nbsp; Journal Entries </b></p>
        </div>
        <asp:LinkButton ID="lnk_Add" runat="server" CssClass="btn btn-default" PostBackUrl="AddDiaryEntry.aspx?returnurl=~/DiaryEntries/ViewDiaryEntries.aspx"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;&nbsp; Add&nbsp;&nbsp;&nbsp;</asp:LinkButton>
    </div>
    <div>
        <asp:Repeater ID="repeater_DeletedTaskStatus" runat="server" DataSourceID="SqlDS_DiaryEntries_ViewAll" Visible="true">
            <HeaderTemplate>
                <table width="100%">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td style="width:150px; vertical-align: top;">
                        <asp:Label runat="server" ID="title" Text='<%# Eval("DiaryEntryTitle") %>' Font-Bold="true" /><br />
                        <asp:Label runat="server" ID="date" Text='<%# String.Format("{0:dd/MM/yyyy HH:mm}",Eval("DiaryEntryDate")) %>' />
                        </td>
                    <td style="width:600px; vertical-align: top;">
                        <asp:Label runat="server" ID="entry" Text='<%# Eval("DiaryEntry") %>' />
                    </td>
                    <td style="width:600px">
                    </td>
                </tr>
                <tr><td>&nbsp;</td></tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDS_DiaryEntries_ViewAll" runat="server" ConnectionString="<%$ConnectionStrings:CrossFitConnectionString %>" SelectCommand="DiaryEntries_ViewAll" SelectCommandType="StoredProcedure" />
    </div>
</asp:Content>

