<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Artigos.aspx.cs" Inherits="Artigos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Text="Spot de Venda:" Font-Size="Medium"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Local_Nome" DataValueField="Local_Nome" Height="23px" Width="174px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" AutoPostBack="True" BackColor="Black" ForeColor="White">
    </asp:DropDownList>
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Local_Nome] FROM [Locais_Venda]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:GridView ID="grelhasock" runat="server" OnSelectedIndexChanged="grelhasock_SelectedIndexChanged" Width="515px" AutoGenerateColumns="False" AutoGenerateSelectButton="True" OnSelectedIndexChanging="grelhasock_SelectedIndexChanging" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnRowEditing="grelhasock_RowEditing" OnRowUpdating="grelhasock_RowUpdating" OnDataBound="grelhasock_DataBound" OnRowDataBound="grelhasock_RowDataBound" OnRowDeleted="grelhasock_RowDeleted" OnRowDeleting="grelhasock_RowDeleting" DataKeyNames="Id_Artigo" DataSourceID="SqlDataSource2" OnPageIndexChanged="grelhasock_PageIndexChanged">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id_Artigo" HeaderText="Id_Artigo" InsertVisible="False" ReadOnly="True" SortExpression="Id_Artigo" />
            <asp:BoundField DataField="Artigo_Nome" HeaderText="Artigo_Nome" SortExpression="Artigo_Nome" />
            <asp:BoundField DataField="Artigo_Preco" HeaderText="Artigo_Preco" SortExpression="Artigo_Preco" />
            <asp:BoundField DataField="Artigo_Referencia" HeaderText="Artigo_Referencia" SortExpression="Artigo_Referencia" />
            <asp:BoundField DataField="Artigo_PVP" HeaderText="Artigo_PVP" SortExpression="Artigo_PVP" />
            <asp:BoundField DataField="Artigo_PrecoSemIva" HeaderText="Artigo_PrecoSemIva" SortExpression="Artigo_PrecoSemIva" />
            <asp:BoundField DataField="Artigo_Quantidade" HeaderText="Artigo_Quantidade" SortExpression="Artigo_Quantidade" />
            <asp:BoundField DataField="Local_Nome" HeaderText="Local_Nome" SortExpression="Local_Nome" />
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
    <hr />
    <br />

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <asp:Label ID="Label1" runat="server" Text="Artigos" Font-Bold="True" Font-Size="Large"></asp:Label>
<br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Label ID="Label3" runat="server" Text="Nome do Artigo:"></asp:Label>
    <asp:TextBox ID="txtnartigo" runat="server" BorderStyle="Solid"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Text="Referencia do Artigo:"></asp:Label>
    <asp:TextBox ID="txtreferencia" runat="server" BorderStyle="Solid"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text="Preço do Artigo:"></asp:Label>
    <asp:TextBox ID="txtpreco" runat="server" BorderStyle="Solid"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label6" runat="server" Text="PVP do Artigo:"></asp:Label>
    <asp:TextBox ID="txtpvp" runat="server" BorderStyle="Solid"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Label ID="Label7" runat="server" Text="Preço sem Iva:"></asp:Label>
    &nbsp;
    <asp:TextBox ID="txtsemiva" runat="server" BorderStyle="Solid"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label9" runat="server" Text="Numero de peças:"></asp:Label>
    <asp:Button ID="Button2" runat="server" BorderColor="#993300" Text="-" Width="27px" Height="21px" OnClick="Button2_Click1" />
    <asp:TextBox ID="txtstock" runat="server" BorderStyle="Solid" Width="120px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="+" Width="27px" BorderColor="#663300" Height="21px" />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
<asp:Button ID="txt_add" runat="server" Text="Adicionar" Width="89px" OnClick="Button2_Click" BackColor="#33CC33" BorderStyle="Solid" />
    &nbsp;
<asp:Button ID="txt_edit" runat="server" Text="Editar" Width="87px" OnClick="txt_edit_Click" BorderStyle="Solid" />
    &nbsp;&nbsp;<br />
<br />
<br />
<br />
<br />
</asp:Content>
