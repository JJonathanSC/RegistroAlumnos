using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistroAlumnos
{
    public partial class RegistrarEstudiante : System.Web.UI.Page
    {
        string carnet;
        Alumno alumno;
 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            if (ddlMateria.Text != "")
            {
                lblErrorMateria.Visible = false;
                GenerarCarnet();

                alumno = new Alumno(carnet, txtNombre.Text, txtApellido.Text, txtEmail.Text, ddlMateria.Text);
                Alumno.AlumnoList.Add(alumno);

                Limpiar();
            }
            else
            {
                lblErrorMateria.Text = "** SELECCIONE UNA MATERIA A INSCRIBIR **";
                lblErrorMateria.Visible = true;
            }
        }

        // Se crear un generador para el carnet
        private void GenerarCarnet()
        {
            //Formato carnet: PrimeraLetraNombre + PrimeraLetraApellido + fechaCreacion
            carnet = txtNombre.Text.Substring(0, 1) + txtApellido.Text.Substring(0, 1)
                     + DateTime.Now.Year.ToString();
        }

        private void Limpiar()
        {
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtEmail.Text = "";
            ddlMateria.Text = "";
        }
    }
}