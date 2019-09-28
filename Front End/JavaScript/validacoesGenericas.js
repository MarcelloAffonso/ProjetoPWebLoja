
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