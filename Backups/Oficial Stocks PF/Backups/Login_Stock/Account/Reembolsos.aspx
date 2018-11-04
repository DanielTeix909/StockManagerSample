<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Reembolsos.aspx.cs" Inherits="Account_Reembolsos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Reembolsos" Font-Bold="True" Font-Size="Large"></asp:Label>
<br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="Spot de Venda:"></asp:Label>
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Local_Nome" DataValueField="Local_Nome" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="179px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Local_Nome] FROM [Locais_Venda]"></asp:SqlDataSource>
&nbsp;<br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label14" runat="server" Text="Artigos Reembolsados:"></asp:Label>
    <asp:GridView ID="grelhasock" runat="server" Height="130px" Width="635px" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Referencia" HeaderText="Referencia" SortExpression="Referencia" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            <asp:BoundField DataField="PVP" HeaderText="PVP" SortExpression="PVP" />
            <asp:BoundField DataField="Data_Reembolso" HeaderText="Data_Reembolso" SortExpression="Data_Reembolso" />
            <asp:BoundField DataField="PrecoSemIva" HeaderText="PrecoSemIva" SortExpression="PrecoSemIva" />
            <asp:BoundField DataField="Data_Compra" HeaderText="Data_Compra" SortExpression="Data_Compra" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Referencia], [Nome], [PVP], [Data_Reembolso], [PrecoSemIva], [Data_Compra] FROM [reembolsos]"></asp:SqlDataSource>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Text="Nome do Artigo:"></asp:Label>
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label9" runat="server" Text="Tamanho do Artigo:"></asp:Label>
    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label10" runat="server" Text="Referencia do Artigo:"></asp:Label>
    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label11" runat="server" Text="PVP do Artigo:"></asp:Label>
    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label12" runat="server" Text="Preço sem Iva do Artigo:"></asp:Label>
    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label13" runat="server" Text="Numero de Peças"></asp:Label>
    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Button ID="Adicionar" runat="server" OnClick="Adicionar_Click" Text="Adicionar" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="editar" runat="server" OnClick="editar_Click" Text="Editar" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="remover" runat="server" OnClick="remover_Click" Text="Remover" />
<br />
<%--<asp:Button ID="txt_add" runat="server" Text="Adicionar" Width="77px" OnClick="Button2_Click" />
<asp:Button ID="txt_edit" runat="server" Text="Editar" Width="63px" OnClick="txt_edit_Click" />
<asp:Button ID="txt_remov" runat="server" Text="Remover" Width="80px" OnClick="txt_remov_Click" />--%>
<br />

</asp:Content>
