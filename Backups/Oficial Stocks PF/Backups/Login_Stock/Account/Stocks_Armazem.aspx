<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Stocks_Armazem.aspx.cs" Inherits="Stocks_Armazem" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <asp:Label ID="Label1" runat="server" Text="Stocks Armazem"></asp:Label>
<br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Stock_Nome], [Stock_Referencia], [Stock_Tamanho], [Stock_PVP], [Stock_precosemiva], [Stock_Quantidade] FROM [Stock_Armazem]"></asp:SqlDataSource>
    &nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="grelhasock" runat="server" Height="183px" Width="591px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="Stock_Nome" HeaderText="Stock_Nome" SortExpression="Stock_Nome" />
        <asp:BoundField DataField="Stock_Referencia" HeaderText="Stock_Referencia" SortExpression="Stock_Referencia" />
        <asp:BoundField DataField="Stock_Tamanho" HeaderText="Stock_Tamanho" SortExpression="Stock_Tamanho" />
        <asp:BoundField DataField="Stock_PVP" HeaderText="Stock_PVP" SortExpression="Stock_PVP" />
        <asp:BoundField DataField="Stock_precosemiva" HeaderText="Stock_precosemiva" SortExpression="Stock_precosemiva" />
        <asp:BoundField DataField="Stock_Quantidade" HeaderText="Stock_Quantidade" SortExpression="Stock_Quantidade" />
    </Columns>
</asp:GridView>
    a<br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Nome do Artigo:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text="Tamanho do Artigo"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Text="Referencia do Artigo:"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label6" runat="server" Text="PVP do Artigo:"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label7" runat="server" Text="Preço sem Iva do Artigo:"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Text="Preço sem Iva do Artigo:"></asp:Label>
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    <br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="txt_add" runat="server" Text="Adicionar" Width="77px" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;
<asp:Button ID="txt_edit" runat="server" Text="Editar" Width="63px" OnClick="txt_edit_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="txt_remov" runat="server" Text="Remover" Width="80px" OnClick="txt_remov_Click" />
<br />
<br />
<br />
<br />
<br />

</asp:Content>
