using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplicacionConGitHub
{
    public partial class Index : System.Web.UI.Page
    {
        DataClasses1DataContext dc = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarDatos();
            }
        }

        private void cargarDatos()
        {
            GridView1.DataSource = dc.MostrarPersona();
            GridView1.DataBind();
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {

        }

        protected void btn_inset_Click(object sender, EventArgs e)
        {

        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {

        }

        protected void lnk_ver_Click(object sender, EventArgs e)
        {

        }
    }
}