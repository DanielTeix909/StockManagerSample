<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Account_Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Menu Principal"></asp:Label>
    <br />
    <asp:LinkButton ID="lb_stocks" runat="server" Text="Gerir Stocks" Font-Bold="True" Font-Size="Large" OnClick="lb_stocks_Click" ForeColor="#0066FF"></asp:LinkButton>
<br />
<br />
    <asp:LinkButton ID="lb_artigos" runat="server" Text="Gerir Artigos" Font-Bold="True" Font-Size="Large" OnClick="lb_artigos_Click" ForeColor="#0066FF"></asp:LinkButton>
<br />
<br />
    <asp:LinkButton ID="lb_users" runat="server" Text="Gerir Utilizadores" Font-Bold="True" Font-Size="Large" OnClick="lb_users_Click" ForeColor="#0066FF"></asp:LinkButton>
    <br />
    <br />
    <asp:LinkButton ID="lb_users0" runat="server" Text="Gerir Ponto de Venda" Font-Bold="True" Font-Size="Large" OnClick="lb_users_Click" ForeColor="#0066FF"></asp:LinkButton>
<br />
    <br />
    <asp:LinkButton ID="lb_registuser" runat="server" Text="Registar Utilizadores" Font-Bold="True" Font-Size="Large" OnClick="Label4_Click" ForeColor="#0066FF"></asp:LinkButton>
    <br />
    <br />
    <asp:LinkButton ID="lb_reembolsos" runat="server" Text="Gerir Reembolsos" Font-Bold="True" Font-Size="Large" OnClick="lb_reembolsos_Click" ForeColor="#0066FF"></asp:LinkButton>
    <br />
    <br />
    <asp:LinkButton ID="LinkButton13" runat="server" Font-Bold="True" Font-Size="Large" OnClick="LinkButton13_Click" ForeColor="#0066FF">Gerir Eventos</asp:LinkButton>
    <br />
    <br />
    <asp:LinkButton ID="LinkButton12" runat="server" Text="Gerir Parceiros" Font-Bold="True" Font-Size="Large" OnClick="lb_parceiros_Click" ForeColor="#0066FF"></asp:LinkButton>
    <br />
    <br />
<asp:LinkButton ID="lb_configuser" runat="server" Text=" Configurações do utilizador" Font-Bold="True" Font-Size="Large" OnClick="lb_configuser_Click" ForeColor="#0066FF"></asp:LinkButton>
    <br />
    <br />
    <asp:LinkButton ID="lb_admins" runat="server" Text="Configurações administrativas" Font-Bold="True" Font-Size="Large" OnClick="lb_admins_Click" ForeColor="#0066FF"></asp:LinkButton>
</asp:Content>

