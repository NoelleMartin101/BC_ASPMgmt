<%@ Page Title="Registered Users List" Language="C#" MasterPageFile="~/CrossFit.master" AutoEventWireup="true" CodeFile="SystemUsers_List.aspx.cs" Inherits="SystemUsers_List" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="pageHeader" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="pageContent" ContentPlaceHolderID="body" runat="Server">
    <div class="row managementPageHeader">
        <div class="col-lg-12 adminButtons">
            <asp:LinkButton runat="server" ID="btn_Back" Style="float: left;" CausesValidation="false"> <span class="glyphicon glyphicon-arrow-left"></span>&nbsp; Back</asp:LinkButton>
            <p><b>&nbsp;&nbsp; All Users</b></p>
        </div>
    </div>
    <div>
        <asp:Label ID="lbl_Msg" runat="server" EnableViewState="false" CssClass="msgbox" Visible="false" />
    </div>
    <div>
        <br />
        <telerik:RadGrid ID="grid_RegisteredUsers" PageSize="20" runat="server" AllowPaging="True" ShowStatusBar="True" GridLines="None"
            DataSourceID="SqlDs_SystemUsers_ViewAll" Width="100%" AllowSorting="True" OnUpdateCommand="grid_RegisteredUsers_UpdateCommand" OnInsertCommand="grid_RegisteredUsers_InsertCommand">
            <GroupingSettings CaseSensitive="false" />
            <MasterTableView  CommandItemDisplay="Top" EditMode="InPlace" AutoGenerateColumns="false" Font-Names="Arial" DataSourceID="SqlDs_SystemUsers_ViewAll" DataKeyNames="SystemUserID" AllowFilteringByColumn="false">
                <CommandItemSettings ShowExportToExcelButton="false" ShowRefreshButton="false" ShowAddNewRecordButton="true" />                
                <Columns>
                    <telerik:GridTemplateColumn DataField="SystemUserID" HeaderText="ID" SortExpression="SystemUserID" UniqueName="SystemUserID" AllowFiltering="false">
                        <ItemTemplate>
                            <%# Eval("SystemUserID")%>
                        </ItemTemplate>
                        <ItemStyle Width="40px" HorizontalAlign="Center" />
                        <HeaderStyle Width="40px" HorizontalAlign="Center" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="SystemUserName" SortExpression="SystemUserName" HeaderText="Full Name">
                        <ItemTemplate>
                            <%# Eval("SystemUserName")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtSystemUserName" runat="server" TextMode="SingleLine" Width="100%" Text='<%# Eval("SystemUserName") %>' />
                        </EditItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="UserRoleID" SortExpression="UserRole" HeaderText="User Role">
                        <ItemTemplate>
                            <%# Eval("UserRole")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <telerik:RadComboBox ID="ddlUserRoles" runat="server" AppendDataBoundItems="true" Width="98%" TabIndex="1" DataSourceID="SqlDs_UserRoles_ViewAll" DataTextField="UserRole" DataValueField="UserRoleID" SelectedValue='<%# Bind("UserRoleID")%>'>
                                <Items>
                                    <telerik:RadComboBoxItem Text="Please Select" />
                                </Items>
                            </telerik:RadComboBox>
                        </EditItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="SystemUserEmail" SortExpression="SystemUserEmail" HeaderText="Email">
                        <ItemTemplate>
                            <%# Eval("SystemUserEmail")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtSystemUserEmail" runat="server" TextMode="SingleLine" Width="100%" Text='<%# Eval("SystemUserEmail") %>' />
                        </EditItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn DataField="SystemUserContactNumber" SortExpression="SystemUserContactNumber" HeaderText="Phone">
                        <ItemTemplate>
                            <%# Eval("SystemUserContactNumber")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtSystemUserContactNumber" runat="server" TextMode="SingleLine" Width="100%" Text='<%# Eval("SystemUserContactNumber") %>' />
                        </EditItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>  
                     <telerik:GridTemplateColumn DataField="LastLogInDate" SortExpression="LastLogInDate" HeaderText="Last Login Date">
                        <ItemTemplate>
                            <%# Eval("LastLogInDate")%>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn> 
                     <telerik:GridTemplateColumn DataField="UserName" SortExpression="UserName" HeaderText="UserName">
                        <ItemTemplate>
                            <%# Eval("UserName")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtUserName" runat="server" TextMode="SingleLine" Width="100%" Text='<%# Eval("UserName") %>' />
                        </EditItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                     <telerik:GridTemplateColumn DataField="UserPassword" SortExpression="UserPassword" HeaderText="Password">
                        <ItemTemplate>
                            <%# Eval("UserPassword")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtUserPassword" runat="server" TextMode="SingleLine" Width="100%" Text='<%# Eval("UserPassword") %>' />
                        </EditItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" Font-Bold="true" />
                    </telerik:GridTemplateColumn>
                     <telerik:GridEditCommandColumn Visible="true" UniqueName="GridEditCommandColumn" ButtonType="ImageButton" UpdateText="Update" CancelText="Cancel" InsertText="Add Comment" EditText="Edit Record" />
                </Columns>
                <PagerStyle AlwaysVisible="false" />
            </MasterTableView>
        </telerik:RadGrid>
    </div>
    <asp:SqlDataSource ID="SqlDs_SystemUsers_ViewAll" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="SystemUsers_ViewAll" SelectCommandType="StoredProcedure" />
    <asp:SqlDataSource ID="SqlDs_UserRoles_ViewAll" runat="server" ConnectionString="<%$ ConnectionStrings:CrossfitTrackerConnectionString %>" SelectCommand="UserRoles_ViewAll" SelectCommandType="StoredProcedure" />
   
</asp:Content>

