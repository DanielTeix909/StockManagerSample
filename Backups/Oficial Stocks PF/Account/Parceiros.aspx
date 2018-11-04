<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Parceiros.aspx.cs" Inherits="Account_Parceiros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <asp:Label ID="Label1" runat="server" Text="Adicionar Local de Venda"></asp:Label>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
    <asp:GridView ID="grelhasock" runat="server" Height="183px" Width="529px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="Id">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="True" />
        <asp:BoundField DataField="nome_empresa" HeaderText="nome_empresa" SortExpression="nome_empresa" />
        <asp:BoundField DataField="referencia_empresa" HeaderText="referencia_empresa" SortExpression="referencia_empresa" />
        <asp:BoundField DataField="tipo_servico" HeaderText="tipo_servico" SortExpression="tipo_servico" />
        <asp:BoundField DataField="LocalID" HeaderText="LocalID" SortExpression="LocalID" />
    </Columns>
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [parceiros] WHERE [Id] = @original_Id AND [nome_empresa] = @original_nome_empresa AND [referencia_empresa] = @original_referencia_empresa AND [tipo_servico] = @original_tipo_servico AND [LocalID] = @original_LocalID" InsertCommand="INSERT INTO [parceiros] ([Id], [nome_empresa], [referencia_empresa], [tipo_servico], [LocalID]) VALUES (@Id, @nome_empresa, @referencia_empresa, @tipo_servico, @LocalID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [parceiros]" UpdateCommand="UPDATE [parceiros] SET [nome_empresa] = @nome_empresa, [referencia_empresa] = @referencia_empresa, [tipo_servico] = @tipo_servico, [LocalID] = @LocalID WHERE [Id] = @original_Id AND [nome_empresa] = @original_nome_empresa AND [referencia_empresa] = @original_referencia_empresa AND [tipo_servico] = @original_tipo_servico AND [LocalID] = @original_LocalID">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_nome_empresa" Type="String" />
            <asp:Parameter Name="original_referencia_empresa" Type="String" />
            <asp:Parameter Name="original_tipo_servico" Type="String" />
            <asp:Parameter Name="original_LocalID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="nome_empresa" Type="String" />
            <asp:Parameter Name="referencia_empresa" Type="String" />
            <asp:Parameter Name="tipo_servico" Type="String" />
            <asp:Parameter Name="LocalID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nome_empresa" Type="String" />
            <asp:Parameter Name="referencia_empresa" Type="String" />
            <asp:Parameter Name="tipo_servico" Type="String" />
            <asp:Parameter Name="LocalID" Type="Int32" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_nome_empresa" Type="String" />
            <asp:Parameter Name="original_referencia_empresa" Type="String" />
            <asp:Parameter Name="original_tipo_servico" Type="String" />
            <asp:Parameter Name="original_LocalID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Empresa:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text="Referencia:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Text="Tipo de Serviço:"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <br />
    <br />
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