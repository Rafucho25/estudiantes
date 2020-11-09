using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class modificacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void find_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select dni,apellidonom,provincia from alumnos " +
                  " where dni='" + this.dni.Text + "'", conexion);
            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                this.name.Text = registro["apellidonom"].ToString();
                this.state.Text = registro["provincia"].ToString();
            }
            else
                this.Label1.Text = "No existe un alumno con ese dni";
            conexion.Close();
        }

        protected void modify_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("update alumnos set " +
                     "apellidonom='" + this.name.Text +
                     "',provincia='" + this.state.Text +
                     "' where dni='" + this.dni.Text + "'", conexion);
            int cantidad = comando.ExecuteNonQuery();
            if (cantidad == 1)
                this.Label2.Text = "Datos Modificados";
            else
                this.Label2.Text = "No existe el usuario";
            conexion.Close();
        }
    }
}