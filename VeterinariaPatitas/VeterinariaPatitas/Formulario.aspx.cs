using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VeterinariaPatitas
{
    public partial class Formulario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            btnLimpiarCampos.CausesValidation = false;
            btnVolverAlInicio.CausesValidation = false;

            if ((string)Session["previa"] == "conf")
            {
                CargarDropDownLists();
                RecargarFormulario();
                Session["previa"] = string.Empty;
                return;
            }

            if (!IsPostBack)
            {
                CargarDropDownLists();

                string id = Server.UrlDecode(Request.QueryString["id"]);

                if (!id.Equals("0"))
                {
                    CargarFormularioConCliente(Int32.Parse(id));
                }
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Session["nombre"] = txtNombre.Text;
                Session["apellido"] = txtApellido.Text;
                Session["dni"] = txtDni.Text;
                Session["domicilio"] = txtDomicilio.Text;
                Session["provincia"] = ddlProvincia.SelectedItem.ToString();
                Session["provinciaId"] = ddlProvincia.SelectedIndex;
                Session["telefono"] = txtTelefono.Text;
                Session["email"] = txtEmail.Text;
                Session["estado"] = rdbListEstado.SelectedValue;

                Session["mascota"] = txtNombreMascota.Text;
                Session["tipo"] = ddlTipo.SelectedItem.ToString();
                Session["tipoId"] = ddlTipo.SelectedIndex;
                Session["raza"] = txtRaza.Text;
                Session["edad"] = txtEdad.Text;
                Session["tamanio"] = ddlTamanio.SelectedItem.ToString();
                Session["tamanioId"] = ddlTamanio.SelectedIndex;
                Session["sexo"] = rdbListSexo.SelectedValue;

                string id = Server.UrlDecode(Request.QueryString["id"]);

                string qs = "?id=" + Server.UrlEncode(id);
                if (!id.Equals("0"))
                {
                    qs += "&modo=modificacion";
                }
                else
                {
                    qs += "&modo=alta";
                }

                Response.Redirect("/Confirmación.aspx" + qs);
            }
        }

        protected void btnLimpiarCampos_Click(object sender, EventArgs e)
        {
            txtNombre.Text = string.Empty;
            txtApellido.Text = string.Empty;
            txtDni.Text = string.Empty;
            txtDomicilio.Text = string.Empty;
            ddlProvincia.ClearSelection();
            txtTelefono.Text = string.Empty;
            txtEmail.Text = string.Empty;
            rdbListEstado.SelectedIndex = 0;

            txtNombreMascota.Text = string.Empty;
            ddlTipo.ClearSelection();
            txtRaza.Text = string.Empty;
            txtEdad.Text = string.Empty;
            ddlTamanio.ClearSelection();
            rdbListSexo.SelectedIndex = 0;
        }

        protected void btnVolverAlInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("/PáginaPrincipal.aspx");   
        }

        protected void CargarDropDownLists()
        {
            Contexto ctx = new Contexto();

            Provincia provincia = new Provincia();
            Tipo tipo = new Tipo();
            Tamanio tamanio = new Tamanio();

            var provincias = from prov in ctx.Provincia select prov;
            ddlProvincia.DataSource = provincias.ToList();
            ddlProvincia.DataValueField = "Id";
            ddlProvincia.DataTextField = "Nombre";
            ddlProvincia.DataBind();

            var tipos = from tip in ctx.Tipo select tip;
            ddlTipo.DataSource = tipos.ToList();
            ddlTipo.DataValueField = "Id";
            ddlTipo.DataTextField = "Nombre";
            ddlTipo.DataBind();

            var tamanios = from tam in ctx.Tamanio select tam;
            ddlTamanio.DataSource = tamanios.ToList();
            ddlTamanio.DataValueField = "Id";
            ddlTamanio.DataTextField = "Nombre";
            ddlTamanio.DataBind();

            ctx.SaveChanges();
        }

        protected void RecargarFormulario()
        {
            txtNombre.Text = (string)Session["nombre"];
            txtApellido.Text = (string)Session["apellido"];
            txtDni.Text = (string)Session["dni"];
            txtDomicilio.Text = (string)Session["domicilio"];
            ddlProvincia.SelectedValue = (string)Session["provincia"];
            txtTelefono.Text = (string)Session["telefono"];
            txtEmail.Text = (string)Session["email"];
            rdbListEstado.SelectedValue = (string)Session["estado"];

            txtNombreMascota.Text = (string)Session["mascota"];
            ddlTipo.Text = (string)Session["tipo"];
            txtRaza.Text = (string)Session["raza"];
            txtEdad.Text = (string)Session["edad"];
            ddlTamanio.SelectedValue = (string)Session["tamanio"];
            rdbListSexo.SelectedValue = (string)Session["sexo"];
        }

        protected void CargarFormularioConCliente(int id)
        {
            Contexto ctx = new Contexto();

            Cliente cliente = (from c1 in ctx.Cliente where c1.Id.Equals(id) select c1).FirstOrDefault();

            txtNombre.Text = cliente.Nombre;
            txtApellido.Text = cliente.Apellido;
            txtDni.Text = cliente.DNI.ToString();
            txtDomicilio.Text = cliente.Domicilio;
            ddlProvincia.SelectedValue = cliente.IdProvincia.ToString();
            txtTelefono.Text = cliente.Telefono.ToString();
            txtEmail.Text = cliente.Email;
            rdbListEstado.SelectedValue = cliente.Estado.ToString();

            txtNombreMascota.Text = cliente.Mascota.Nombre.ToString();
            ddlTipo.Text = cliente.Mascota.IdTipo.ToString();
            txtRaza.Text = cliente.Mascota.Raza;
            txtEdad.Text = cliente.Mascota.Edad.ToString();
            ddlTamanio.SelectedValue = cliente.Mascota.IdTamanio.ToString();
            rdbListSexo.SelectedValue = cliente.Mascota.Sexo;
        }
    }
}