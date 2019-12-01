<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="esqueci.aspx.cs" Inherits="projetoP2.Common.esqueci" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <link rel="stylesheet" href="Common/CSS/generico.css">
    <script src="Javascript/validacoesGenericas.js"></script>
    <title>Loljinha - Login</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg">
        <!-- Acessar o menu principal/vitrine -->
        <div class="float-left logo">
            <a href="vitrine.html">
                <img alt="Loljinha" src="Common/logo.png" class="img-fluid"
                    data-toggle="tooltip" data-placement="left" title="Menu principal"></a>
        </div>
        <!-- Barra de pesquisa -->
        <div class="input-group">
            <input id="pesquisa" class="form-control" type="text" placeholder="Digite o item que deseja buscar"
                aria-label="Search">
            <div class="input-group-append">
                <button class="btn btn-secondary" onclick="validaCampoVazio(pesquisa.value)" type="button"
                    id="btnBusca">
                    <i class="fa fa-search"></i>
                </button>
            </div>
        </div>
        <!-- Acessar menu de usuário-->
        <div class="float-right usuario">
            <a href="login.html">
                <i class="fa fa-user-circle" aria-hidden="true" style="font-size: 2.0em;"
                    data-toggle="tooltip" data-placement="left" title="Lolgin"></i></a>
        </div>
        <!-- Acessar o carrinho-->
        <div class="float-right carrinho">
            <a href="carrinho.html">
                <i class="fa fa-shopping-cart" aria-hidden="true" style="font-size: 2.0em;"
                    data-toggle="tooltip" data-placement="right" title="Acessar carrinho"></i></a>
        </div>
        <br />
    </nav>
    <div class="container">
        <hr />
        <form id="form1" runat="server">
            <div class="row">
                <h1 class="display-4">Recuperação de senha</h1>
                <div class="form-group">
                    <div class="img">
                        <img alt="" src="Common/blitz_duvida.png" />
                    </div>
                    <!-- Email-->

                    <asp:Label ID="LabelEmail" runat="server" Text="Label">Esqueceu sua senha, invocador? Digite o seu email abaixo e te
                                    enviaremos um email para redefinição de senha.</asp:Label><br />
                    <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Digite seu email"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Button class="btn btn-success float-left" ID="btnConfirma" runat="server" Text="Recuperar senha" OnClick="enviarEmail" />
                <asp:Button class="btn btn-danger mr-auto float-left" ID="btnCancelar" runat="server" Text="Cancelar" OnClick="voltarLogin" /><br/>
            </div>
        </form>
        <br/>
        <div id="alertaErro" class="alert alert-warning fade show" runat="server" style="display: none;">
            <asp:Label ID="LabelEmailEnviado" runat="server" Text=""></asp:Label>
        </div>
    </div>
</body>
</html>
