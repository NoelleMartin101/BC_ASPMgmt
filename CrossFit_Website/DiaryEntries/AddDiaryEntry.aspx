<%@ Page Title="CCAT" Language="C#" MasterPageFile="~/CrossFit.master" AutoEventWireup="true" CodeFile="AddDiaryEntry.aspx.cs" Inherits="AddDiaryEntry" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="pageHeader" ContentPlaceHolderID="head" runat="Server">
    <meta name="confirm" content="true" />

</asp:Content>
<asp:Content ID="pageContent" ContentPlaceHolderID="body" runat="Server">
    <telerik:RadAjaxManager ID="RadAjaxManager" runat="server">
        <AjaxSettings></AjaxSettings>
    </telerik:RadAjaxManager>
    <div class="row managementPageHeader">
        <div class="col-sx-12 col-sm-12 col-md-9 col-lg-9 adminButtons">
            <asp:LinkButton runat="server" ID="btn_Back" Style="float: left;" CausesValidation="false"><span class="glyphicon glyphicon-arrow-left"></span>&nbsp; Back</asp:LinkButton>
            <p><b>&nbsp;&nbsp; Add Diary Entry </b></p>
        </div>
    </div>
    <div>
        <asp:Label ID="lbl_Msg" runat="server" EnableViewState="false" CssClass="msgbox" Visible="false" />
    </div>
    <div>
        <table  style="width: 50%; margin: 35px 50px; font-size: 10pt; background-color: transparent;">
            <tr>
                <td class="spaciousTitleCell">Title: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtTitle" TabIndex="1" runat="server" Width="500px" MaxLength="100" />
                </td>
            </tr>
            <tr>
                <td><br />
                    <telerik:RadEditor ID="txtDiaryEntry" runat="server" RenderMode="Lightweight" Height="250px" TabIndex="1" Style="padding:0" Width="100%" EditModes="Design" BackColor="White">
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
                <td colspan="4" align="right"><br />
                    <asp:LinkButton ID="btnSave" runat="server" CssClass="btn btn-primary" OnClick="btnSave_Click" Visible="true"><span class="glyphicon glyphicon-save"></span>&nbsp;&nbsp;&nbsp; Save&nbsp;&nbsp;&nbsp;</asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

