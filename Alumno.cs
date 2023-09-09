using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RegistroAlumnos
{
    public class Alumno
    {
        //Definicion de las variables de la clase ALumno
        static List<Alumno> alumnoList = new List<Alumno>();

        private string carnet;
        private string nombres;
        private string apellidos;
        private string email;
        private string materia; 
        private double[] notas; 

        //Se crea un constructor que inicializa las variables declaradas

        public Alumno(string carnet, string nombres, string apellidos, string email, string materia)
        {
            this.carnet = carnet;
            this.nombres = nombres;
            this.apellidos = apellidos;
            this.email = email;
            this.materia = materia;
        }

        public static List<Alumno> AlumnoList { get => alumnoList; set => alumnoList = value; }
    }
}