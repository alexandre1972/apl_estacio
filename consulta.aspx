<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="consulta.aspx.cs" Inherits="EstacioCob.consulta" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <fieldset><legend>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    Consulta</legend>

    <asp:TextBox ID="txtmat" runat="server"></asp:TextBox>
    <asp:FilteredTextBoxExtender ID="txtmat_FilteredTextBoxExtender" runat="server" 
        Enabled="True" FilterType="Numbers" TargetControlID="txtmat">
    </asp:FilteredTextBoxExtender>
    <asp:Button ID="Button1" runat="server" Text="Buscar" />
    <br />
    <br />
    <asp:GridView ID="GridConsulta" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="matricula" DataSourceID="SqlDataSource1" 
        ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="matricula" 
                DataNavigateUrlFormatString="contato.aspx?id={0}" DataTextField="matricula" 
                HeaderText="Matrícula" Text="Matrícula" />
            <asp:BoundField DataField="nome" HeaderText="Nome" SortExpression="nome" />
            <asp:BoundField DataField="fone" HeaderText="Fone" SortExpression="fone" />
            <asp:BoundField DataField="fone2" HeaderText="Fone 2" SortExpression="fone2" />
            <asp:BoundField DataField="email" HeaderText="E-mail" SortExpression="email" />
            <asp:BoundField DataField="curso" HeaderText="Curso" SortExpression="curso" />
            <asp:BoundField DataField="turno" HeaderText="Turno" SortExpression="turno" />
            <asp:BoundField DataField="valor" DataFormatString="{0:c}" HeaderText="Débito" 
                HtmlEncode="False" SortExpression="valor" />
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
  where  matricula=@mat">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtmat" Name="mat" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>

</fieldset>
<fieldset><legend>Histórico</legend>

    <asp:GridView ID="Gridhist" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="dt_contato" DataFormatString="{0:d}" 
                HeaderText="Contato" HtmlEncode="False" SortExpression="dt_contato" />
            <asp:BoundField DataField="opcao" HeaderText="Opção" SortExpression="opcao" />
            <asp:BoundField DataField="dt_prev" DataFormatString="{0:d}" 
                HeaderText="Previsão" HtmlEncode="False" SortExpression="dt_prev" />
            <asp:BoundField DataField="obs" HeaderText="Observação" SortExpression="obs" />
            <asp:BoundField DataField="usuario" HeaderText="Operador" 
                SortExpression="usuario" />
            <asp:HyperLinkField DataNavigateUrlFields="matricula" 
                DataNavigateUrlFormatString="contato.aspx?id={0}" DataTextField="matricula" 
                HeaderText="Matrícula" Text="Matrícula" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:fapConnectionString %>" SelectCommand="SELECT  [matricula]
      ,[dt_contato]
      ,[obs]
      ,[opcao]
      ,[dt_prev]
      ,[usuario]
  FROM [fap].[dbo].[Contato_aluno]
where matricula=@mat">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtmat" Name="mat" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>

</fieldset>
</asp:Content>
