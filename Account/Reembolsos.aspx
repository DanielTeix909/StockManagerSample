<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Reembolsos.aspx.cs" Inherits="Account_Reembolsos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Reembolsos" Font-Bold="True" Font-Size="Medium"></asp:Label>
<br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="Spot de Venda:" Font-Size="Medium"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Local_Nome" DataValueField="Local_Nome" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="179px" BackColor="Black" ForeColor="White">
    </asp:DropDownList>
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Local_Nome] FROM [Locais_Venda]"></asp:SqlDataSource>
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label14" runat="server" Text="Artigos Reembolsados:" Font-Bold="True" Font-Size="Medium"></asp:Label>
    &nbsp;
    <center>
    <asp:GridView ID="grelhasock" runat="server" Height="130px" Width="635px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Id" OnSelectedIndexChanged="grelhasock_SelectedIndexChanged" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnRowDeleting="grelhasock_RowDeleting">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="True" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            <asp:BoundField DataField="Referencia" HeaderText="Referencia" SortExpression="Referencia" />
            <asp:BoundField DataField="PVP" HeaderText="PVP" SortExpression="PVP" />
            <asp:BoundField DataField="PrecoSemIva" HeaderText="PrecoSemIva" SortExpression="PrecoSemIva" />
            <asp:BoundField DataField="Data_Reembolso" HeaderText="Data_Reembolso" SortExpression="Data_Reembolso" />
            <asp:BoundField DataField="Data_Compra" HeaderText="Data_Compra" SortExpression="Data_Compra" />
            <asp:BoundField DataField="Quantida_Devolvida" HeaderText="Quantida_Devolvida" SortExpression="Quantida_Devolvida" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [reembolsos] WHERE [Id] = @original_Id AND [Nome] = @original_Nome AND [Referencia] = @original_Referencia AND [PVP] = @original_PVP AND [PrecoSemIva] = @original_PrecoSemIva AND [Data_Reembolso] = @original_Data_Reembolso AND [Data_Compra] = @original_Data_Compra AND [Quantida_Devolvida] = @original_Quantida_Devolvida" InsertCommand="INSERT INTO [reembolsos] ([Id], [Nome], [Referencia], [PVP], [PrecoSemIva], [Data_Reembolso], [Data_Compra], [Quantida_Devolvida]) VALUES (@Id, @Nome, @Referencia, @PVP, @PrecoSemIva, @Data_Reembolso, @Data_Compra, @Quantida_Devolvida)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [reembolsos]" UpdateCommand="UPDATE [reembolsos] SET [Nome] = @Nome, [Referencia] = @Referencia, [PVP] = @PVP, [PrecoSemIva] = @PrecoSemIva, [Data_Reembolso] = @Data_Reembolso, [Data_Compra] = @Data_Compra, [Quantida_Devolvida] = @Quantida_Devolvida WHERE [Id] = @original_Id AND [Nome] = @original_Nome AND [Referencia] = @original_Referencia AND [PVP] = @original_PVP AND [PrecoSemIva] = @original_PrecoSemIva AND [Data_Reembolso] = @original_Data_Reembolso AND [Data_Compra] = @original_Data_Compra AND [Quantida_Devolvida] = @original_Quantida_Devolvida">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Nome" Type="String" />
            <asp:Parameter Name="original_Referencia" Type="String" />
            <asp:Parameter Name="original_PVP" Type="String" />
            <asp:Parameter Name="original_PrecoSemIva" Type="String" />
            <asp:Parameter Name="original_Data_Reembolso" Type="String" />
            <asp:Parameter Name="original_Data_Compra" Type="String" />
            <asp:Parameter Name="original_Quantida_Devolvida" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="Referencia" Type="String" />
            <asp:Parameter Name="PVP" Type="String" />
            <asp:Parameter Name="PrecoSemIva" Type="String" />
            <asp:Parameter Name="Data_Reembolso" Type="String" />
            <asp:Parameter Name="Data_Compra" Type="String" />
            <asp:Parameter Name="Quantida_Devolvida" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="Referencia" Type="String" />
            <asp:Parameter Name="PVP" Type="String" />
            <asp:Parameter Name="PrecoSemIva" Type="String" />
            <asp:Parameter Name="Data_Reembolso" Type="String" />
            <asp:Parameter Name="Data_Compra" Type="String" />
            <asp:Parameter Name="Quantida_Devolvida" Type="String" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Nome" Type="String" />
            <asp:Parameter Name="original_Referencia" Type="String" />
            <asp:Parameter Name="original_PVP" Type="String" />
            <asp:Parameter Name="original_PrecoSemIva" Type="String" />
            <asp:Parameter Name="original_Data_Reembolso" Type="String" />
            <asp:Parameter Name="original_Data_Compra" Type="String" />
            <asp:Parameter Name="original_Quantida_Devolvida" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br /></center>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Text="Nome do Artigo:"></asp:Label>
    &nbsp;<asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label10" runat="server" Text="PVP:"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" TextMode="Number" BorderStyle="Solid"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Label ID="Label9" runat="server" Text="Referencia:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label11" runat="server" Text="Preço sem Iva:"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" TextMode="Number" BorderStyle="Solid"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label12" runat="server" Text="Data Reembolso:"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server" TextMode="Date" BorderStyle="Solid"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label15" runat="server" Text="Quantidade Devolvida"></asp:Label>
    <asp:TextBox ID="TextBox7" runat="server" TextMode="Number" BorderStyle="Solid"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:Label ID="Label13" runat="server" Text="Data de Compra:"></asp:Label>
    <asp:TextBox ID="TextBox6" runat="server" TextMode="Date" BorderStyle="Solid"></asp:TextBox>
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="Adicionar" runat="server" OnClick="Adicionar_Click" Text="Adicionar" BackColor="#33CC33" BorderStyle="Solid" />
    &nbsp;<asp:Button ID="editar" runat="server" OnClick="editar_Click" Text="Editar" BorderStyle="Solid" Width="88px" />
    &nbsp;<br />
<%--<asp:Button ID="txt_add" runat="server" Text="Adicionar" Width="77px" OnClick="Button2_Click" />
<asp:Button ID="txt_edit" runat="server" Text="Editar" Width="63px" OnClick="txt_edit_Click" />
<asp:Button ID="txt_remov" runat="server" Text="Remover" Width="80px" OnClick="txt_remov_Click" />--%>
<br />

</asp:Content>
