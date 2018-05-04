
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="_1626738_CO5027.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <asp:Label ID="Label1" runat="server" Text="Email:"></asp:Label>
    <asp:TextBox ID="TextLogInEmail" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
    <asp:TextBox ID="TextLogInPassword" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="ButtonLogIn" runat="server" OnClick="Button1_Click" Text="Log In" />
    <br />
    <asp:Literal ID="LitLogInError" runat="server"></asp:Literal>
    <br />
    <asp:Button ID="ButtonSignUp" runat="server" OnClick="Button2_Click" Text="Sign Up" />

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="GoogleMap" runat="server">
    <div id="map">
    <script>
        var map;
        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), { 
                center: { lat: -34.397, lng: 150.644 },
                zoom: 8
            });
        }
    </script>
    <script src="https://maps/googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap"
        async defer></script>
    </div>
</asp:Content>
