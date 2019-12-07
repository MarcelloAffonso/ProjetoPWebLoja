<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="carrinho.aspx.cs" Inherits="projetoP2.carrinho" %>

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

    <script src="Common/Javascript/validacoesGenericas.js"></script>
    <link rel="stylesheet" href="Common/CSS/generico.css">

    <title>Loljinha - Carrinho</title>
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
    <h1 class="display-4">Compras:</h1>
    <asp:ListView ID="ListViewCompras" runat="server">
        <ItemTemplate>
            <asp:HyperLink runat="server"><strong><%#Eval("titulo") %></strong>|</asp:HyperLink>
            <strong>Preço: </strong><%#Eval("valorTotal") %> |
            <br />
        </ItemTemplate>
    </asp:ListView>
    <br />
    Valor total:
    <asp:Label ID="LabelValorTotal" runat="server" Text=""></asp:Label>
</body>
</html>
