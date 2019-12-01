using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projetoP2.Common
{
    public partial class esqueci : System.Web.UI.Page
    {
        string sc = "Server=localhost;Database=lojavirtual;Uid=root;Pwd=;";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void enviarEmail(object sender, EventArgs e)
        {
            MailAddress de = new MailAddress("fatecpwAds2016@outlook.com");

            if (txtEmail.Text.Contains("@") && txtEmail.Text.Contains("."))
            {
                MailAddress para = new MailAddress(txtEmail.Text);


                MailMessage email = new MailMessage(de, para);

                MySqlConnection conexao = new MySqlConnection(sc);
                conexao.Open();
                String sql = "select senha from cliente where email='{0}'";
                sql = String.Format(sql, txtEmail.Text);
                MySqlCommand comando = new MySqlCommand(sql, conexao);
                MySqlDataReader registro = comando.ExecuteReader();
                email.Subject = "Redefinição de senha";
                email.IsBodyHtml = true;


                if (registro.Read())
                {
                    email.Body = "Caro invocador, sua senha é: " + registro["senha"].ToString();

                    SmtpClient smtp = new SmtpClient("smtp-mail.outlook.com");
                    try
                    {
                        smtp.Port = 587;
                        smtp.EnableSsl = true;
                        smtp.Credentials = new
                                NetworkCredential("fatecpwAds2016@outlook.com", "FreiJoao59");
                        smtp.Send(email);
                        alertaErro.Attributes["class"] = "alert alert-info";
                        LabelEmailEnviado.Text = "Email de recuperação de senha enviado!";
                        alertaErro.Attributes["style"] = "display: normal";
                    }
                    catch
                    {
                        alertaErro.Attributes["class"] = "alert alert-warning";
                        LabelEmailEnviado.Text = "Ocorreu um erro no envio de email";
                        alertaErro.Attributes["style"] = "display: normal";
                    }
                }
                else
                {
                    alertaErro.Attributes["class"] = "alert alert-warning";
                    LabelEmailEnviado.Text = "Email não possui nenhuma conta associada!";
                    alertaErro.Attributes["style"] = "display: normal";
                }
            }
            else
            {
                alertaErro.Attributes["class"] = "alert alert-warning";
                LabelEmailEnviado.Text = "Email em formato inválido!";
                alertaErro.Attributes["style"] = "display: normal";
            }
        }

        protected void voltarLogin(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}