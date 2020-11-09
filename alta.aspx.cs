using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class alta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("insert into alumnos(dni,apellidonom,provincia) values('" +
                  dni.Text + "','" + this.name.Text + "','" +
                  state.Text + "')", conexion);
            comando.ExecuteNonQuery();
            Label1.Text = "Se registro el alumno";
            conexion.Close();
        }
    }
}