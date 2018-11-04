<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Stocks_Armazem.aspx.cs" Inherits="Stocks_Armazem" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    &nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Stocks Armazem" Font-Bold="True" Font-Size="Medium"></asp:Label>
<br />
    &nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <asp:GridView ID="grelhasock" runat="server" Height="183px" Width="591px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" DataKeyNames="Id_stock" OnRowDeleting="grelhasock_RowDeleting">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="Id_stock" HeaderText="Id_stock" SortExpression="Id_stock" InsertVisible="False" ReadOnly="True" />
        <asp:BoundField DataField="Stock_Referencia" HeaderText="Stock_Referencia" SortExpression="Stock_Referencia" />
        <asp:BoundField DataField="Stock_Nome" HeaderText="Stock_Nome" SortExpression="Stock_Nome" />
        <asp:BoundField DataField="Stock_Tamanho" HeaderText="Stock_Tamanho" SortExpression="Stock_Tamanho" />
        <asp:BoundField DataField="Stock_PVP" HeaderText="Stock_PVP" SortExpression="Stock_PVP" />
        <asp:BoundField DataField="Stock_precosemiva" HeaderText="Stock_precosemiva" SortExpression="Stock_precosemiva" />
        <asp:BoundField DataField="Stock_Quantidade" HeaderText="Stock_Quantidade" SortExpression="Stock_Quantidade" />
    </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Stock_Armazem] WHERE [Id_stock] = @original_Id_stock AND [Stock_Referencia] = @original_Stock_Referencia AND [Stock_Nome] = @original_Stock_Nome AND [Stock_Tamanho] = @original_Stock_Tamanho AND [Stock_PVP] = @original_Stock_PVP AND [Stock_precosemiva] = @original_Stock_precosemiva AND [Stock_Quantidade] = @original_Stock_Quantidade" InsertCommand="INSERT INTO [Stock_Armazem] ([Stock_Referencia], [Stock_Nome], [Stock_Tamanho], [Stock_PVP], [Stock_precosemiva], [Stock_Quantidade]) VALUES (@Stock_Referencia, @Stock_Nome, @Stock_Tamanho, @Stock_PVP, @Stock_precosemiva, @Stock_Quantidade)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Stock_Armazem]" UpdateCommand="UPDATE [Stock_Armazem] SET [Stock_Referencia] = @Stock_Referencia, [Stock_Nome] = @Stock_Nome, [Stock_Tamanho] = @Stock_Tamanho, [Stock_PVP] = @Stock_PVP, [Stock_precosemiva] = @Stock_precosemiva, [Stock_Quantidade] = @Stock_Quantidade WHERE [Id_stock] = @original_Id_stock AND [Stock_Referencia] = @original_Stock_Referencia AND [Stock_Nome] = @original_Stock_Nome AND [Stock_Tamanho] = @original_Stock_Tamanho AND [Stock_PVP] = @original_Stock_PVP AND [Stock_precosemiva] = @original_Stock_precosemiva AND [Stock_Quantidade] = @original_Stock_Quantidade">
        <DeleteParameters>
            <asp:Parameter Name="original_Id_stock" Type="Int32" />
            <asp:Parameter Name="original_Stock_Referencia" Type="String" />
            <asp:Parameter Name="original_Stock_Nome" Type="String" />
            <asp:Parameter Name="original_Stock_Tamanho" Type="String" />
            <asp:Parameter Name="original_Stock_PVP" Type="String" />
            <asp:Parameter Name="original_Stock_precosemiva" Type="String" />
            <asp:Parameter Name="original_Stock_Quantidade" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Stock_Referencia" Type="String" />
            <asp:Parameter Name="Stock_Nome" Type="String" />
            <asp:Parameter Name="Stock_Tamanho" Type="String" />
            <asp:Parameter Name="Stock_PVP" Type="String" />
            <asp:Parameter Name="Stock_precosemiva" Type="String" />
            <asp:Parameter Name="Stock_Quantidade" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Stock_Referencia" Type="String" />
            <asp:Parameter Name="Stock_Nome" Type="String" />
            <asp:Parameter Name="Stock_Tamanho" Type="String" />
            <asp:Parameter Name="Stock_PVP" Type="String" />
            <asp:Parameter Name="Stock_precosemiva" Type="String" />
            <asp:Parameter Name="Stock_Quantidade" Type="String" />
            <asp:Parameter Name="original_Id_stock" Type="Int32" />
            <asp:Parameter Name="original_Stock_Referencia" Type="String" />
            <asp:Parameter Name="original_Stock_Nome" Type="String" />
            <asp:Parameter Name="original_Stock_Tamanho" Type="String" />
            <asp:Parameter Name="original_Stock_PVP" Type="String" />
            <asp:Parameter Name="original_Stock_precosemiva" Type="String" />
            <asp:Parameter Name="original_Stock_Quantidade" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Nome do Artigo:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Text="Referencia do Artigo:"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text="Tamanho do Artigo"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label6" runat="server" Text="PVP do Artigo:"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label7" runat="server" Text="Preço sem Iva do Artigo:"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server" BorderStyle="Solid"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Text="Quantidade em Stock:"></asp:Label>
    <asp:TextBox ID="TextBox6" runat="server" BorderStyle="Solid"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
<asp:Button ID="txt_add" runat="server" Text="Adicionar" Width="77px" OnClick="Button2_Click" BackColor="#33CC33" BorderStyle="Solid" />
    &nbsp;
<asp:Button ID="txt_edit" runat="server" Text="Editar" Width="80px" OnClick="txt_edit_Click" BorderStyle="Solid" />
    &nbsp;
<br />
<br />
<br />

</asp:Content>
