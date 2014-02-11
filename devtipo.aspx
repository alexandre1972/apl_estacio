<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="devtipo.aspx.cs" Inherits="EstacioCob.devtipo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <fieldset><legend>Devedores por Tipo</legend>
    <asp:RadioButtonList ID="rblista" runat="server" RepeatDirection="Horizontal">
        <asp:ListItem Selected="True" Value="1">Todos</asp:ListItem>
        <asp:ListItem Value="2">Veteranos</asp:ListItem>
        <asp:ListItem Value="3">Calouros</asp:ListItem>
        <asp:ListItem Value="4">EAD</asp:ListItem>
    </asp:RadioButtonList>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Buscar" />
    <br />
    <br />
    <asp:GridView ID="Griddados" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" onpageindexchanging="Griddados_PageIndexChanging" 
        PageSize="15" Font-Size="X-Small">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="matricula" 
                DataNavigateUrlFormatString="contato.aspx?id={0}" DataTextField="Matricula" />
            <asp:BoundField DataField="nome" HeaderText="Nome" />
            <asp:BoundField DataField="fone" HeaderText="Fone" />
            <asp:BoundField DataField="fone2" HeaderText="Fone 2" />
            <asp:BoundField DataField="email" HeaderText="E-mail" />
            <asp:BoundField DataField="curso" HeaderText="Curso" />
            <asp:BoundField DataField="valor" DataFormatString="{0:c}" HeaderText="Débito" 
                HtmlEncode="False" />
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
</fieldset>
</asp:Content>
