
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="_1626738_CO5027.Register1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Username<asp:TextBox ID="txtRegEmail" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        Password<asp:TextBox ID="txtRegPassword" runat="server" TextMode="Password" OnTextChanged="txtRegPassword_TextChanged"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="btnReg" runat="server" Text="Register" OnClick="btnReg_Click" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>
    </p>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
