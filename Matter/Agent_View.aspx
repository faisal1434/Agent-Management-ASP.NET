<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Agent_View.aspx.cs" Inherits="Agent_Management.Matter.Agent_View" %>

<%@ Register Src="~/AgentUserControl.ascx" TagPrefix="uc1" TagName="AgentUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:AgentUserControl runat="server" ID="AgentUserControl" />
</asp:Content>
