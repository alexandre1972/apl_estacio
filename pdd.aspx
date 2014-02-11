<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pdd.aspx.cs" Inherits="EstacioCob.pdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <fieldset><legend>PDD</legend>

    <asp:GridView ID="Gridpdd" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataSourceID="SqlDataSource1" Font-Size="X-Small" ForeColor="#333333" 
        GridLines="None" PageSize="15" DataKeyNames="Matrícula">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="Matrícula" 
                DataNavigateUrlFormatString="contato.aspx?id={0}" DataTextField="Matrícula" 
                HeaderText="Matrícula" Text="Matrícula" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            <asp:BoundField DataField="Telefone1" HeaderText="Fone" 
                SortExpression="Telefone1" />
            <asp:BoundField DataField="Telefone2" HeaderText="Fone 2" 
                SortExpression="Telefone2" />
            <asp:BoundField DataField="email" 
                HeaderText="E-mail" SortExpression="email" />
            <asp:BoundField DataField="Datavenc" HeaderText="Vencimento" 
                SortExpression="Datavenc" DataFormatString="{0:d}" HtmlEncode="False" />
            <asp:BoundField DataField="Tipodebito" HeaderText="Tipo Deb" 
                SortExpression="Tipodebito" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
            <asp:BoundField DataField="Curso" HeaderText="Curso" SortExpression="Curso" />
            <asp:BoundField DataField="Turno" HeaderText="Turno" SortExpression="Turno" />
            <asp:BoundField DataField="BRL" DataFormatString="{0:c}" HeaderText="Valor" 
                HtmlEncode="False" SortExpression="BRL" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:fapConnectionString %>" SelectCommand="SELECT distinct D.[Matrícula]
	  ,D.[Nome]
      ,D.[Telefone1]
      ,D.[Telefone2]
      ,D.[email]
      ,D.[Datavenc]
      ,D.[Tipodebito]
      ,D.[Status]
      ,D.[Curso]
      ,D.[Turno]
      ,D.[BRL]
  FROM [fap].[dbo].[devedores]D
  WHERE [Datavenc]&gt;='2013-03-01'
 -- AND 
	--[Datavenc]&lt;='2013-03-30' 
  AND 
		NOT EXISTS(SELECT 1 FROM Contato_aluno B WHERE  D.Matrícula=B.matricula AND efetivou IS NULL)
AND 
D.[Status]='ATIVO'
and D.[Tipodebito] = ('MENSALIDADE') 
ORDER BY D.[BRL] desc"></asp:SqlDataSource>

</fieldset>
</asp:Content>
