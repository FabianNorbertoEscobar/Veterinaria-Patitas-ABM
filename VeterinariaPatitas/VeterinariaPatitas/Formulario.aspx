<%@ Page Title="" Language="C#" MasterPageFile="~/VeterinariaPatitasMaestra.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="VeterinariaPatitas.Formulario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CabeceraPaginaHija" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoPaginaHija" runat="server">

    <div class="container">
    <div class="text-center titulo">
        <h2>Datos del Cliente</h2>
    </div>
    <br />

    <div class="form-horizontal">
        <div class="form-group">
            <asp:Label ID="lblNombre" AssociatedControlID="txtNombre" runat="server" Text="Nombre:" CssClass="milabel control-label col-sm-2" ></asp:Label>
            <div class="col-sm-8">
                <asp:TextBox ID="txtNombre" runat="server" placeholder="Ingrese el nombre del cliente" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNombre" ControlToValidate="txtNombre" runat="server" Text=" (*)" ErrorMessage="Nombre Cliente: campo obligatorio" CssClass="milabel"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorNombre" ControlToValidate="txtNombre" runat="server" Text=" (*)" ErrorMessage="Nombre Cliente: solo puede ingresar letras (incluyendo algunos signos de puntuación), espacios y apóstrofes" ValidationExpression="^[A-Za-z ÁÉÍÓÚáéíóúÀÈÌÒÙàèìòùÄËÏÖÜäëïöüÇçÑñ']*" CssClass="milabel"></asp:RegularExpressionValidator>
        </div>

        <div class="form-group">
            <asp:Label ID="lblApellido" AssociatedControlID="txtApellido" runat="server" Text="Apellido:" class="milabel control-label col-sm-2" ></asp:Label>
            <div class="col-sm-8">
                <asp:TextBox ID="txtApellido" runat="server" placeholder="Ingrese el apellido del cliente" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorApellido" ControlToValidate="txtApellido" runat="server" Text=" (*)" ErrorMessage="Apellido Cliente: campo obligatorio" CssClass="milabel"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorApellido" ControlToValidate="txtApellido" runat="server" Text=" (*)" ErrorMessage="Apellido Cliente: solo puede ingresar letras (incluyendo algunos signos de puntuación), espacios y apóstrofes" ValidationExpression="^[A-Za-z ÁÉÍÓÚáéíóúÀÈÌÒÙàèìòùÄËÏÖÜäëïöüÇçÑñ']*" CssClass="milabel"></asp:RegularExpressionValidator>
        </div>

        <div class="form-group">
            <asp:Label ID="lblDni" AssociatedControlID="txtDni" runat="server" Text="DNI:" CssClass="milabel control-label col-sm-2"></asp:Label>
            <div class="col-sm-8">
                <asp:TextBox ID="txtDni" runat="server" placeholder="Ingrese el DNI del cliente (solo números)" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDni" ControlToValidate="txtDni" runat="server" Text=" (*)" ErrorMessage="DNI Cliente: campo obligatorio" CssClass="milabel"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorDni" ControlToValidate="txtDni" runat="server" Text=" (*)" ErrorMessage="DNI Cliente: solo se pueden ingresar números" ValidationExpression="^[0-9]*" CssClass="milabel"></asp:RegularExpressionValidator>
            <asp:RangeValidator ID="RangeValidatorDni" ControlToValidate="txtDni" MinimumValue="1111111" MaximumValue="99999999" Type="Integer" runat="server" Text=" (*)" ErrorMessage="DNI Cliente: el rango permitido es 1111111-99999999" CssClass="milabel"></asp:RangeValidator>
        </div>

        <div class="form-group">
            <asp:Label ID="lblDomicilio" AssociatedControlID="txtDomicilio" runat="server" Text="Domicilio:" CssClass="milabel control-label col-sm-2"></asp:Label>
            <div class="col-sm-8">
                <asp:TextBox ID="txtDomicilio" runat="server" placeholder="Ingrese el domicilio del cliente" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDomicilio" ControlToValidate="txtDomicilio" runat="server" Text=" (*)" ErrorMessage="Domicilio Cliente: campo obligatorio" CssClass="milabel"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorDomicilio" ControlToValidate="txtDomicilio" runat="server" Text=" (*)" ErrorMessage="Domicilio Cliente: solo puede ingresar letras (incluyendo algunos signos de puntuación), números, espacios y apóstrofes" ValidationExpression="^[A-Za-z ÁÉÍÓÚáéíóúÀÈÌÒÙàèìòùÄËÏÖÜäëïöüÇçÑñ0-9']*" CssClass="milabel"></asp:RegularExpressionValidator>
        </div>

        <div class="form-group">
            <asp:Label ID="lblProvincia" AssociatedControlId="ddlProvincia" runat="server" Text="Provincia:" CssClass="milabel control-label col-sm-2"></asp:Label>
            <div class="col-sm-8">
                <asp:DropDownList ID="ddlProvincia" runat="server" CssClass="form-control" placeholder="Seleccione la provincia del cliente" title="Seleccione la provincia del cliente">

                </asp:DropDownList>
            </div>
        </div>

        <div class="form-group">
            <asp:Label ID="lblTelefono" AssociatedControlID="txtTelefono" runat="server" Text="Teléfono:" CssClass="milabel control-label col-sm-2" ></asp:Label>
            <div class="col-sm-8">
                <asp:TextBox ID="txtTelefono" runat="server" placeholder="Ingrese el teléfono de contacto (solo números)" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorTelefono" ControlToValidate="txtTelefono" runat="server" Text=" (*)" ErrorMessage="Telefono Cliente: campo obligatorio" CssClass="milabel"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorTelefono" ControlToValidate="txtTelefono" runat="server" Text=" (*)" ErrorMessage="Telefono Cliente: solo se pueden ingresar números" ValidationExpression="^[0-9]*" CssClass="milabel"></asp:RegularExpressionValidator>
        </div>

        <div class="form-group">
            <asp:Label ID="lblEmail" AssociatedControlID="txtEmail" runat="server" Text="E-mail:" CssClass="milabel control-label col-sm-2" ></asp:Label>
            <div class="col-sm-8">
                <asp:TextBox ID="txtEmail" runat="server" placeholder="Ingrese el correo electrónico" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" ControlToValidate="txtEmail" runat="server" Text=" (*)" ErrorMessage="E-mail Cliente: campo obligatorio" CssClass="milabel"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" ControlToValidate="txtEmail" runat="server" Text=" (*)" ErrorMessage="E-mail Cliente: la expresión ingresada no corresponde a la de una dirección de correo electrónico" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="milabel"></asp:RegularExpressionValidator>
        </div>

        <div class="form-group">
            <asp:Label ID="lblEstado" AssociatedControlID="rdbListEstado" runat="server" Text="Estado:" CssClass="milabel control-label col-sm-2"></asp:Label>
            <div class="col-sm-8">
                <asp:RadioButtonList ID="rdbListEstado" runat="server">
                    <asp:ListItem class="milabel radio-inline" Selected>Activo</asp:ListItem>
                    <asp:ListItem class="milabel radio-inline">Inactivo</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEstado" ControlToValidate="rdbListEstado" runat="server" Text=" (*)" ErrorMessage="Estado Cliente: campo obligatorio" CssClass="milabel"></asp:RequiredFieldValidator>
        </div>
    </div>
    <br /><br />

    <div class="text-center titulo">
        <h2>Datos de la Mascota</h2>
    </div>
    <br />

    <div class="form-horizontal">
        <div class="form-group">
            <asp:Label ID="lblNombreMascota" AssociatedControlID="txtNombreMascota" runat="server" Text="Nombre:" CssClass="milabel control-label col-sm-2" ></asp:Label>
            <div class="col-sm-8">
                <asp:TextBox ID="txtNombreMascota" runat="server" placeholder="Ingrese el nombre de la mascota" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNombreMascota" ControlToValidate="txtNombreMascota" runat="server" Text=" (*)" ErrorMessage="Nombre Mascota: campo obligatorio" CssClass="milabel"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorMascota" ControlToValidate="txtNombreMascota" runat="server" Text=" (*)" ErrorMessage="Nombre Mascota: solo puede ingresar letras (incluyendo algunos signos de puntuación), espacios y apóstrofes" ValidationExpression="^[A-Za-z ÁÉÍÓÚáéíóúÀÈÌÒÙàèìòùÄËÏÖÜäëïöüÇçÑñ']*" CssClass="milabel"></asp:RegularExpressionValidator>
        </div>

        <div class="form-group">
            <asp:Label ID="lblTipo" AssociatedControlID="ddlTipo" runat="server" Text="Tipo:" CssClass="milabel control-label col-sm-2" ></asp:Label>
            <div class="col-sm-8">
                <asp:DropDownList ID="ddlTipo" runat="server" CssClass="form-control" placeholder="Seleccione el tipo de mascota" title="Seleccione el tipo de mascota">
                    
                </asp:DropDownList>
            </div>
        </div>

        <div class="form-group">
            <asp:Label ID="lblRaza" AssociatedControlID="txtRaza" runat="server" Text="Raza:" CssClass="milabel control-label col-sm-2" ></asp:Label>
            <div class="col-sm-8">
                <asp:TextBox ID="txtRaza" runat="server" placeholder="Ingrese la raza de la mascota" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorRaza" ControlToValidate="txtRaza" runat="server" Text=" (*)" ErrorMessage="Raza Mascota: campo obligatorio" CssClass="milabel"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorRaza" ControlToValidate="txtRaza" runat="server" Text=" (*)" ErrorMessage="Raza Mascota: solo puede ingresar letras (incluyendo algunos signos de puntuación), espacios y apóstrofes" ValidationExpression="^[A-Za-z ÁÉÍÓÚáéíóúÀÈÌÒÙàèìòùÄËÏÖÜäëïöüÇçÑñ']*" CssClass="milabel"></asp:RegularExpressionValidator>
        </div>

        <div class="form-group">
            <asp:Label ID="lblEdad" AssociatedControlID="txtEdad" runat="server" Text="Edad:" CssClass="milabel control-label col-sm-2" ></asp:Label>
            <div class="col-sm-8">
                <asp:TextBox ID="txtEdad" runat="server" placeholder="Ingrese la edad de la mascota (solo números - en años)" CssClass="form-control" ></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEdad" ControlToValidate="txtEdad" runat="server" Text=" (*)" ErrorMessage="Edad Mascota: campo obligatorio" CssClass="milabel"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEdad" ControlToValidate="txtEdad" runat="server"  Text=" (*)" ErrorMessage="Edad Mascota: solo se pueden ingresar números" ValidationExpression="^[0-9]*" CssClass="milabel"></asp:RegularExpressionValidator>
            <asp:CompareValidator ID="CompareValidatorEdad" ControlToValidate="txtEdad" ValueToCompare="100" Operator="LessThanEqual" Type="Integer" runat="server" Text=" (*)" ErrorMessage="Edad Mascota: la edad debe ser menor o igual que 100" CssClass="milabel"></asp:CompareValidator>
        </div>

        <div class="form-group">
            <asp:Label ID="lblTamanio" AssociatedControlID="ddlTamanio" runat="server" Text="Tamaño:" CssClass="milabel control-label col-sm-2"></asp:Label>
            <div class="col-sm-8">
                <asp:DropDownList ID="ddlTamanio" runat="server" CssClass="form-control" placeholder="Seleccione el tamaño de la mascota" title="Seleccione el tamaño de la mascota">
                    
                </asp:DropDownList>
            </div>
        </div>

        <div class="form-group">
            <asp:Label ID="lblSexo" AssociatedControlID="rdbListSexo" runat="server" Text="Sexo:" CssClass="milabel control-label col-sm-2"></asp:Label>
            <div class="col-sm-8">
                <asp:RadioButtonList ID="rdbListSexo" runat="server">
                    <asp:ListItem class="milabel radio-inline" Selected>Masculino</asp:ListItem>
                    <asp:ListItem class="milabel radio-inline">Femenino</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorSexo" ControlToValidate="rdbListSexo" runat="server" Text=" (*)" ErrorMessage="Sexo Mascota: campo obligatorio" CssClass="milabel"></asp:RequiredFieldValidator>
        </div>

    </div>
        <asp:ValidationSummary ID="ValidationSummaryFormulario" runat="server" HeaderText="Resumen de Errores" class="bg-success"/>
    <br /><br />

    <div class="form-group row center-block">
        <div class="col-sm-4">
           <asp:Button ID="btnAceptar" runat="server" Text="ACEPTAR" CssClass="form-control btn-lg btn-success" title="Aceptar" OnClick="btnAceptar_Click"/>
        </div>
        <div class="col-sm-4">
            <asp:Button ID="btnLimpiarCampos" runat="server" Text="LIMPIAR CAMPOS" CssClass="form-control btn-lg btn-warning" title="Limpiar Campos" OnClick="btnLimpiarCampos_Click"/>
        </div>
        <div class="col-sm-4">
            <asp:Button ID="btnVolverAlInicio" runat="server" Text="VOLVER AL INICIO" CssClass="form-control btn-lg btn-danger" title="Volver al Inicio" OnClick="btnVolverAlInicio_Click"/>
        </div>
    </div>
    <br />

    </div>

</asp:Content>
