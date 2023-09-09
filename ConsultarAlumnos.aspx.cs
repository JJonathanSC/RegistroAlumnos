using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistroAlumnos
{
    public partial class ConsultarAlumnos : System.Web.UI.Page
    {
        public void Page_Load(object sender, EventArgs e)
        {
            if (Alumno.AlumnoList != null)
            {
                GridView1.DataSource = Alumno.AlumnoList;
                GridView1.DataBind(); 
            }
        }
    }
}