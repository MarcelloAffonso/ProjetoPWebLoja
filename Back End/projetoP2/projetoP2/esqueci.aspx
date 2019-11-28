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
    <form id="form1" runat="server">
        <!-- Modal cadastro usuário -->
        <div class="container">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="display-4">Recuperação de senha</h1>
                </div>
                <div class="modal-body">
                    <div class="img">
                        <img alt="" src="Images/Common/blitz_duvida.png">
                    </div>
                    <!-- Email-->
                    <div class="form-group">
                        <asp:Label ID="LabelModalEmail" for="txtEmail" runat="server" Text="Label">Esqueceu sua senha, invocador? Digite o seu email abaixo e te
                                    enviaremos um email para redefinição de senha.</asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Digite seu email"></asp:TextBox>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger mr-auto" data-dismiss="modal">Cancelar</button>
                    <asp:Button class="btn btn-success" ID="bt1" runat="server" Text="Button" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
