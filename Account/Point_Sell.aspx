<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Point_Sell.aspx.cs" Inherits="Account_SpotSell" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Adicionar Local de Venda" Font-Bold="True" Font-Size="Medium"></asp:Label>
<br />
    <br />
    <center>
    <asp:GridView ID="grelhasock" runat="server" Height="183px" Width="583px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" DataKeyNames="Id" OnRowDeleting="grelhasock_RowDeleting">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
        <asp:BoundField DataField="Local_Nome" HeaderText="Local_Nome" SortExpression="Local_Nome" />
        <asp:BoundField DataField="Local_Zona" HeaderText="Local_Zona" SortExpression="Local_Zona" />
    </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
</asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Locais_Venda] WHERE [Id] = @original_Id AND [Local_Nome] = @original_Local_Nome AND [Local_Zona] = @original_Local_Zona" InsertCommand="INSERT INTO [Locais_Venda] ([Local_Nome], [Local_Zona]) VALUES (@Local_Nome, @Local_Zona)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Locais_Venda]" UpdateCommand="UPDATE [Locais_Venda] SET [Local_Nome] = @Local_Nome, [Local_Zona] = @Local_Zona WHERE [Id] = @original_Id AND [Local_Nome] = @original_Local_Nome AND [Local_Zona] = @original_Local_Zona">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Local_Nome" Type="String" />
                <asp:Parameter Name="original_Local_Zona" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Local_Nome" Type="String" />
                <asp:Parameter Name="Local_Zona" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Local_Nome" Type="String" />
                <asp:Parameter Name="Local_Zona" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Local_Nome" Type="String" />
                <asp:Parameter Name="original_Local_Zona" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </center>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Local de venda:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text="Zona de Venda:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid"></asp:TextBox>
    <br />
    <br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="txt_add" runat="server" Text="Adicionar" Width="77px" OnClick="Button2_Click" BackColor="Red" BorderStyle="Solid" />
&nbsp;
<asp:Button ID="TextBox4" runat="server" Text="Editar" Width="81px" OnClick="txt_edit_Click" BorderStyle="Solid" />
&nbsp;
<br />
    <br />
<br />

</asp:Content>
