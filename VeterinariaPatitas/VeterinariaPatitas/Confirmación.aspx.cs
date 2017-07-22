using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VeterinariaPatitas
{
    public partial class Confirmación : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Server.UrlDecode(Request.QueryString["id"]);
            string modo = Server.UrlDecode(Request.QueryString["modo"]);

            if (modo.Equals("baja"))
            {
                Contexto ctx = new Contexto();

                int idEntero = Int32.Parse(id);
                Cliente cliente = (from c1 in ctx.Cliente where c1.Id == idEntero select c1).FirstOrDefault();

                Provincia provincia = (from p1 in ctx.Provincia where p1.Id.Equals(cliente.IdProvincia) select p1).FirstOrDefault();
                Tipo tipo = (from t1 in ctx.Tipo where t1.Id.Equals(cliente.Mascota.IdTipo) select t1).FirstOrDefault();
                Tamanio tamanio = (from t1 in ctx.Tamanio where t1.Id.Equals(cliente.Mascota.IdTamanio) select t1).FirstOrDefault();

                lblNombre.Text = cliente.Nombre;
                lblApellido.Text = cliente.Apellido;
                lblDni.Text = cliente.DNI.ToString();
                lblDomicilio.Text = cliente.Domicilio;
                lblProvincia.Text = provincia.Nombre;
                lblTelefono.Text = cliente.Telefono.ToString();
                lblEmail.Text = cliente.Email;
                lblEstado.Text = cliente.Estado.ToString();

                lblNombreMascota.Text = cliente.Mascota.Nombre;
                lblTipo.Text = tipo.Nombre;
                lblRaza.Text = cliente.Mascota.Raza;
                lblEdad.Text = cliente.Mascota.Edad.ToString();
                lblTamanio.Text = tamanio.Nombre;
                lblSexo.Text = cliente.Mascota.Sexo;

                btnVolverAlFormulario.Enabled = false;
            }
            else
            {
                lblNombre.Text = (string)Session["nombre"];
                lblApellido.Text = (string)Session["apellido"];
                lblDni.Text = (string)Session["dni"];
                lblDomicilio.Text = (string)Session["domicilio"];
                lblProvincia.Text = (string)Session["provincia"];
                lblTelefono.Text = (string)Session["telefono"];
                lblEmail.Text = (string)Session["email"];
                lblEstado.Text = (string)Session["estado"];

                lblNombreMascota.Text = (string)Session["mascota"];
                lblTipo.Text = (string)Session["tipo"];
                lblRaza.Text = (string)Session["raza"];
                lblEdad.Text = (string)Session["edad"];
                lblTamanio.Text = (string)Session["tamanio"];
                lblSexo.Text = (string)Session["sexo"];
            }
        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            Contexto ctx = new Contexto();
            Cliente cliente = new Cliente();
            Mascota mascota = new Mascota();

            string id = Server.UrlDecode(Request.QueryString["id"]);
            string modo = Server.UrlDecode(Request.QueryString["modo"]);

            if (id.Equals("0"))
            {
                cliente.Nombre = lblNombre.Text;
                cliente.Apellido = lblApellido.Text;
                cliente.DNI = Int32.Parse(lblDni.Text);
                cliente.Domicilio = lblDomicilio.Text;
                cliente.IdProvincia = (int)Session["provinciaId"];
                cliente.Telefono = Int32.Parse(lblTelefono.Text);
                cliente.Email = lblEmail.Text;
                cliente.Estado = (lblEstado.Text.Equals("Activo")) ? true : false;

                cliente.FechaCarga = DateTime.Today;
                cliente.FechaModificacion = DateTime.Today;

                mascota.Nombre = lblNombreMascota.Text;
                mascota.IdTipo = (int)Session["tipoId"];
                mascota.Raza = lblRaza.Text;
                mascota.Edad = Int32.Parse(lblEdad.Text);
                mascota.IdTamanio = (int)Session["tamanioId"];
                mascota.Sexo = lblSexo.Text;

                cliente.Mascota = mascota;

                ctx.Cliente.Add(cliente);
                ctx.SaveChanges();

                Response.Redirect("/PáginaPrincipal.aspx");
            }
            else if (modo.Equals("modificacion"))
            {
                int idEntero = Int32.Parse(id);
                cliente = (from c1 in ctx.Cliente where c1.Id == idEntero select c1).FirstOrDefault();

                cliente.Nombre = lblNombre.Text;
                cliente.Apellido = lblApellido.Text;
                cliente.DNI = Int32.Parse(lblDni.Text);
                cliente.Domicilio = lblDomicilio.Text;
                cliente.IdProvincia = (int)Session["provinciaId"];
                cliente.Telefono = Int32.Parse(lblTelefono.Text);
                cliente.Email = lblEmail.Text;
                cliente.Estado = (lblEstado.Text.Equals("Activo")) ? true : false;

                cliente.FechaModificacion = DateTime.Today;

                cliente.Mascota.Nombre = lblNombreMascota.Text;
                cliente.Mascota.IdTipo = (int)Session["tipoId"];
                cliente.Mascota.Raza = lblRaza.Text;
                cliente.Mascota.Edad = Int32.Parse(lblEdad.Text);
                cliente.Mascota.IdTamanio = (int)Session["tamanioId"];
                cliente.Mascota.Sexo = lblSexo.Text;

                ctx.SaveChanges();
            }
            else
            {
                int idEntero = Int32.Parse(id);
                cliente = (from c1 in ctx.Cliente where c1.Id == idEntero select c1).FirstOrDefault();

                ctx.Cliente.Remove(cliente);

                ctx.SaveChanges();
            }

            Response.Redirect("/PáginaPrincipal.aspx");
        }

        protected void btnVolverAlFormulario_Click(object sender, EventArgs e)
        {
            Session["previa"] = "conf";
            
            Response.Redirect("/Formulario.aspx");
        }

        protected void btnVolverAlInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("/PáginaPrincipal.aspx");
        }
    }
}