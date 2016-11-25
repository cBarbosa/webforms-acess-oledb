﻿<%@ Page Title="Enviar Atividade" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EnviarAtividade.aspx.cs" Inherits="PIM_VIII.Aluno.EnviarAtividade" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Cadastro da atividade</h1>
    <hr />

    <asp:Label ID="msgRetorno" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>

    <table>
        <tr>
            <td>
                <strong>Curso:</strong> <asp:Label ID="lblCurso" runat="server" Text=""></asp:Label><br/>
                <strong>Disciplina:</strong> <asp:Label ID="lblDisciplina" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <strong>Período de envio:</strong> de <asp:Label ID="dtInicio" runat="server" Text=""></asp:Label> 
                até <asp:Label ID="dtFim" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <%if (!String.IsNullOrEmpty(dtEnvio.Text))
            {%>
        <tr>
            <td>
                <strong>Enviado em:</strong> de <asp:Label ID="dtEnvio" runat="server" Text=""></asp:Label> 
            </td>
        </tr>
        <tr>
            <td>
                <strong>Corrigido em:</strong> <asp:Label ID="dtCorrecao" runat="server" Text=""></asp:Label> 
            </td>
        </tr>
        <tr>
            <td>
                <strong>Nota:</strong> <asp:Label ID="txtNota" runat="server" Text=""></asp:Label> 
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Observação do professor"></asp:Label>
                <br />
                <asp:TextBox ID="txtObsProf" runat="server" TextMode="MultiLine" Rows="3" ReadOnly="true" MaxLength="1000" ></asp:TextBox>
            </td>
        </tr>
        <%} %>
        <tr>
            <td>
                <asp:Label ID="lblObs" runat="server" Text="Observação"></asp:Label>
                <br />
                <asp:TextBox ID="txtobs" runat="server" TextMode="MultiLine" Rows="3" MaxLength="1000" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align:center">
                <asp:LinkButton ID="lkArquivo" runat="server" OnClick="lkArquivo_Click" Visible="false">[ Baixar o Arquivo ]</asp:LinkButton>
                <br />
                <br/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Arquivo"></asp:Label>
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="text-align:center" >
                <asp:Button ID="btnEnviar" runat="server" Text="Atualizar" OnClick="btnEnviar_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lbtVoltar" runat="server" OnClick="lbtVoltar_Click" >Voltar</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>
