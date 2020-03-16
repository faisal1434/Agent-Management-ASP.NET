<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Agent_Management.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <div>
        User Name: <asp:textbox runat="server" ID="UserName"></asp:textbox>
    </div>
    <div>
        Password: <asp:textbox TextMode="Password" runat="server" ID="Password"></asp:textbox>
    </div>
    <div>
        <asp:button ID="RegisterButton" runat="server" text="Register" OnClick="Register_Click" />
    </div>
    <div>
        <asp:label runat="server" text="" ID="StatusMessage"></asp:label>
    </div>
</asp:Content>
