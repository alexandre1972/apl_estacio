<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
CodeBehind="resumotipoday.aspx.cs" Inherits="EstacioCob.resumotipoday" Culture="auto" UICulture="auto" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <fieldset><legend> Filtro </legend>
    <asp:TextBox ID="txtdt" runat="server" AutoPostBack="True" Width="70px"></asp:TextBox>
    <asp:CalendarExtender ID="txtdt_CalendarExtender" runat="server" Enabled="True" 
        TargetControlID="txtdt">
    </asp:CalendarExtender>
</fieldset>
<fieldset><legend> Resultado </legend>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="TOTAL" HeaderText="Qtd Contato" ReadOnly="True" 
                SortExpression="TOTAL" />
            <asp:BoundField DataField="dt_contato" DataFormatString="{0:d}" 
                HeaderText="Dt Contato" HtmlEncode="False" ReadOnly="True" 
                SortExpression="dt_contato" />
            <asp:BoundField DataField="opcao" HeaderText="Opções" SortExpression="opcao" />
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
        ConnectionString="<%$ ConnectionStrings:fapConnectionString4 %>" SelectCommand="SELECT count([ID])TOTAL
      ,CONVERT(CHAR,[dt_contato],103)[dt_contato]
      ,[opcao]
  FROM [fap].[dbo].[Contato_aluno]
  WHERE CONVERT(CHAR,[dt_contato],103)=@t
  GROUP BY [dt_contato]
      ,[opcao]
  ORDER BY count([ID]) DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtdt" Name="t" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
</fieldset>
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnableScriptGlobalization="true" EnableScriptLocalization="true">
    </asp:ScriptManager>
</asp:Content>
