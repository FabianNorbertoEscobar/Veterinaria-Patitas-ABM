<%@ Page Title="" Language="C#" MasterPageFile="~/VeterinariaPatitasMaestra.Master" AutoEventWireup="true" CodeBehind="Confirmación.aspx.cs" Inherits="VeterinariaPatitas.Confirmación" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CabeceraPaginaHija" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoPaginaHija" runat="server">
    
    <div class="text-center titulo">
        <h2>Página de Confirmación</h2>
        <br />
    </div>

    <div class="text-center">
        <code>Lea atentamente todos los datos ingresados. Si son correctos, confirme la operación.
        Caso contrario, vuelva al formulario y modifique los datos que desee.</code>
    </div>
    <br />

    <div class="wrapper bg-warning center-block">

        <div class="text-center bg-danger">
            <h2>Datos del Cliente</h2>
        </div>
        <br />

        <div class="form-horizontal">
            <div class="form-group">
                <asp:Label ID="Label1"  runat="server" Text="Nombre:" CssClass="control-label col-sm-3" ></asp:Label>
                <asp:Label ID="lblNombre" runat="server" Text="" CssClass="control-label col-sm-7 text-left"></asp:Label>
            </div>

            <div class="form-group">
                <asp:Label ID="Label2"  runat="server" Text="Apellido:" CssClass="control-label col-sm-3" ></asp:Label>
                <asp:Label ID="lblApellido" runat="server" Text="" CssClass="control-label col-sm-7 text-left"></asp:Label>
            </div>

            <div class="form-group">
                <asp:Label ID="Label3"  runat="server" Text="DNI:" CssClass="control-label col-sm-3" ></asp:Label>
                <asp:Label ID="lblDni" runat="server" Text="" CssClass="control-label col-sm-7 text-left"></asp:Label>
            </div>

            <div class="form-group">
                <asp:Label ID="Label4"  runat="server" Text="Domicilio:" CssClass="control-label col-sm-3" ></asp:Label>
                <asp:Label ID="lblDomicilio" runat="server" Text="" CssClass="control-label col-sm-7 text-left"></asp:Label>
            </div>

            <div class="form-group">
                <asp:Label ID="Label5"  runat="server" Text="Provincia:" CssClass="control-label col-sm-3" ></asp:Label>
                <asp:Label ID="lblProvincia" runat="server" Text="" CssClass="control-label col-sm-7 text-left"></asp:Label>
            </div>

            <div class="form-group">
                <asp:Label ID="Label6"  runat="server" Text="Teléfono:" CssClass="control-label col-sm-3" ></asp:Label>
                <asp:Label ID="lblTelefono" runat="server" Text="" CssClass="control-label col-sm-7 text-left"></asp:Label>
            </div>

            <div class="form-group">
                <asp:Label ID="Label7"  runat="server" Text="E-mail:" CssClass="control-label col-sm-3" ></asp:Label>
                <asp:Label ID="lblEmail" runat="server" Text="" CssClass="control-label col-sm-7 text-left"></asp:Label>
            </div>

            <div class="form-group">
                <asp:Label ID="Label8"  runat="server" Text="Estado:" CssClass="control-label col-sm-3" ></asp:Label>
                <asp:Label ID="lblEstado" runat="server" Text="" CssClass="control-label col-sm-7 text-left"></asp:Label>
            </div> 

        </div>

        <div class="text-center bg-danger">
            <h2>Datos de la Mascota</h2>
        </div>
        <br />

        <div class="form-horizontal">

            <div class="form-group">
                <asp:Label ID="Label9"  runat="server" Text="Nombre:" CssClass="control-label col-sm-3" ></asp:Label>
                <asp:Label ID="lblNombreMascota" runat="server" Text="" CssClass="control-label col-sm-7 text-left"></asp:Label>
            </div>

            <div class="form-group">
                <asp:Label ID="Label10"  runat="server" Text="Tipo:" CssClass="control-label col-sm-3" ></asp:Label>
                <asp:Label ID="lblTipo" runat="server" Text="" CssClass="control-label col-sm-7 text-left"></asp:Label>
            </div>

            <div class="form-group">
                <asp:Label ID="Label11"  runat="server" Text="Raza:" CssClass="control-label col-sm-3" ></asp:Label>
                <asp:Label ID="lblRaza" runat="server" Text="" CssClass="control-label col-sm-7 text-left"></asp:Label>
            </div>

            <div class="form-group">
                <asp:Label ID="Label12"  runat="server" Text="Edad:" CssClass="control-label col-sm-3" ></asp:Label>
                <asp:Label ID="lblEdad" runat="server" Text="" CssClass="control-label col-sm-7 text-left"></asp:Label>
            </div>

            <div class="form-group">
                <asp:Label ID="Label13"  runat="server" Text="Tamaño:" CssClass="control-label col-sm-3" ></asp:Label>
                <asp:Label ID="lblTamanio" runat="server" Text="" CssClass="control-label col-sm-7 text-left"></asp:Label>
            </div>

            <div class="form-group">
                <asp:Label ID="Label14"  runat="server" Text="Sexo:" CssClass="control-label col-sm-3" ></asp:Label>
                <asp:Label ID="lblSexo" runat="server" Text="" CssClass="control-label col-sm-7 text-left"></asp:Label>
            </div>

        </div>

        <br />
    </div>
    <br />

    <div class="form-horizontal">
            
        <div class="form-group row center-block">
            <div class="col-sm-4">
                <asp:Button ID="btnConfirmar" runat="server" Text="CONFIRMAR" CssClass="form-control btn-lg btn-success" title="Confirmar" OnClick="btnConfirmar_Click"/>
            </div>
            <div class="col-sm-4">
                <asp:Button ID="btnVolverAlFormulario" runat="server" Text="VOLVER AL FORMULARIO" CssClass="form-control btn-lg btn-warning" title="Volver al Formulario" OnClick="btnVolverAlFormulario_Click"/>
            </div>
            <div class="col-sm-4">
                <asp:Button ID="btnVolverAlInicio" runat="server" Text="VOLVER AL INICIO" CssClass="form-control btn-lg btn-danger" title="Volver al Inicio" OnClick="btnVolverAlInicio_Click"/>
            </div>
        </div>
        <br />

    </div>

</asp:Content>
