
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="_1626738_CO5027.Contact1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>Please fill in the form below(*) </h4>
    <p></p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    <p></p>
    <div id="contact">

    <p><strong><asp:Label ID="Label1" runat="server" Text="Name"></asp:Label></strong></p>
    <asp:TextBox ID="txtName" runat="server" OnTextChanged="txtName_TextChanged"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="reqNameField" runat="server" ErrorMessage="Please enter your name.." ControlToValidate="txtName" Display="None"></asp:RequiredFieldValidator>
    <br />
    <br />

    <p><strong><asp:Label ID="Label2" runat="server" Text="Email"></asp:Label></strong></p>
    <asp:TextBox ID="txtEmail" runat="server" AutoCompleteType="BusinessStreetAddress" TextMode="Email"></asp:TextBox>
    <br />
    <asp:RegularExpressionValidator runat="server" ErrorMessage="Email is not valid" EnableViewState="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ID="reqEmailField" ControlToValidate="txtEmail" Visible="False"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter your email.."></asp:RequiredFieldValidator>
    <br />
    <br />

    <p><strong><asp:Label ID="Label3" runat="server" Text="Subject"></asp:Label></strong></p>
    <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="reqSubjectField" runat="server" ErrorMessage="Please enter your subject.." ControlToValidate="txtSubject"></asp:RequiredFieldValidator>
    <br />
    <br />

    <p><strong><asp:Label ID="Label4" runat="server" Text="Message"></asp:Label></strong></p>
    <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine"></asp:TextBox>
    </div>
    <br />
    
    <asp:Button ID="btnSubmitForm" runat="server" Text="Submit" OnClick="btnSubmitForm_Click" />

    <br />
    
    <asp:Literal ID="litSubmitError" runat="server"></asp:Literal>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="GoogleMap" runat="server">
    <div id="map"></div>
    <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
            center: { lat: 4.885731, lng: 114.931669 },
          zoom: 8
        });
        var marker = new google.maps.Marker({
            position: { lat: 4.885731, lng: 114.931669 },
            map: map
        });
      }
    </script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCsgAhToHAREEc7nSd46aC2Z7mKpS_wE8Q&callback=initMap"
  type="text/javascript"></script>
</asp:Content>
