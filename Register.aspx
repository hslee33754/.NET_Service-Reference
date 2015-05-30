﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <link href="VenueStyles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Venue Register</h1>
    <table>
        <tr>
            <td>Venue Name</td>
            <td><asp:TextBox ID="txtVenueName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>User Name</td>
            <td><asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Confirm Password</td>
            <td><asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Address</td>
            <td><asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>City</td>
            <td><asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>State</td>
            <td>
                <asp:TextBox ID="txtState" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Zip Code</td>
            <td>
                <asp:TextBox ID="txtZip" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Phone</td>
            <td>
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Webpage</td>
            <td>
                <asp:TextBox ID="txtWebpage" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Age Restriction</td>
            <td>
                <asp:TextBox ID="txtAgeRestriction" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Button ID="btnRegister" runat="server" Text="Register" 
                    OnClick="btnRegister_Click" /></td>
            <td>
                <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
        <asp:LinkButton ID="lbLogin" runat="server" PostBackURL="~/Default.aspx">Log in</asp:LinkButton>
    </div>
    </form>
</body>
</html>

