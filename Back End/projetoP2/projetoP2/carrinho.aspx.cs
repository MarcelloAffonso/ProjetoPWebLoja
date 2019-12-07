using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projetoP2
{
    public partial class carrinho : System.Web.UI.Page
    {
        string sc = "Server=localhost;Database=lojavirtual;Uid=root;Pwd=;";
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection conexao = new MySqlConnection(sc);

            conexao.Open();
            string sCodigoProduto = Request["codigoProduto"];

            if (!IsPostBack && !string.IsNullOrEmpty(sCodigoProduto))
            {
                string sValor = Request["valorUnitario"].Replace(",", ".");

                string sql = "insert into cesta(sessionId,codigoCliente,codigoProduto,quantidade,valorUnitario,valorTotal)" +
                    "values('{0}','{1}','{2}','{3}','{4}','{5}')";

                sql = string.Format(sql, Session.SessionID, Session["codigo_cliente"], sCodigoProduto, 1, sValor, sValor);
                MySqlCommand comando = new MySqlCommand(sql, conexao);
                comando.ExecuteNonQuery();

            }

            if (string.IsNullOrEmpty(sCodigoProduto))
            {
                Response.Redirect("login.aspx");
            }

            // Cria dataset e faz query no banco
            DataSet ds = new DataSet();
            string sql1 = "SELECT produto.titulo, cesta.valorTotal FROM produto INNER JOIN cesta ON produto.codigo=cesta.codigoProduto WHERE cesta.codigoCliente = " + Session["codigo_cliente"].ToString();
            MySqlDataAdapter conversor = new MySqlDataAdapter(sql1, conexao);
            conversor.Fill(ds, "todos");


            string sql2 = "SELECT SUM(cesta.valorUnitario) AS TOTAL FROM produto INNER JOIN cesta ON produto.codigo=cesta.codigoProduto WHERE cesta.codigoCliente = " + Session["codigo_cliente"].ToString();
            MySqlCommand x = new MySqlCommand(sql2, conexao);
            MySqlDataReader registros = x.ExecuteReader();
            if (registros.Read())
            {
                LabelValorTotal.Text = registros["TOTAL"].ToString();
            }
            else
            {
                LabelValorTotal.Text = "0";
            }
            conexao.Close(); // fecha conexão

            ListViewCompras.DataSource = ds.Tables["todos"];
            ListViewCompras.DataBind();
        }
    }
}