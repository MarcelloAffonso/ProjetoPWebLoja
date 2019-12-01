<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vitrine.aspx.cs" Inherits="projetoP2.vitrine" %>

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

    <script src="Common/JavaScript/validacoesGenericas.js"></script>
    <link rel="stylesheet" href="Common/CSS/vitrine.css">
    <link rel="stylesheet" href="Common/CSS/generico.css">

    <title>Loljinha - A melhor loja de League of Legends do mundo!!!</title>
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
        <!-- Carousel mostrando os três conteúdos principais da página-->
        <div id="carouselItens" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselItens" data-slide-to="0" class="active"></li>
                <li data-target="#carouselItens" data-slide-to="1"></li>
                <li data-target="#carouselItens" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block img-fluid" src="Common/Images/maokai_first.jpg" alt="maokai">
                    <div class="carousel-caption">
                        <h3>CAMPEÕES DAHORA!!</h3>
                        <p>
                            Campeões muito que exigem muito conhecimento e são muito divertidos de se jogar (e o Maokai)!
                        </p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block img-fluid" src="Common/Images/yasuo_second.jpg" alt="yasuo">
                    <div class="carousel-caption">
                        <h3>HASAGI!!</h3>
                        <p>Campeões de quem ama o bronze e jamais irá sair dele!!</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block img-fluid" src="Common/Images/elo_third.jpg" alt="Não dá  pra comprar dedo">
                    <div class="carousel-caption">
                        <h3>P-R-O-F-I-S-S-I-O-N-A-I-S!!</h3>
                        <p>
                            Campeões utilizados por jogadores profissionais em suas belissimas campanhas em campeonatos
                            internacionais
                        </p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselItens" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Anterior</span>
            </a>
            <a class="carousel-control-next" href="#carouselItens" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Próximo</span>
            </a>
        </div>
        <!-- Menu, mostrando alguns produtos da loja -->
        <hr />
        <div class="fixChampions">
            <div class="border col-lg-12 col-md-6 mr-md-1">
                <div class="titleProduct">
                    <h1 class="display-4">Campeões:</h1>
                </div>
                <asp:ListView ID="ListViewProdutos" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-5">
                            <div class="panel panel-default">
                                <div class="img view overlay">
                                    <asp:HyperLink runat="server"><strong><%#Eval("titulo") %></strong></asp:HyperLink>
                                </div>
                                <div class="info">
                                    <div class="img view overlay">
                                        <asp:HyperLink runat="server">
                                <img class="img-fluid" src="Common/Images/Vitrine/<%#Eval("codigo") %>.jpg"/>
                                        </asp:HyperLink>
                                    </div>
                                    <p><strong>Função: </strong><%#Eval("categoria") %></p>
                                    <p><strong>Preço: </strong><%#Eval("valor") %></p>
                                    <p><strong>Ano lançamento: </strong><%#Eval("ano_lancamento") %></p>
                                    <button data-codigo="<%#Eval("codigo") %>">Comprar</button>
                                </div>
                            </div>
                        </div>
                        <br />
                    </ItemTemplate>
                </asp:ListView>
                <br />
            </div>
        </div>
    </div>
</body>
</html>
