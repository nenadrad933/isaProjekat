﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RestBiz.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="A layout example with a side menu that hides on mobile, just like the Pure website.">
    <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.6.0/pure-min.css">
    <link rel="stylesheet" href="Styles/side-menu.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.css" />


</head>
<body>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.js"></script>
    <script src ="Scripts/registracija.js"></script>



    <div id="main">
        <div class="content">
            <div class="content-subhead">
                <h2>Prijava na sistem</h2>
            </div>
            <p>
                <form class="pure-form" runat="server">
                    <asp:Login ID="LoginUser" runat="server" EnableViewState="false"
                        RenderOuterTable="false" OnAuthenticate="LoginUser_Authenticate">
                        <LayoutTemplate>
                            <fieldset>
                                <legend>Unesite email i lozinku</legend>

                                <asp:TextBox type="text" placeholder="Email" ID="Username" runat="server"></asp:TextBox>
                                <asp:TextBox type="password" placeholder="Lozinka" ID="Password" runat="server"></asp:TextBox>

                                <asp:Button ID="LoginButton" type="submit" runat="server" Text="Login" CommandName="Login" class="pure-button pure-button-primary" />

                            </fieldset>
                        </LayoutTemplate>
                    </asp:Login>
                </form>

                <p>
                    <a href="javascript:showRegDiv()" class="pure-button pure-button-primary" id="regButton">Registracija</a>
                </p>
            </p>

            <div id="regDiv" style="display: none">
                <div class="content-subhead">
                    <h2>Registracija</h2>
                </div>
                <p>
                    <form class="pure-form">
                        <fieldset class="pure-group">
                            <input type="text" class="pure-input-1-2" placeholder="Ime" id="name">
                            <input type="text" class="pure-input-1-2" placeholder="Prezime" id="lastName">
                            <input type="email" class="pure-input-1-2" placeholder="Email" id="email">
                        </fieldset>

                        <fieldset class="pure-group">
                            <input type="password" class="pure-input-1-2" placeholder="Lozinka" id="password">
                            <input type="password" class="pure-input-1-2" placeholder="Ponovi lozinku" id="passwordRepeat">
                        </fieldset>

                        <a href="javascript:register()" class="pure-button pure-input-1-2 pure-button-primary">Registruj se</a>
                    </form>
                </p>
            </div>

        </div>
    </div>

</body>
</html>