<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="_1626738_CO5027.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
    <form id="form1" runat="server">
        Registration Form</form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Username<asp:TextBox ID="txtRegEmail" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        Password<asp:TextBox ID="txtRegPassword" runat="server" TextMode="Password"></asp:TextBox>
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
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>