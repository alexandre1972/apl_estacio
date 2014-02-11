<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
CodeBehind="sitday.aspx.cs" Inherits="EstacioCob.WebForm2" Culture="auto" UICulture="auto" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <fieldset><legend> Filtro de consulta </legend>
    <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" Width="70px"></asp:TextBox>
    <asp:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" 
        Enabled="True" TargetControlID="TextBox1">
    </asp:CalendarExtender>
</fieldset>
<fieldset><legend> Pesquisa </legend>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="TOTAL_LIGACOES" HeaderText="TOTAL_LIGACOES" 
                ReadOnly="True" SortExpression="TOTAL_LIGACOES" />
            <asp:BoundField DataField="OPERADOR" HeaderText="OPERADOR" ReadOnly="True" 
                SortExpression="OPERADOR" />
            <asp:BoundField DataField="DATA" HeaderText="DATA" ReadOnly="True" 
                SortExpression="DATA" />
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
        ConnectionString="<%$ ConnectionStrings:mdestacioConnectionString %>" SelectCommand="SELECT count([Id])TOTAL_LIGACOES
	  ,UPPER(USUARIO) OPERADOR
      ,CONVERT(CHAR,[dt_contato],103)DATA
  FROM [fap].[dbo].[Contato_aluno]
  WHERE CONVERT(CHAR,[dt_contato],103)=@t
  GROUP BY CONVERT(CHAR,[dt_contato],103),USUARIO
  order by CONVERT(CHAR,[dt_contato],103)DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="t" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    </fieldset>
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnableScriptGlobalization="true" EnableScriptLocalization="true">
    </asp:ScriptManager>
</asp:Content>
