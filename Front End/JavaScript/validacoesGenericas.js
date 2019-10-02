
// Função usada para validar se um número é numérico ou não
function validaNumerico(a) {
    if(a =="" || isNaN(a)){
        return false;
    }
    return true;
}

// Verifica se o campo passado está vazio
function validaCampoVazio(field) {
    if(field.length > 0){        
        return false;
    }
    return true;
}

// Verifica se o campo passado tem pelo menos 3 caracteres
function validaNome(nome) {
    if(nome.length > 3){
        return true;
    }
    return false;
}

// Verifica se a senha bate com a confirmação e se a senha tem, a menos 8 caraacteres
function validaSenha(senha1,senha2) {
    if (senha1 !=senha2){
        return false;
    }
    if(senha1.length < 8 || senha2 < 8){
        return false;
    }
    return true;

}

// Verifica se o email é valido
function validaEmail(email){
    if(email.length < 6 ||
        email.indexOf("@") < 1 ||
        email.lastIndexOf(".") <= email.value.indexOf("@") ||
        email.lastIndexOf(".") == (email.value.length -1)){
        return false;
    }
    return true;
}


$(document).ready(function() {
    $(".btnCarrinho").click(function () {
        location.href = "carrinho.html"
    });
});

