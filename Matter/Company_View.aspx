<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Company_View.aspx.cs" Inherits="Agent_Management.Matter.Company_View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h2>Company Information</h2>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource1" InsertItemPosition="LastItem" OnSelectedIndexChanged="ListView1_SelectedIndexChanged" DataKeyNames="CompanyId">
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="CompanyIdLabel" runat="server" Text='<%# Eval("CompanyId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CompanyNameLabel" runat="server" Text='<%# Eval("CompanyName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AgentIdLabel" runat="server" Text='<%# Eval("AgentId") %>' />
                        </td>
                       <%-- <td>
                            <asp:Label ID="AgentLabel" runat="server" Text='<%# Eval("Agent") %>' />
                        </td>--%>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:TextBox ID="CompanyIdTextBox" runat="server" Text='<%# Bind("CompanyId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CompanyNameTextBox" runat="server" Text='<%# Bind("CompanyName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="AgentIdTextBox" runat="server" Text='<%# Bind("AgentId") %>' />
                        </td>
                      <%--  <td>
                            <asp:TextBox ID="AgentTextBox" runat="server" Text='<%# Bind("Agent") %>' />
                        </td>--%>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>
                            <asp:TextBox ID="CompanyIdTextBox" runat="server" Text='<%# Bind("CompanyId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CompanyNameTextBox" runat="server" Text='<%# Bind("CompanyName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="AgentIdTextBox" runat="server" Text='<%# Bind("AgentId") %>' />
                        </td>
                       <%-- <td>
                            <asp:TextBox ID="AgentTextBox" runat="server" Text='<%# Bind("Agent") %>' />
                        </td>--%>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="CompanyIdLabel" runat="server" Text='<%# Eval("CompanyId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CompanyNameLabel" runat="server" Text='<%# Eval("CompanyName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AgentIdLabel" runat="server" Text='<%# Eval("AgentId") %>' />
                        </td>
                      <%--  <td>
                            <asp:Label ID="AgentLabel" runat="server" Text='<%# Eval("Agent") %>' />
                        </td>--%>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table class="table" runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table class="table table-bordered" id="itemPlaceholderContainer" runat="server" border="0" style="">
                                    <tr runat="server" style="">
                                        <th runat="server"></th>
                                        <th runat="server">CompanyId</th>
                                        <th runat="server">CompanyName</th>
                                        <th runat="server">Address</th>
                                        <th runat="server">AgentId</th>
                                       <%-- <th runat="server">Agent</th>--%>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style=""></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="CompanyIdLabel" runat="server" Text='<%# Eval("CompanyId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CompanyNameLabel" runat="server" Text='<%# Eval("CompanyName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AgentIdLabel" runat="server" Text='<%# Eval("AgentId") %>' />
                        </td>
                       <%-- <td>
                            <asp:Label ID="AgentLabel" runat="server" Text='<%# Eval("Agent") %>' />
                        </td>--%>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="Agent_Management.Models.Company" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="GetCompany" TypeName="Agent_Management.LAL.Manager" UpdateMethod="Update"></asp:ObjectDataSource>
        </div>
    </div>
</asp:Content>
