<%@ Page Title="Affiliates List" Language="C#" MasterPageFile="~/CrossFit.master" AutoEventWireup="true" CodeFile="Affiliates_List.aspx.cs" Inherits="Affiliates_List" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="pageHeader" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="pageContent" ContentPlaceHolderID="body" runat="Server">
    <div class="row managementPageHeader">
        <div class="col-lg-12 adminButtons">
            <asp:LinkButton runat="server" ID="btn_Back" Style="float: left;" CausesValidation="false"> <span class="glyphicon glyphicon-arrow-left"></span>&nbsp; Back</asp:LinkButton>
            <p><b>&nbsp;&nbsp; Affiliates</b></p>
        </div>
    </div>
    <div>
        <asp:Label ID="lbl_Msg" runat="server" EnableViewState="false" CssClass="msgbox" Visible="false" />
    </div>
    <div>
        <br />
        <telerik:RadGrid ID="grid_Affiliates" PageSize="20" runat="server" AllowPaging="True" ShowStatusBar="True" GridLines="None"
            OnUpdateCommand="grid_Affiliates_UpdateCommand" OnInsertCommand="grid_Affiliates_InsertCommand"
            DataSourceID="SqlDs_Affiliates_ViewAll" Width="100%" AllowSorting="True">
            <GroupingSettings CaseSensitive="false" />
            <MasterTableView CommandItemDisplay="Top" EditMode="InPlace" AutoGenerateColumns="false" Font-Names="Arial" DataSourceID="SqlDs_Affiliates_ViewAll" DataKeyNames="AffiliateID" AllowFilteringByColumn="false">
                <CommandItemSettings ShowExportToExcelButton="false" ShowRefreshButton="false" ShowAddNewRecordButton="true" />
                <Columns>
                    <telerik:GridTemplateColumn DataField="AffiliateID" HeaderText="ID" SortExpression="AffiliateID" UniqueName="AffiliateID" AllowFiltering="false">
                        <ItemTemplate>
                            <%# Eval("AffiliateID")%>
                        </ItemTemplate>
                        <ItemStyle Width="40px" HorizontalAlign="Center" />
                        <HeaderStyle Width="40px" HorizontalAlign="Center" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="AffiliateName" SortExpression="AffiliateName" HeaderText="Name">
                        <ItemTemplate>
                            <%# Eval("AffiliateName")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtAffiliateName" runat="server" TextMode="SingleLine" Width="100%" Text='<%# Eval("AffiliateName") %>' />
                        </EditItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="CountryID" SortExpression="CountryID" HeaderText="Country">
                        <ItemTemplate>
                            <%# Eval("CountryDescription")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <telerik:RadComboBox ID="ddlCountry" runat="server" AppendDataBoundItems="true" Width="98%" TabIndex="1" DataSourceID="SqlDs_Country" DataTextField="CountryDescription" DataValueField="CountryID" SelectedValue='<%# Bind("CountryID")%>'>
                                <Items>
                                    <telerik:RadComboBoxItem Text="Please Select" />
                                </Items>
                            </telerik:RadComboBox>
                        </EditItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="ContactPhone" SortExpression="ContactPhone" HeaderText="Phone">
                        <ItemTemplate>
                            <%# Eval("ContactPhone")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtContactPhone" runat="server" TextMode="SingleLine" Width="100%" Text='<%# Eval("ContactPhone")%>' />
                        </EditItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="ContactEmail" SortExpression="ContactEmail" HeaderText="Email">
                        <ItemTemplate>
                            <%# Eval("ContactEmail")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtContactEmail" runat="server" TextMode="SingleLine" Width="100%" Text='<%# Eval("ContactEmail")%>' />
                        </EditItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="AffilateAddress" SortExpression="AffilateAddress" HeaderText="Address">
                        <ItemTemplate>
                            <%# Eval("AffilateAddress")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtAffilateAddress" runat="server" TextMode="SingleLine" Width="100%" Text='<%# Eval("AffilateAddress")%>' />
                        </EditItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>


                    <telerik:GridEditCommandColumn Visible="true" UniqueName="GridEditCommandColumn" ButtonType="ImageButton" UpdateText="Update" CancelText="Cancel" InsertText="Add Comment" EditText="Edit Record" />
                </Columns>
                <PagerStyle AlwaysVisible="false" />
            </MasterTableView>
        </telerik:RadGrid>
    </div>
    <asp:SqlDataSource ID="SqlDs_Country" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="Countries_ViewAll" SelectCommandType="StoredProcedure" />
    <asp:SqlDataSource ID="SqlDs_Affiliates_ViewAll" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="Affiliates_ViewAll" SelectCommandType="StoredProcedure" />
</asp:Content>

