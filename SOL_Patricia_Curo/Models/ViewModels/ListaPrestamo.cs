using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SOL_Patricia_Curo.Models.ViewModels
{
    public class ListaPrestamo
    {
        public int idPrestamo { get; set; }
        public int ISBN { get; set; }
        public string NombreLibro { get; set; }
        public DateTime FechaPrestamo { get; set; }
        public string DniUsuario { get; set; }
        public string NombreUsuario { get; set; }
        public string ApellidoUsuario { get; set; }
        public string Tipousuario { get; set; }
        public string TipoLectura { get; set; }
        public DateTime FecDevolución { get; set; }

    }
}