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

                        <br />
                        <br />
                        <br />
                        <asp:LinkButton ID="btnEdit" runat="server" CssClass="btn btn-success" ToolTip="Edit diary entry" CausesValidation="false" OnClick="btn_Edit_Click" Visible="true">
                            <span  class="glyphicon glyphicon-edit" style="color: white;"></span>
                        </asp:LinkButton>
                        <asp:LinkButton ID="btnSave" runat="server" CssClass="btn btn-primary" ToolTip="Save Updates" CommandArgument='<%# Eval("DiaryEntryID") %>' OnCommand="btnSave_Command" Visible="false"><span class="glyphicon glyphicon-save"></span></asp:LinkButton>
                        <asp:LinkButton ID="btnCancel" runat="server" CssClass="btn btn-default" ToolTip="Cancel Updates" CausesValidation="false" OnClick="btnCancel_Click" Visible="false">
                            <span  class="fas fa-times-circle" style="color: black;"></span>
                        </asp:LinkButton>
                    </td>
                    <td style="vertical-align: top;">
                        <asp:Label runat="server" Visible="true" ID="lblEntry" Text='<%# Eval("DiaryEntry") %>' Font-Size="10pt" ForeColor="Black" />
                        <telerik:RadEditor ID="txtDiaryEntry" Visible="false" runat="server" RenderMode="Lightweight" Height="250px" TabIndex="1" Style="padding: 0" Width="100%" EditModes="Design" BackColor="White" Content='<%# Eval("DiaryEntry") %>'>
                            <Tools>
                                <telerik:EditorToolGroup>
                                    <telerik:EditorTool Name="Cut" />
                                    <telerik:EditorTool Name="Copy" />
                                    <telerik:EditorTool Name="Paste" />
                                    <telerik:EditorTool Name="Undo" />
                                    <telerik:EditorTool Name="Redo" />
                                    <telerik:EditorTool Name="AjaxSpellCheck" />
                                    <telerik:EditorTool Name="Bold" />
                                    <telerik:EditorTool Name="Underline" />
                                    <telerik:EditorTool Name="Italic" />
                                    <telerik:EditorTool Name="StrikeThrough" />
                                    <telerik:EditorTool Name="Superscript" />
                                    <telerik:EditorTool Name="Subscript" />
                                    <telerik:EditorTool Name="ConvertToUpper" />
                                    <telerik:EditorTool Name="ConvertToLower" />
                                    <telerik:EditorTool Name="InsertUnorderedList" />
                                    <telerik:EditorTool Name="InsertOrderedList" />
                                    <telerik:EditorTool Name="InsertLink" />
                                    <telerik:EditorTool Name="Indent" />
                                    <telerik:EditorTool Name="Outdent" />
                                </telerik:EditorToolGroup>
                            </Tools>
                        </telerik:RadEditor>

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

