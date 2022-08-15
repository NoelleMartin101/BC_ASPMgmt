<%@ Page Title="Contract Data List" Language="C#" MasterPageFile="~/CrossFit.master" AutoEventWireup="true" CodeFile="ContractAddresses_List.aspx.cs" Inherits="ContractAddresses_List" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="pageHeader" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="pageContent" ContentPlaceHolderID="body" runat="Server">
    <div class="row managementPageHeader">
        <div class="col-lg-12 adminButtons">
            <asp:LinkButton runat="server" ID="btn_Back" Style="float: left;" CausesValidation="false"> <span class="glyphicon glyphicon-arrow-left"></span>&nbsp; Back</asp:LinkButton>
            <p><b>&nbsp;&nbsp; Deployed Contracts</b></p>
        </div>
    </div>
    <div>
        <asp:Label ID="lbl_Msg" runat="server" EnableViewState="false" CssClass="msgbox" Visible="false" />
    </div>
    <div>
        <br />
        <telerik:RadGrid ID="grid_ContractAddresses" PageSize="20" runat="server" AllowPaging="True" ShowStatusBar="True" GridLines="None"             
            DataSourceID="SqlDs_ContractAddresses_ViewAll" Width="100%" AllowSorting="True">
            <GroupingSettings CaseSensitive="false" />
            <MasterTableView AutoGenerateColumns="false" Font-Names="Arial" DataSourceID="SqlDs_ContractAddresses_ViewAll" DataKeyNames="ContractAddressID" AllowFilteringByColumn="false">                
                <Columns>
                    <telerik:GridTemplateColumn DataField="ContractAddressID" HeaderText="ID" SortExpression="ContractAddressID" UniqueName="ContractAddressID" AllowFiltering="false">
                        <ItemTemplate>
                            <%# Eval("ContractAddressID")%>
                        </ItemTemplate>
                        <ItemStyle Width="40px" HorizontalAlign="Center" />
                        <HeaderStyle Width="40px" HorizontalAlign="Center" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="ContractName" SortExpression="ContractName" HeaderText="Contract Name">
                        <ItemTemplate>
                            <%# Eval("ContractName")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                     <telerik:GridTemplateColumn DataField="ContractAddress" SortExpression="ContractAddress" HeaderText="Contract Address">
                        <ItemTemplate>
                            <%# Eval("ContractAddress")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>                      
                     <telerik:GridTemplateColumn DataField="ContractABI" SortExpression="ContractABI" HeaderText="ABI">
                        <ItemTemplate>
                            <%# Eval("ContractABI")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>  
                </Columns>
                <PagerStyle AlwaysVisible="false" />
            </MasterTableView>
        </telerik:RadGrid>
    </div>
    <asp:SqlDataSource ID="SqlDs_ContractAddresses_ViewAll" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="ContractAddresses_ViewAll" SelectCommandType="StoredProcedure" />
</asp:Content>

