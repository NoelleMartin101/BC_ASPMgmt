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
        <asp:Repeater ID="repeater_JournalEntries" runat="server" DataSourceID="SqlDS_DiaryEntries_ViewAll" Visible="true">
            <HeaderTemplate>
                <hr />
                <table width="100%">
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td style="width: 150px; vertical-align: top;">
                        <asp:Label runat="server" ID="title" Text='<%# Eval("DiaryEntryTitle") %>' Font-Bold="true" Font-Size="12pt" ForeColor="Black" /><br />
                        <asp:Label runat="server" ID="date" Text='<%# String.Format("{0:dd/MM/yyyy HH:mm}",Eval("DiaryEntryDate")) %>' Font-Size="10pt" ForeColor="Black" />                        
                    </td>
                    <td style="vertical-align: top;">
                        <asp:Label runat="server" ID="entry" Text='<%# Eval("DiaryEntry") %>' Font-Size="10pt" ForeColor="Black" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <hr />
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDS_DiaryEntries_ViewAll" runat="server" ConnectionString="<%$ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="DiaryEntries_ViewAll" SelectCommandType="StoredProcedure" />
    </div>
</asp:Content>

