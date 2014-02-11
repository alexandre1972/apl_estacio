<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pzaluno.aspx.cs" Inherits="EstacioCob.pzaluno" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        }
        .style4
        {
            width: 70px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <fieldset><legend>Pesquisa de aluno</legend>
    <asp:TextBox ID="txtpesquisa" runat="server" Width="286px"></asp:TextBox>
    <asp:Button ID="btnpesquisar" runat="server" onclick="btnpesquisar_Click" 
        Text="Pesquisar" Width="100px" />
    <asp:Button ID="btnnovo" runat="server" Text="Cadastrar" Visible="False" 
        onclick="btnnovo_Click" Width="100px" />
    
    <asp:Button ID="Btncancelar" runat="server" Text="Cancelar" Visible="False" 
        Width="100px" onclick="Btncancelar_Click" />
    <asp:Label ID="Label1" runat="server" ForeColor="#FF3300"></asp:Label>
    </fieldset>
      <asp:Panel ID="Panel1" runat="server" Visible=false>
   <asp:GridView ID="GridDados" runat="server" CellPadding="4" ForeColor="#333333" 
              AutoGenerateColumns="False">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="matricula" HeaderText="Matrícula" 
                HtmlEncode="False" />
            <asp:BoundField DataField="nome" HeaderText="Nome" HtmlEncode="False" />
            <asp:BoundField DataField="curso" HeaderText="Curso" HtmlEncode="False" />
            <asp:HyperLinkField DataNavigateUrlFields="matricula" 
                DataNavigateUrlFormatString="pzdoc.aspx?={0}" Text="Cadastrar Pasta...." />
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
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Visible="False" >
        <table class="style1">
            <tr>
                <td class="style4">
                    Matrícula :</td>
                <td>
                    <asp:TextBox ID="txtmat" runat="server" Width="90px" MaxLength="12"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="txtmat_FilteredTextBoxExtender" runat="server" 
                        Enabled="True" FilterType="Numbers" TargetControlID="txtmat">
                    </asp:FilteredTextBoxExtender>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Nome :</td>
                <td>
                    <asp:TextBox ID="txtnome" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Curso :</td>
                <td>
                    <asp:DropDownList ID="ddlcurso" runat="server">
                        <asp:ListItem Value="ADMINISTRAÇÃO">Administração</asp:ListItem>
                        <asp:ListItem Value="CIÊNCIAS CONTÁBEIS">Ciências Contábeis</asp:ListItem>
                        <asp:ListItem Value="COMUNICAÇÃO SOCIAL">Comunicação Social</asp:ListItem>
                        <asp:ListItem Value="DIREITO">Direito</asp:ListItem>
                        <asp:ListItem Value="DESIGNER DE MODA">Designer de Moda</asp:ListItem>
                        <asp:ListItem Value="JORNALISMO">Jornalismo</asp:ListItem>
                        <asp:ListItem Value="PUBLICIDADE E PROPAGANDA">Publicidade e Propaganda</asp:ListItem>
                        <asp:ListItem Value="REDES DE COMPUTADORES">Redes de Computadores</asp:ListItem>
                        <asp:ListItem Value="GESTÃO DE RECURSOS HUMANOS">Gestão de Recursos Humanos</asp:ListItem>
                        <asp:ListItem Value="SISTEMAS DE INFORMAÇÃO ">Sistemas de Informação</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Fone :</td>
                <td>
                    <asp:TextBox ID="txtfone" runat="server" Width="100px" MaxLength="10"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="txtfone_FilteredTextBoxExtender" 
                        runat="server" Enabled="True" FilterType="Numbers" TargetControlID="txtfone">
                    </asp:FilteredTextBoxExtender>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Celular :</td>
                <td>
                    <asp:TextBox ID="txtcelular" runat="server" Width="100px" MaxLength="10"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="txtcelular_FilteredTextBoxExtender" 
                        runat="server" Enabled="True" FilterType="Numbers" TargetControlID="txtcelular">
                    </asp:FilteredTextBoxExtender>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    E-Mail :</td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server" Width="300px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="Informe uma conta de email válida." 
                        ForeColor="#FF3300" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    <asp:CheckBox ID="Ckativo" runat="server" Checked="True" Text="Ativo ?" 
                        TextAlign="Left" />
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Button ID="btnsalvar" runat="server" Text="Salvar" Width="100px" 
                        onclick="btnsalvar_Click" />
                </td>
                <td>
                    <asp:Button ID="btncancel" runat="server" Text="Cancelar" Width="100px" 
                        onclick="btncancel_Click" />
                    <asp:Label ID="lblmsg" runat="server" ForeColor="#FF3300"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
</asp:Content>
