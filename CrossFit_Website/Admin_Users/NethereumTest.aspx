<%@ Page Title="NethereumTest List" Language="C#" MasterPageFile="~/CrossFit.master" AutoEventWireup="true" CodeFile="NethereumTest.aspx.cs" Inherits="NethereumTest" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="pageHeader" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="pageContent" ContentPlaceHolderID="body" runat="Server">
    <div class="row managementPageHeader">
        <div class="col-lg-12 adminButtons">
            <asp:LinkButton runat="server" ID="btn_Back" Style="float: left;" CausesValidation="false"> <span class="glyphicon glyphicon-arrow-left"></span>&nbsp; Back</asp:LinkButton>
            <p><b>&nbsp;&nbsp; Test Nethereum - Get Account Balance</b></p>
        </div>
    </div>
    <div>
        <div>
            <input  class="form-control" id='test' name="test" />
        </div>
    </div>
    
</asp:Content>

