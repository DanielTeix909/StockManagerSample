﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Eventos.aspx.cs" Inherits="Account_Eventos" %>

<script runat="server">

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Adicionar Local de Venda" Font-Bold="True" Font-Size="Medium"></asp:Label>
<br />
    <br />
    <center>
    <asp:GridView ID="grelhasock" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="599px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnRowDeleting="grelhasock_RowDeleting">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Evento_Nome" HeaderText="Evento_Nome" SortExpression="Evento_Nome" />
            <asp:BoundField DataField="Evento_Data" HeaderText="Evento_Data" SortExpression="Evento_Data" />
            <asp:BoundField DataField="Evento_Local" HeaderText="Evento_Local" SortExpression="Evento_Local" />
            <asp:CheckBoxField DataField="Evento_IMG" HeaderText="Evento_IMG" SortExpression="Evento_IMG" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView></center>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Eventos] WHERE [Id] = @original_Id AND [Evento_Nome] = @original_Evento_Nome AND [Evento_Data] = @original_Evento_Data AND [Evento_Local] = @original_Evento_Local AND [Evento_IMG] = @original_Evento_IMG" InsertCommand="INSERT INTO [Eventos] ([Id], [Evento_Nome], [Evento_Data], [Evento_Local], [Evento_IMG]) VALUES (@Id, @Evento_Nome, @Evento_Data, @Evento_Local, @Evento_IMG)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Eventos]" UpdateCommand="UPDATE [Eventos] SET [Evento_Nome] = @Evento_Nome, [Evento_Data] = @Evento_Data, [Evento_Local] = @Evento_Local, [Evento_IMG] = @Evento_IMG WHERE [Id] = @original_Id AND [Evento_Nome] = @original_Evento_Nome AND [Evento_Data] = @original_Evento_Data AND [Evento_Local] = @original_Evento_Local AND [Evento_IMG] = @original_Evento_IMG">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Evento_Nome" Type="String" />
            <asp:Parameter Name="original_Evento_Data" Type="DateTime" />
            <asp:Parameter Name="original_Evento_Local" Type="String" />
            <asp:Parameter Name="original_Evento_IMG" Type="Boolean" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="Evento_Nome" Type="String" />
            <asp:Parameter Name="Evento_Data" Type="DateTime" />
            <asp:Parameter Name="Evento_Local" Type="String" />
            <asp:Parameter Name="Evento_IMG" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Evento_Nome" Type="String" />
            <asp:Parameter Name="Evento_Data" Type="DateTime" />
            <asp:Parameter Name="Evento_Local" Type="String" />
            <asp:Parameter Name="Evento_IMG" Type="Boolean" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Evento_Nome" Type="String" />
            <asp:Parameter Name="original_Evento_Data" Type="DateTime" />
            <asp:Parameter Name="original_Evento_Local" Type="String" />
            <asp:Parameter Name="original_Evento_IMG" Type="Boolean" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Label ID="Label3" runat="server" Text="Nome do Evento:"></asp:Label>
    <asp:TextBox ID="txtnevento" runat="server" BorderStyle="Solid"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Text="Local do Evento:"></asp:Label>
    <asp:TextBox ID="txtlocal" runat="server" BorderStyle="Solid"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text="Data do Evento:"></asp:Label>
    <asp:TextBox ID="txtdataevento" runat="server" BorderStyle="Solid"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label6" runat="server" Text="Imagem do Evento:"></asp:Label>
    <asp:TextBox ID="txtlinkimg" runat="server" BorderStyle="Solid"></asp:TextBox>
    <br />
    &nbsp;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="txt_add" runat="server" Text="Adicionar" Width="77px" OnClick="Button2_Click" BackColor="#33CC33" BorderStyle="Solid" />
&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="TextBox4" runat="server" Text="Editar" Width="81px" OnClick="txt_edit_Click" BorderStyle="Solid" />
&nbsp;&nbsp;&nbsp;
<br />
<br />
<br />

</asp:Content>
