<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="devedores.aspx.cs" Inherits="EstacioCob.devedores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <fieldset><legend>Relação de devedores</legend>

    <asp:GridView ID="GridDados" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="matricula" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" AllowPaging="True" 
        AllowSorting="True" PageSize="15" Font-Size="X-Small">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="matricula" 
                DataNavigateUrlFormatString="contato.aspx?id={0}" Text="Matrícula" 
                DataTextField="Matricula" HeaderText="Matrícula" />
            <asp:BoundField DataField="nome" HeaderText="Nome" SortExpression="nome" />
            <asp:BoundField DataField="fone" HeaderText="Fone" SortExpression="fone" />
            <asp:BoundField DataField="fone2" HeaderText="Fone 2" SortExpression="fone2" />
            <asp:BoundField DataField="curso" HeaderText="Curso" SortExpression="curso" />
            <asp:BoundField DataField="turno" HeaderText="Turno" SortExpression="turno" />
            <asp:BoundField DataField="valor" HeaderText="Débito" SortExpression="valor" 
                DataFormatString="{0:c}" HtmlEncode="False" />
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
        ConnectionString="<%$ ConnectionStrings:fapConnectionString %>" SelectCommand="SELECT [matricula]
      ,[nome]
      ,[fone]
      ,[fone2]
      ,[email]
      ,[curso]
      ,[turno]
      ,[valor]
  FROM [fap].[dbo].[carga]
  where not exists(select 1 
					from Contato_aluno c 
					where c.matricula=[carga].matricula 
					and CONVERT(CHAR,[dt_contato],102)=CONVERT(CHAR,GETDATE(),102 ))
  ORDER BY [valor]DESC"></asp:SqlDataSource>

</fieldset>
</asp:Content>
