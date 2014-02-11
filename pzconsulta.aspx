<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pzconsulta.aspx.cs" Inherits="EstacioCob.pzconsulta" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<fieldset><legend>Buscar aluno</legend>
    <asp:TextBox ID="txtbuscar" runat="server" Width="90px" MaxLength="12"></asp:TextBox>
    <asp:FilteredTextBoxExtender ID="txtbuscar_FilteredTextBoxExtender" 
        runat="server" Enabled="True" FilterType="Numbers" TargetControlID="txtbuscar">
    </asp:FilteredTextBoxExtender>
    <asp:Button ID="btnbuscar" runat="server" Text="Buscar" 
        onclick="btnbuscar_Click" />
    <asp:Label ID="lblmsg" runat="server" ForeColor="#FF3300"></asp:Label>
    </fieldset>
<fieldset><legend>Alunos</legend>
        <table cellspacing="1" class="style1">
            <tr>
                <td>
                    <asp:GridView ID="Griddados" runat="server" CellPadding="4" ForeColor="#333333" 
                        AutoGenerateColumns="False">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="documento" HeaderText="Documento" />
                            <asp:BoundField DataField="dt_inclusao" DataFormatString="{0:d}" 
                                HeaderText="Dt_Inclusão" HtmlEncode="False" />
                            <asp:BoundField DataField="usuario_inc" HeaderText="Usuário" />
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
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </fieldset>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
</asp:Content>
