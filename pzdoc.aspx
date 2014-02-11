<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pzdoc.aspx.cs" Inherits="EstacioCob.pzdoc" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 80px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <fieldset><legend>Dados do Aluno</legend>
    <table class="style1">
        <tr>
            <td class="style2">
                Matrícula :</td>
            <td>
                <asp:Label ID="lblmatricula" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Nome :</td>
            <td>
                <asp:TextBox ID="txtnome" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Curso :</td>
            <td>
                <asp:DropDownList ID="ddlcursos" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Fone :</td>
            <td>
                <asp:TextBox ID="txtfone" runat="server" MaxLength="10"></asp:TextBox>
                <asp:FilteredTextBoxExtender ID="txtfone_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" FilterType="Numbers" TargetControlID="txtfone">
                </asp:FilteredTextBoxExtender>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Celular :</td>
            <td>
                <asp:TextBox ID="txtcelular" runat="server" MaxLength="10"></asp:TextBox>
                <asp:FilteredTextBoxExtender ID="txtcelular_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" FilterType="Numbers" TargetControlID="txtcelular">
                </asp:FilteredTextBoxExtender>
            </td>
        </tr>
        <tr>
            <td class="style2">
                E-mail :</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Width="300px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" Display="Dynamic" 
                    ErrorMessage="Informe uma conta de email válida." ForeColor="#FF3300" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:CheckBox ID="CheckSit" runat="server" Checked="True" Text="Ativo ?" 
                    TextAlign="Left" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Ingresso :</td>
            <td>
                <asp:DropDownList ID="ddlingresso" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddlingresso_SelectedIndexChanged">
                    <asp:ListItem Selected="True">--------------</asp:ListItem>
                    <asp:ListItem>Vestibular</asp:ListItem>
                    <asp:ListItem>TE</asp:ListItem>
                    <asp:ListItem>MSV</asp:ListItem>
                    <asp:ListItem>PROUNI</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        </table>
</fieldset>
<asp:CheckBoxList ID="ccbdocs" runat="server">
                </asp:CheckBoxList>

<asp:Button ID="btnpasta" runat="server" onclick="btnpasta_Click" 
    Text="Inserir Pasta" /><asp:Button ID="btnvoltar" runat="server" Text="Voltar" 
        onclick="btnvoltar_Click" />
        <asp:Label ID="lblmsg" runat="server" ForeColor="#FF3300"></asp:Label>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
</asp:Content>
