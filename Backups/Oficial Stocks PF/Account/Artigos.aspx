<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Artigos.aspx.cs" Inherits="Artigos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Text="Spot de Venda:"></asp:Label>
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Local_Nome" DataValueField="Local_Nome" Height="23px" Width="174px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" AutoPostBack="True">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Artigo_Nome], [Artigo_Preco], [Artigo_Referencia], [Artigo_PVP], [Artigo_PrecoSemIva], [Artigo_Quantidade], [Local_Nome] FROM [Artigos]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <asp:GridView ID="grelhasock" runat="server" OnSelectedIndexChanged="grelhasock_SelectedIndexChanged" Width="515px" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="Id_Artigo" DataSourceID="SqlDataSource2" OnSelectedIndexChanging="grelhasock_SelectedIndexChanging">
        <Columns>
            <asp:BoundField DataField="Id_Artigo" HeaderText="Id_Artigo" InsertVisible="False" ReadOnly="True" SortExpression="Id_Artigo" />
            <asp:BoundField DataField="Artigo_Nome" HeaderText="Artigo_Nome" SortExpression="Artigo_Nome" />
            <asp:BoundField DataField="Artigo_Preco" HeaderText="Artigo_Preco" SortExpression="Artigo_Preco" />
            <asp:BoundField DataField="Artigo_Referencia" HeaderText="Artigo_Referencia" SortExpression="Artigo_Referencia" />
            <asp:BoundField DataField="Artigo_PVP" HeaderText="Artigo_PVP" SortExpression="Artigo_PVP" />
            <asp:BoundField DataField="Artigo_PrecoSemIva" HeaderText="Artigo_PrecoSemIva" SortExpression="Artigo_PrecoSemIva" />
            <asp:BoundField DataField="Artigo_Quantidade" HeaderText="Artigo_Quantidade" SortExpression="Artigo_Quantidade" />
            <asp:BoundField DataField="Local_Nome" HeaderText="Local_Nome" SortExpression="Local_Nome" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Artigos] WHERE [Id_Artigo] = @original_Id_Artigo AND [Artigo_Nome] = @original_Artigo_Nome AND [Artigo_Preco] = @original_Artigo_Preco AND [Artigo_Referencia] = @original_Artigo_Referencia AND [Artigo_PVP] = @original_Artigo_PVP AND [Artigo_PrecoSemIva] = @original_Artigo_PrecoSemIva AND [Artigo_Quantidade] = @original_Artigo_Quantidade AND [Local_Nome] = @original_Local_Nome" InsertCommand="INSERT INTO [Artigos] ([Artigo_Nome], [Artigo_Preco], [Artigo_Referencia], [Artigo_PVP], [Artigo_PrecoSemIva], [Artigo_Quantidade], [Local_Nome]) VALUES (@Artigo_Nome, @Artigo_Preco, @Artigo_Referencia, @Artigo_PVP, @Artigo_PrecoSemIva, @Artigo_Quantidade, @Local_Nome)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Artigos]" UpdateCommand="UPDATE [Artigos] SET [Artigo_Nome] = @Artigo_Nome, [Artigo_Preco] = @Artigo_Preco, [Artigo_Referencia] = @Artigo_Referencia, [Artigo_PVP] = @Artigo_PVP, [Artigo_PrecoSemIva] = @Artigo_PrecoSemIva, [Artigo_Quantidade] = @Artigo_Quantidade, [Local_Nome] = @Local_Nome WHERE [Id_Artigo] = @original_Id_Artigo AND [Artigo_Nome] = @original_Artigo_Nome AND [Artigo_Preco] = @original_Artigo_Preco AND [Artigo_Referencia] = @original_Artigo_Referencia AND [Artigo_PVP] = @original_Artigo_PVP AND [Artigo_PrecoSemIva] = @original_Artigo_PrecoSemIva AND [Artigo_Quantidade] = @original_Artigo_Quantidade AND [Local_Nome] = @original_Local_Nome">
        <DeleteParameters>
            <asp:Parameter Name="original_Id_Artigo" Type="Int32" />
            <asp:Parameter Name="original_Artigo_Nome" Type="String" />
            <asp:Parameter Name="original_Artigo_Preco" Type="String" />
            <asp:Parameter Name="original_Artigo_Referencia" Type="String" />
            <asp:Parameter Name="original_Artigo_PVP" Type="String" />
            <asp:Parameter Name="original_Artigo_PrecoSemIva" Type="String" />
            <asp:Parameter Name="original_Artigo_Quantidade" Type="String" />
            <asp:Parameter Name="original_Local_Nome" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Artigo_Nome" Type="String" />
            <asp:Parameter Name="Artigo_Preco" Type="String" />
            <asp:Parameter Name="Artigo_Referencia" Type="String" />
            <asp:Parameter Name="Artigo_PVP" Type="String" />
            <asp:Parameter Name="Artigo_PrecoSemIva" Type="String" />
            <asp:Parameter Name="Artigo_Quantidade" Type="String" />
            <asp:Parameter Name="Local_Nome" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Artigo_Nome" Type="String" />
            <asp:Parameter Name="Artigo_Preco" Type="String" />
            <asp:Parameter Name="Artigo_Referencia" Type="String" />
            <asp:Parameter Name="Artigo_PVP" Type="String" />
            <asp:Parameter Name="Artigo_PrecoSemIva" Type="String" />
            <asp:Parameter Name="Artigo_Quantidade" Type="String" />
            <asp:Parameter Name="Local_Nome" Type="String" />
            <asp:Parameter Name="original_Id_Artigo" Type="Int32" />
            <asp:Parameter Name="original_Artigo_Nome" Type="String" />
            <asp:Parameter Name="original_Artigo_Preco" Type="String" />
            <asp:Parameter Name="original_Artigo_Referencia" Type="String" />
            <asp:Parameter Name="original_Artigo_PVP" Type="String" />
            <asp:Parameter Name="original_Artigo_PrecoSemIva" Type="String" />
            <asp:Parameter Name="original_Artigo_Quantidade" Type="String" />
            <asp:Parameter Name="original_Local_Nome" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <asp:Label ID="Label1" runat="server" Text="Artigos" Font-Bold="True" Font-Size="Large"></asp:Label>
<br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Nome do Artigo:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text="Preço do Artigo:"></asp:Label>
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
    <asp:Label ID="Label7" runat="server" Text="Preço sem Iva:"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label9" runat="server" Text="Numero de peças:"></asp:Label>
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    <br />
    <br />
<br />
<asp:Button ID="txt_add" runat="server" Text="Adicionar" Width="77px" OnClick="Button2_Click" />
<asp:Button ID="txt_edit" runat="server" Text="Editar" Width="63px" OnClick="txt_edit_Click" />
<asp:Button ID="txt_remov" runat="server" Text="Remover" Width="80px" OnClick="txt_remov_Click" />
<br />
<br />
<br />
<br />
<br />
</asp:Content>
