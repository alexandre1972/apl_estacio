<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
CodeBehind="pesq.aspx.cs" Inherits="EstacioCob.pesq" Culture="auto" UICulture="auto"%>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <fieldset><legend>Pesquisa</legend>

    <asp:DropDownList ID="ddlopcao" runat="server">
        <asp:ListItem Selected="True">Fies</asp:ListItem>
        <asp:ListItem>Negociar</asp:ListItem>
    </asp:DropDownList>
    <asp:TextBox ID="txtdata" runat="server" Width="80px"></asp:TextBox>
    <asp:CalendarExtender ID="txtdata_CalendarExtender" runat="server" 
        Enabled="True" PopupButtonID="Calender" TargetControlID="txtdata">
    </asp:CalendarExtender>
    <asp:ImageButton ID="Calender" runat="server" ImageUrl="~/Image/Calendar.png" />

    <br />
    <asp:Button ID="btnbuscar" runat="server" Text="Buscar" 
        onclick="btnbuscar_Click" />
    <br />
    <br />
    <asp:GridView ID="griddados" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" AllowPaging="True" AllowSorting="True" 
        onrowcommand="griddados_RowCommand">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
                ReadOnly="True" SortExpression="Id" />
            <asp:HyperLinkField DataNavigateUrlFields="matricula" 
                DataNavigateUrlFormatString="contato.aspx?id={0}" DataTextField="matricula" 
                HeaderText="Matrícula" Text="Matrícula" />
            <asp:BoundField DataField="Id" HeaderText="Id" 
                SortExpression="Id" InsertVisible="False" ReadOnly="True" 
                Visible="False" />
            <asp:BoundField DataField="dt_contato" HeaderText="Contato" 
                SortExpression="dt_contato" DataFormatString="{0:d}" HtmlEncode="False" />
            <asp:BoundField DataField="obs" HeaderText="Observação" SortExpression="obs" />
            <asp:BoundField DataField="opcao" HeaderText="Opção" 
                SortExpression="opcao" />
            <asp:BoundField DataField="usuario" HeaderText="Operador" 
                SortExpression="usuario" />
            <asp:ButtonField ButtonType="Button" CommandName="confirma" Text="Confirmar" 
                HeaderText="Confirmação " />
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
        ConnectionString="<%$ ConnectionStrings:fapConnectionString %>" SelectCommand="	SELECT 
[Id]
,[matricula]
		  ,[dt_contato]
		  ,[obs]
		  ,[opcao]
		  ,[dt_prev]
,CONVERT(VARCHAR(10), [dt_prev], 105)previsao
		  ,[usuario]
		  ,[efetivou]
	  FROM [fap].[dbo].[Contato_aluno]
	  WHERE  CONVERT(VARCHAR(24),[dt_prev],103)=@DT
		  AND [opcao]=@opcao
and [efetivou]is null">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtdata" Name="DT" PropertyName="Text" />
            <asp:ControlParameter ControlID="ddlopcao" Name="OPCAO" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>

</fieldset>
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnableScriptGlobalization="true" EnableScriptLocalization="true">
    </asp:ScriptManager>
</asp:Content>
