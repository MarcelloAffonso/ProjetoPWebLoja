using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projetoP2
{
    public partial class login : System.Web.UI.Page
    {
        string sc = "Server=localhost;Database=lojavirtual;Uid=root;Pwd=;";
        protected void Page_Load(object sender, EventArgs e)
        {
            alertaErro.Attributes["style"] = "display: none";
        }

        protected void AutenticaLogin(object sender, EventArgs e)
        {
            MySqlConnection conexao = new MySqlConnection(sc);
            conexao.Open();
            String sql = "select * from cliente where nome_invocador='{0}' and senha='{1}'";
            sql = String.Format(sql, txtNomeInvocador.Text, txtSenha.Text);
            MySqlCommand comando = new MySqlCommand(sql, conexao);
            MySqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                alertaErro.Attributes["style"] = "display: none";
                Session["codigo"] = registro["codigo"].ToString();
                Session["nome_invocador"] = registro["nome_invocador"].ToString();
                //Response.Redirect("lista.aspx");
            }
            else
            {
                alertaErro.Attributes["style"] = "display: normal";
            }
        }
    }
}