<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contato.aspx.cs" 
Inherits="EstacioCob.contato" Culture="auto" UICulture="auto" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 76px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <fieldset><legend>
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnableScriptGlobalization="true" EnableScriptLocalization="true">
    </asp:ScriptManager>
    Contato</legend>

    <table class="style1">
        <tr>
            <td class="style2">
                Matrícula :</td>
            <td>
                <asp:Label ID="lblmat" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Opção :</td>
            <td>
                <asp:DropDownList ID="ddlopcao" runat="server">
                    <asp:ListItem>Fies</asp:ListItem>
                    <asp:ListItem>Negociar</asp:ListItem>
                    <asp:ListItem>Não atende</asp:ListItem>
                    <asp:ListItem>Indevido</asp:ListItem>
                    <asp:ListItem>Pagou</asp:ListItem>
                    <asp:ListItem>Não vai pagar</asp:ListItem>
                    <asp:ListItem>Caixa Postal</asp:ListItem>
                    <asp:ListItem Value="NFS">Negociar final do semestre</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Previsão :</td>
            <td>
                <asp:TextBox ID="txtprevisao" runat="server" Width="80px"></asp:TextBox>
                <asp:CalendarExtender ID="txtprevisao_CalendarExtender" runat="server" 
                    Enabled="True" PopupButtonID="Calender" TargetControlID="txtprevisao">
                </asp:CalendarExtender>
                <asp:ImageButton ID="Calender" runat="server" ImageUrl="~/Image/Calendar.png" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                Obs :</td>
            <td rowspan="2">
                <asp:TextBox ID="txt_obs" runat="server" Height="55px" MaxLength="254" 
                    TextMode="MultiLine" Width="244px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="btn_salvar" runat="server" onclick="btn_salvar_Click" 
                    Text="Salvar" />
            </td>
            <td>
                <asp:Button ID="btn_cancelar" runat="server" onclick="btn_cancelar_Click" 
                    Text="Cancelar" />
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</fieldset>
<fieldset><legend>Histórico</legend>
    <asp:GridView ID="GridHist" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" AutoGenerateColumns="False">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="dt_contato" DataFormatString="{0:d}" 
                HeaderText="Contato" HtmlEncode="False" />
            <asp:BoundField DataField="opcao" HeaderText="Opção" />
            <asp:BoundField DataField="dt_prev" DataFormatString="{0:d}" 
                HeaderText="Previsão" HtmlEncode="False" />
            <asp:BoundField DataField="obs" HeaderText="Observação" />
            <asp:BoundField DataField="usuario" HeaderText="Operador" />
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
