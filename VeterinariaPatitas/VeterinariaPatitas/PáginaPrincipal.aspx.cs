using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VeterinariaPatitas
{
    public partial class PáginaPrincipal : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            ActualizarGridViewClientes();
            lblCantidadClientes.Text = Convert.ToString(gvClientes.Rows.Count);

            ActualizarGridViewMascotas();
            lblCantidadMascotas.Text = Convert.ToString(gvMascotas.Rows.Count);
        }

        protected void btnAlta_Click(object sender, EventArgs e)
        {
            String qs = "?id=" + Server.UrlEncode("0") + "&modo=alta";
            Response.Redirect("/Formulario.aspx" + qs);
        }

        protected void btnFiltrarClientes_Click(object sender, EventArgs e)
        {
            Contexto ctx = new Contexto();

            if (txtBusquedaClientes.Text == "")
            {
                var cliente = from c1 in ctx.Cliente select c1;
                gvClientes.DataSource = cliente.ToList();
            }
            else
            {
                switch (ddlBusquedaClientes.SelectedValue)
                {
                    case "Nombre":
                        var clienteNombre = from c1 in ctx.Cliente where c1.Nombre.StartsWith(txtBusquedaClientes.Text) select c1;
                        gvClientes.DataSource = clienteNombre.ToList();
                        break;

                    case "Apellido":
                        var clienteApellido = from c1 in ctx.Cliente where c1.Apellido.StartsWith(txtBusquedaClientes.Text) select c1;
                        gvClientes.DataSource = clienteApellido.ToList();
                        break;
                }
            }

            gvClientes.DataBind();
            lblCantidadClientes.Text = Convert.ToString(gvClientes.Rows.Count);
        }
        protected void btnQuitarFiltroClientes_Click(object sender, EventArgs e)
        {
            ActualizarGridViewClientes();
            txtBusquedaClientes.Text = "";
        }

        protected void btnFiltrarMascotas_Click(object sender, EventArgs e)
        {
            Contexto ctx = new Contexto();

            if (txtBusquedaMascotas.Text == "")
            {
                var mascota = from m1 in ctx.Mascota select m1;
                gvMascotas.DataSource = mascota.ToList();

            }
            else
            {
                switch (ddlBusquedaMascotas.SelectedValue)
                {
                    case "Nombre":
                        var mascotaNombre = from m1 in ctx.Mascota where m1.Nombre.StartsWith(txtBusquedaMascotas.Text) select m1;
                        gvMascotas.DataSource = mascotaNombre.ToList();
                        break;

                    case "Raza":
                        var mascotaRaza = from m1 in ctx.Mascota where m1.Raza.StartsWith(txtBusquedaMascotas.Text) select m1;
                        gvMascotas.DataSource = mascotaRaza.ToList();
                        break;
                }
            }

            gvMascotas.DataBind();
            lblCantidadMascotas.Text = Convert.ToString(gvMascotas.Rows.Count);
        }

        protected void btnQuitarFiltroMascotas_Click(object sender, EventArgs e)
        {
            ActualizarGridViewMascotas();
            txtBusquedaMascotas.Text = "";
        }

        protected void ActualizarGridViewClientes()
        {
            Contexto ctx = new Contexto();

            var clientes = from c1 in ctx.Cliente select c1;

            gvClientes.DataSource = clientes.ToList();
            gvClientes.DataBind();
        }

        protected void ActualizarGridViewMascotas()
        {
            Contexto ctx = new Contexto();

            var mascotas = from m1 in ctx.Mascota select m1;

            gvMascotas.DataSource = mascotas.ToList();
            gvMascotas.DataBind();
        }
    }
}