<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="relgeral.aspx.cs" Inherits="EstacioCob.relgeral" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<fieldset><legend>Buscar aluno</legend>
    <asp:TextBox ID="txtbuscar" runat="server"></asp:TextBox>
    <asp:AutoCompleteExtender ID="txtbuscar_AutoCompleteExtender" runat="server" 
        CompletionInterval="500" DelimiterCharacters="" Enabled="True" 
        ServiceMethod="RetornaAluno" ServicePath="~/wsaluno.asmx" 
        TargetControlID="txtbuscar">
    </asp:AutoCompleteExtender>
    <asp:FilteredTextBoxExtender ID="txtbuscar_FilteredTextBoxExtender" 
        runat="server" Enabled="True" FilterType="Numbers" TargetControlID="txtbuscar">
    </asp:FilteredTextBoxExtender>
    <asp:Button ID="btnbuscar"
        runat="server" Text="Buscar" onclick="btnbuscar_Click" />
</fieldset>
<fieldset><legend> Débito aluno</legend>
    <asp:GridView ID="Gridrel" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" AutoGenerateColumns="False" Font-Size="X-Small">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="nome" HeaderText="Nome" />
            <asp:BoundField DataField="Telefone1" HeaderText="Fone" />
            <asp:BoundField DataField="Telefone2" HeaderText="Fone 2" />
            <asp:BoundField DataField="Datavenc" DataFormatString="{0:d}" 
                HeaderText="Vencimento" />
            <asp:BoundField DataField="Tipodebito" HeaderText="Tipo Deb" />
            <asp:BoundField DataField="Status" HeaderText="Status" />
            <asp:BoundField DataField="Curso" HeaderText="Curso" />
            <asp:BoundField DataField="Turno" HeaderText="Turno" />
            <asp:BoundField DataField="BRL" DataFormatString="{0:c}" HeaderText="Valor" 
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
