<%@ Page Title="CCAT" Language="C#" MasterPageFile="~/CrossFit.master" AutoEventWireup="true" CodeFile="AddDiaryEntry.aspx.cs" Inherits="AddDiaryEntry" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="pageHeader" ContentPlaceHolderID="head" runat="Server">
    <meta name="confirm" content="true" />

</asp:Content>
<asp:Content ID="pageContent" ContentPlaceHolderID="body" runat="Server">
    <telerik:RadAjaxManager ID="RadAjaxManager" runat="server">
        <AjaxSettings></AjaxSettings>
    </telerik:RadAjaxManager>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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
        <table class="SpaciousHalf" style="width: 50%; margin: 35px 50px; font-size: 10pt; background-color: transparent;">
            <tr>
                <td class="spaciousTitleCell">Title</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtTitle" runat="server" Width="500px" MaxLength="100" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtDiaryEntry" TextMode="MultiLine" runat="server" Height="300px" Width="600px" />
                     <telerik:RadEditor RenderMode="Lightweight" runat="server" ID="radDiaryEntry" Height="300px" Width="1000px" EditModes="Design" BackColor="White" 
                        OnClientLoad="OnClientLoad" ContentFilters="ConvertToXhtml" Enabled="true">
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
                        </telerik:EditorToolGroup>
                    </Tools>
                </telerik:RadEditor>
                </td>

            </tr>
            <tr>
                <td colspan="6">
                    <div id="DropZone" style="width: 100%; height: 50px; background-color: #CDB5CD; color: white; text-align: center; border: solid 1px lightgray; justify-content: center; display: flex; align-items: center;">
                        <h2>Drop Images Here</h2>
                    </div>
                    <telerik:RadAsyncUpload runat="server" ID="imgUpload" HideFileInput="true" MultipleFileSelection="Automatic" AllowedFileExtensions=".png,.jpg,.jpeg" DropZones="#DropZone" Width="150px">
                        <Localization Select="Browse..." />
                    </telerik:RadAsyncUpload>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="btnSave" runat="server" CssClass="btn btn-primary" OnClick="btnSave_Click" Visible="true"><span class="glyphicon glyphicon-save"></span>&nbsp;&nbsp;&nbsp; Save&nbsp;&nbsp;&nbsp;</asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

