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
    public partial class vitrine : System.Web.UI.Page
    {
        string sc = "Server=localhost;Database=lojavirtual;Uid=root;Pwd=;";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["codigo"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                carregarTela();
            }

        }

        private void carregarTela()
        {
            MySqlConnection conexao = new MySqlConnection(sc);
            conexao.Open();
            String sql = "select * from produto order by titulo";
            DataSet ds = new DataSet();
            MySqlDataAdapter conversor = new MySqlDataAdapter(sql, conexao);
            conversor.Fill(ds, "todos");
            conexao.Close();

            ListViewProdutos.DataSource = ds.Tables["todos"];
            ListViewProdutos.DataBind();
        }
    }
}