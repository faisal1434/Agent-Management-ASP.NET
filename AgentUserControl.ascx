<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AgentUserControl.ascx.cs" Inherits="Agent_Management.AgentUserControl" %>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div class="row">
            <div class="col-md-12">
                <h2>Agent Information</h2>
                <asp:GridView ID="GridView1" CssClass="table table-border" runat="server" AutoGenerateColumns="False" DataKeyNames="AgentId" DataSourceID="ObjectDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="AgentId" HeaderText="AgentId" SortExpression="AgentId" />
                        <asp:BoundField DataField="AgentName" HeaderText="AgentName" SortExpression="AgentName" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="Agent_Management.Models.Agent" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="GetAgent" TypeName="Agent_Management.LAL.Manager" UpdateMethod="Update"></asp:ObjectDataSource>
                <h2>Add New ...</h2>
                <asp:DetailsView ID="DetailsView1" CssClass="table table-border" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="AgentId" DataSourceID="ObjectDataSource1" DefaultMode="Insert">
                    <Fields>
                        <asp:BoundField DataField="AgentId" HeaderText="AgentId" SortExpression="AgentId" />
                        <asp:BoundField DataField="AgentName" HeaderText="AgentName" SortExpression="AgentName" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
