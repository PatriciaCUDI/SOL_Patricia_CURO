using SOL_Patricia_Curo.Models;
using SOL_Patricia_Curo.Models.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SOL_Patricia_Curo.Controllers
{
    public class PrestamoController : Controller
    {
        // GET: Prestamo
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Lista() 
        {
            List<ListaPrestamo> lst = new List<ListaPrestamo>();

            using (UPCEntities db = new UPCEntities())
            {
               lst =
                    (from a in db.Prestamo
                     join b in db.Libro on a.IdLibro equals b.ISBN
                     join c in db.Usuario on a.IdUsuario equals c.IdUsuario
                     join d in db.TipoUsuario on c.TipoUsuario equals d.IdTipo
                     join e in db.TipoPrestamo on a.TipoPrestamo equals e.IdTipo
                     select new ListaPrestamo
                     {
                         idPrestamo = a.IdPrestamo,
                         ISBN =a.IdLibro,
                         NombreLibro = b.Nombre,
                         FechaPrestamo = a.Fecha,
                         DniUsuario = c.Dni,
                         NombreUsuario = c.Nombre,
                         ApellidoUsuario = c.Apellido,
                         Tipousuario = d.Descripcion,
                         TipoLectura = e.Descripcion,
                         FecDevolución = a.FechaDev
                     }).ToList();
            }

            return View(lst);
        }
    }
}