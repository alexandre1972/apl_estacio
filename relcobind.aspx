<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="relcobind.aspx.cs" Inherits="EstacioCob.relcobind" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <asp:DropDownList ID="ddltidpo" runat="server">
        <asp:ListItem Value="1">Indevida</asp:ListItem>
        <asp:ListItem Value="2">Não vai pagar</asp:ListItem>
    </asp:DropDownList>

    <asp:Button ID="btnbuscar" runat="server" onclick="Button1_Click" 
        style="height: 26px" Text="Buscar" />

    <asp:GridView ID="griddados" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333" AllowPaging="True" BorderStyle="Solid" 
        onpageindexchanging="griddados_PageIndexChanging">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="matricula" HeaderText="Matrícula" />
            <asp:BoundField DataField="obs" HeaderText="OBS" />
            <asp:BoundField DataField="usuario" HeaderText="Usuário" />
            <asp:BoundField DataField="Opcao" HeaderText="Opção" />
            <asp:BoundField DataField="dt_contato" DataFormatString="{0:d}" 
                HeaderText="Dt_Contato" HtmlEncode="False" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>

</asp:Content>
