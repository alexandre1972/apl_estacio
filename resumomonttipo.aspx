<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="resumomonttipo.aspx.cs" Inherits="EstacioCob.resumomonttipo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <fieldset><legend>Filtro</legend>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource1" DataTextField="Column1" DataValueField="Column1">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:fapConnectionString4 %>" 
        SelectCommand="SELECT DISTINCT month([dt_contato]) FROM [fap].[dbo].[Contato_aluno] ORDER BY month([dt_contato])">
    </asp:SqlDataSource>
    </fieldset>
<fieldset><legend>Resultado</legend>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="TOTAL" HeaderText="Qtd" ReadOnly="True" 
                SortExpression="TOTAL" />
            <asp:BoundField DataField="opcao" HeaderText="Opção" SortExpression="opcao" />
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
        ConnectionString="<%$ ConnectionStrings:fapConnectionString4 %>" SelectCommand="SELECT count([ID])TOTAL
      ,[opcao]
  FROM [fap].[dbo].[Contato_aluno]
  WHERE MONTH([dt_contato])=@t
  GROUP BY [opcao]
  ORDER BY count([ID]) DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="t" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    </fieldset>
</asp:Content>
