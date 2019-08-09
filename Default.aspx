<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PruebaFrontEnd_MauricioGaleano._Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
 
    <style type="text/css">
        .textbox__login {
        padding: 1rem 0;
        margin: 2rem 0;
        height: 40px;
        width: 350px;
        min-width: 350px;
        font-weight: bold;
        font-size: 14px;
        font-family: 'Times New Roman', Times, serif;
        color: black;
        display: inline;
        }

        .textbox__login--usuario {
        background-color: aliceblue;
        }

        .textbox__login--password {
        background-color: aliceblue;
        }

        .btn-secundary {
        display: inline;
        margin: 0px 150px;
        height: 40px;
        font-weight:bold;
        }
    </style>

    <script type="text/javascript" >
         $(document).ready(function () {

             $('#<%=divDanger.ClientID%>').hide();
             $('#<%=divSuccess.ClientID%>').hide();
             $('#<%=divDangerPassword.ClientID%>').hide();
             $('#<%=divSuccessPassword.ClientID%>').hide();
             
             $('#<%=btnLogin.ClientID%>').click(function () {

                 if ($('#<%=txtUsuario.ClientID%>').val() != "" && $('#<%=txtUsuario.ClientID%>').val() != null
                     && $('#<%=txtPassword.ClientID%>').val() != "" && $('#<%=txtPassword.ClientID%>').val() != null
                 ) {
                     alert("EXITOSO");
                 }
                 else {
                     alert("ERROR");
                 }
             });

             $('#<%=txtUsuario.ClientID%>').change(function () {
                 if ($('#<%=txtUsuario.ClientID%>').val() == "") {
                     $('#<%=divDanger.ClientID%>').show();
                     $('#<%=divSuccess.ClientID%>').hide();
                 }
                 else {
                     $('#<%=divDanger.ClientID%>').hide();
                     $('#<%=divSuccess.ClientID%>').show();
                 }
             });

             $('#<%=txtPassword.ClientID%>').change(function () {
                 if ($('#<%=txtPassword.ClientID%>').val() == "") {
                     $('#<%=divDangerPassword.ClientID%>').show();
                     $('#<%=divSuccessPassword.ClientID%>').hide();
                 }
                 else {
                     $('#<%=divDangerPassword.ClientID%>').hide();
                     $('#<%=divSuccessPassword.ClientID%>').show();
                 }
             });
         });  
    </script>
 
</asp:Content>
 

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%--<div class="jumbotron">
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>--%>

    
    <div class="container">

        <div id ="divDanger" class="alert alert-danger alert-dismissible" runat="server">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Danger!</strong> Digite su usuario.
  </div>

     <div id ="divSuccess" class="alert alert-success alert-dismissible" runat="server">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Success!</strong> Usuario exitoso.
  </div>

        <div id ="divDangerPassword" class="alert alert-danger alert-dismissible" runat="server">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Danger!</strong> Digite su password.
  </div>

     <div id ="divSuccessPassword" class="alert alert-success alert-dismissible" runat="server">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Success!</strong> Password exitoso.
  </div>

        <div class="jumbotron" style="width:500px; margin:0px 300px;">
            <div class="row">
                <div>
                    <h3>Ingreso al sistema</h3>

                        &nbsp;<div class="form-row">
                        <div class="form-group col-md-6">

                            <label for="inputCity">Usuario</label>
                            <asp:TextBox ID="txtUsuario" placeholder="Usuario" CssClass="form-control textbox__login textbox__login--usuario" runat="server"></asp:TextBox>
                            <br />

                             <label for="inputCity">Password</label>

                            <asp:TextBox ID="txtPassword" type="password" placeholder="Password" CssClass="form-control textbox__login textbox__login--password" runat="server"></asp:TextBox><br />
                            <asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label>
                            <br />
                            <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary btn-secundary" Text="Entrar" />
              
                        </div>                      
                    </div>
                </div>
            </div>
            </div>
        </div>
    

</asp:Content>
