﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="projetoP2.login" %>

<!DOCTYPE html>
<html>

<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <link rel="stylesheet" href="Common/CSS/login.css">
    <link rel="stylesheet" href="Common/CSS/generico.css">
    <script src="Javascript/validacoesGenericas.js"></script>
    <title>Loljinha - Login</title>
</head>

<body>
    <nav class="navbar navbar-expand-lg">
        <!-- Acessar o menu principal/vitrine -->
        <div class="float-left logo">
            <asp:HyperLink runat="server" href="vitrine.aspx">
                <img alt="Loljinha" src="Common/logo.png" class="img-fluid"
                    data-toggle="tooltip" data-placement="left" title="Menu principal"></asp:HyperLink>
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
            <asp:HyperLink runat="server" href="login.aspx">
                <i class="fa fa-user-circle" aria-hidden="true" style="font-size: 2.0em;"
                    data-toggle="tooltip" data-placement="left" title="Lolgin"></i></asp:HyperLink>
        </div>
        <!-- Acessar o carrinho-->
        <div class="float-right carrinho">
            <asp:HyperLink runat="server" href="carrinho.aspx">
                <i class="fa fa-shopping-cart" aria-hidden="true" style="font-size: 2.0em;"
                    data-toggle="tooltip" data-placement="right" title="Acessar carrinho"></i></asp:HyperLink>
        </div>
        <br />
    </nav>
    <div class="container wrapper">
        <!-- Alerta -->
        <div id="alertaErro" class="alert alert-warning fade show" runat="server" style="display: none;">
            <strong>Aviso!</strong> Mínimo de 3 letras para efetuar busca!
        </div>
        <div class="container">
            <hr />
            <div class="row border">
                <!-- Login-->
                <div class="col-lg-6 col-md-6 col-xs-12 dividerLogin">
                    <div>
                        <h1 class="display-3">Login</h1>
                    </div>
                    <form id="form1" runat="server">
                        <!-- Nome-->
                        <div class="form-group">
                            <asp:Label ID="LabelNomeInvocador" for="txtNomeInvocador" runat="server" Text="Label">Nome de Invocador:</asp:Label>
                            <asp:TextBox ID="txtNomeInvocador" runat="server" type="text" class="form-control" size="50" placeholder="Digite seu nome de invocador"></asp:TextBox>
                            <!--<input type="text" class="form-control" id="txtNomeInvocador" size="50"
                            placeholder="Digite seu nome de invocador" /> -->
                        </div>
                        <!-- Senha -->
                        <div class="form-group">
                            <asp:Label for="txtSenha" ID="LabelSenha" runat="server" Text="Label">Senha:</asp:Label>
                            <asp:TextBox ID="txtSenha" class="form-control" runat="server" TextMode="Password" placeholder="Digite sua senha:"></asp:TextBox>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <asp:Button ID="btnLogin" class="btn btn-success float-left" Style="margin-right: 5px" runat="server" Text="Login" OnClick="AutenticaLogin" />
                                <asp:Button ID="btnEsqueci" runat="server" class="btn btn-secondary float-right" data-toggle="modal" data-target="#ModalEsqueci" Text="Esqueci minha senha" OnClick="EsqueciSenha" />
                            </div>
                        </div>
                    </form>
                </div>
                <!-- Cadastro-->
                <div class="col-lg-6 col-md-6 col-xs-12">
                    <div>
                        <h1 class="display-3">Cadastro</h1>
                    </div>
                    <div class="form-group">
                        <p>Ainda não possui uma conta?Como assim cara?</p>
                        <div class="img">
                            <img alt="" class="img-fluid" src="Common/lux_emote.png">
                        </div>
                        <p>Clique <a href="cadastro.html">aqui</a> para se cadastrar!</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="push"></div>
    </div>
</body>
</html>
<script lang="javascript">
    // Quando for clicado no botão de busca, primeiro é feita uma validação no conteúdo da barra de busca
    $("#btnBusca").click(function () {
        $('#alertaErro').hide();
        var campo = $("#pesquisa").val();
        if (validaCampoVazio(campo) == false && campo.length > 2) {

            location.href = "busca.html"
        }
        else {
            $('#alertaErro').show();
            return false;
        }
    });

</script>
