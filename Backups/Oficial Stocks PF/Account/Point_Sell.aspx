<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Point_Sell.aspx.cs" Inherits="Account_SpotSell" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <asp:Label ID="Label1" runat="server" Text="Adicionar Local de Venda"></asp:Label>
<br />
    <br />
    <asp:GridView ID="grelhasock" runat="server" Height="183px" Width="583px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="Local_Nome" HeaderText="Local_Nome" SortExpression="Local_Nome" />
        <asp:BoundField DataField="Local_Zona" HeaderText="Local_Zona" SortExpression="Local_Zona" />
    </Columns>
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Local_Nome], [Local_Zona] FROM [Locais_Venda]"></asp:SqlDataSource>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Local de venda:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text="Zona de Venda:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    &nbsp;<br />
<br />
<asp:Button ID="txt_add" runat="server" Text="Adicionar" Width="77px" OnClick="Button2_Click" />
<asp:Button ID="TextBox4" runat="server" Text="Editar" Width="63px" OnClick="txt_edit_Click" />
<asp:Button ID="TextBox3" runat="server" Text="Remover" Width="80px" OnClick="txt_remov_Click" />
<br />
<br />
<br />
<br />
<br />

</asp:Content>
