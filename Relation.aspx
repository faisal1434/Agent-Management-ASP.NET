<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Relation.aspx.cs" Inherits="Agent_Management.Relation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h2>Select one</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AgentId" DataSourceID="ObjectDataSource1">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="AgentId" HeaderText="AgentId" SortExpression="AgentId" />
                    <asp:BoundField DataField="AgentName" HeaderText="AgentName" SortExpression="AgentName" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
                </Columns>
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAgent" TypeName="Agent_Management.LAL.Manager"></asp:ObjectDataSource>
        </div>
    </div>
     <div class="row">
        <div class="col-md-12">
            
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="CompanyId" DataSourceID="ObjectDataSource2">
                <Columns>
                    <asp:BoundField DataField="CompanyId" HeaderText="CompanyId" SortExpression="CompanyId" />
                    <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="AgentId" HeaderText="AgentId" SortExpression="AgentId" />
                </Columns>
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetCompany" TypeName="Agent_Management.LAL.Manager">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="AgentId" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>
</asp:Content>
