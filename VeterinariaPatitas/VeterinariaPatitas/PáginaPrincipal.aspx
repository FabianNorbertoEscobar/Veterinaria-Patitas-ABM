<%@ Page Title="" Language="C#" MasterPageFile="~/VeterinariaPatitasMaestra.Master" AutoEventWireup="true" CodeBehind="PáginaPrincipal.aspx.cs" Inherits="VeterinariaPatitas.PáginaPrincipal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CabeceraPaginaHija" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoPaginaHija" runat="server">

    <div class="text-center titulo">
        <h2>Datos de los Clientes</h2>
    </div>
    <br />

    <div class="form-group form-inline pull-right">
        <asp:TextBox ID="txtBusquedaClientes" runat="server" CssClass="form-control" placeholder="Realizar una búsqueda por cliente" Width="300" ></asp:TextBox>
        <asp:Label ID="lblBusquedaClientes" runat="server" AssociatedControlID="ddlBusquedaClientes" Text="Filtrar por:" CssClass="milabel control-label"></asp:Label>
        <asp:DropDownList ID="ddlBusquedaClientes" runat="server" CssClass="form-control" title="Seleccione el campo a filtrar">
            <asp:ListItem>Nombre</asp:ListItem>
            <asp:ListItem>Apellido</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="btnFiltrarClientes" runat="server" CssClass="form-control btn-lg btn-info" Text="FILTRAR" OnClick="btnFiltrarClientes_Click" />
        <asp:Button ID="btnQuitarFiltroClientes" runat="server" CssClass="form-control btn-lg btn-primary" Text="QUITAR FILTRO" title="Quitar filtro" OnClick="btnQuitarFiltroClientes_Click" />
    </div>
    <br /><br />

    <div class="clearfix"></div>
    <br /> 

    <div class="center-block text-left table table-responsive table-hover">
        <asp:GridView ID="gvClientes" runat="server" CellPadding="4" ForeColor="Black" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#FF6200" BorderStyle="Solid" BorderWidth="2px" CellSpacing="2" >
            <FooterStyle BackColor="#FDF3A5" />
            <HeaderStyle BackColor="#BC0064" Font-Bold="True" ForeColor="White" CssClass="text-center" />
            <PagerStyle ForeColor="Black" HorizontalAlign="Left" BackColor="#CCCCCC" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />

            <Columns>
                <asp:TemplateField HeaderText="NOMBRE">
                    <ItemTemplate>
                        <asp:Label ID="lblNombre" runat="server" Text='<% #Bind("Nombre") %>' CssClass="text-center"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>      
                <asp:TemplateField HeaderText="APELLIDO">
                    <ItemTemplate>
                        <asp:Label ID="lblApellido" runat="server" Text='<% #Bind("Apellido") %>' CssClass="text-center"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>    
                <asp:TemplateField HeaderText="DNI">
                    <ItemTemplate>
                        <asp:Label ID="lblDni" runat="server" Text='<% #Bind("DNI") %>' CssClass="text-center"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>   
                <asp:TemplateField HeaderText="DOMICILIO">
                    <ItemTemplate>
                        <asp:Label ID="lblDomicilio" runat="server" Text='<% #Bind("Domicilio") %>' CssClass="text-center"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>      
                <asp:TemplateField HeaderText="PROVINCIA">
                    <ItemTemplate>
                        <asp:Label ID="lblProvincia" runat="server" Text='<% #Bind("Provincia.Nombre") %>' CssClass="text-center"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>      
                <asp:TemplateField HeaderText="TELÉFONO">
                    <ItemTemplate>
                        <asp:Label ID="lblTelefono" runat="server" Text='<% #Bind("Telefono") %>' CssClass="text-center"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>     
                <asp:TemplateField HeaderText="E-MAIL">
                    <ItemTemplate>
                        <asp:Label ID="lblEmail" runat="server" Text='<% #Bind("Email") %>' CssClass="text-center"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>   
                <asp:TemplateField HeaderText="ESTADO">
                    <ItemTemplate>
                        <asp:Label ID="lblEstado" runat="server" Text='<% #Bind("Estado") %>' CssClass="text-center"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>      
                <asp:TemplateField HeaderText="MASCOTA">
                    <ItemTemplate>
                        <asp:Label ID="lblMascota" runat="server" Text='<% #Bind("Mascota.Nombre") %>' CssClass="text-center"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="FECHA DE CARGA">
                    <ItemTemplate>
                        <asp:Label ID="lblFechaCarga" runat="server" Text='<% #Bind("FechaCarga") %>' CssClass="text-center"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>      
                <asp:TemplateField HeaderText="FECHA DE MODIFICACIÓN">
                    <ItemTemplate>
                        <asp:Label ID="lblFechaCarga" runat="server" Text='<% #Bind("FechaModificacion") %>' CssClass="text-center"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField> 
                
                <asp:TemplateField HeaderText="MODIFICACIÓN">
                    <ItemTemplate>
                        <a href="/Formulario.aspx?id=<%#Eval("Id")%>&modo=modificacion" class="btn btn-link" >Modificación</a>
                    </ItemTemplate>
                </asp:TemplateField>    
                <asp:TemplateField HeaderText="BAJA">
                    <ItemTemplate>
                        <a href="/Confirmación.aspx?id=<%#Eval("Id")%>&modo=baja" class="btn btn-link" >Baja</a>
                    </ItemTemplate>
                </asp:TemplateField> 
                    
            </Columns>

        </asp:GridView>
    </div>
    <br /><br />

    <div class="clearfix"></div>
    
    <div class="text-center">
        <asp:Label ID="lblClientes" runat="server" Text="Cantidad de clientes: " CssClass="milabel"></asp:Label>
        <asp:Label ID="lblCantidadClientes" runat="server" Text="0" CssClass="milabel"></asp:Label>
    </div>
    <br /><br />

    <div class="clearfix"></div>

    <div class="text-center titulo">
        <h2>Datos de las Mascotas</h2>
    </div>
    <br />

    <div class="form-group form-inline pull-right">
        <asp:TextBox ID="txtBusquedaMascotas" runat="server" CssClass="form-control" placeholder="Realizar una búsqueda por mascota" Width="300" ></asp:TextBox>
        <asp:Label ID="lblBusquedaMascotas" runat="server" AssociatedControlID="ddlBusquedaMascotas" Text="Filtrar por:" CssClass="milabel control-label"></asp:Label>
        <asp:DropDownList ID="ddlBusquedaMascotas" runat="server" CssClass="form-control" title="Seleccione el campo a filtrar">
            <asp:ListItem>Nombre</asp:ListItem>
            <asp:ListItem>Raza</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="btnFiltrarMascotas" runat="server" CssClass="form-control btn-lg btn-info" Text="FILTRAR" OnClick="btnFiltrarMascotas_Click" />
        <asp:Button ID="btnQuitarFiltroMascotas" runat="server" CssClass="form-control btn-lg btn-primary" Text="QUITAR FILTRO" title="Quitar filtro" OnClick="btnQuitarFiltroMascotas_Click" />
    </div>
    <br /><br />

    <div class="clearfix"></div>
    <br /> 

    <div class="center-block text-left table table-responsive table-hover">
        <asp:GridView ID="gvMascotas" runat="server" CellPadding="4" ForeColor="Black" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#FF6200" BorderStyle="Solid" BorderWidth="2px" CellSpacing="2" >
            <FooterStyle BackColor="#FDF3A5" />
            <HeaderStyle BackColor="#BC0064" Font-Bold="True" ForeColor="White" CssClass="text-center" />
            <PagerStyle ForeColor="Black" HorizontalAlign="Left" BackColor="#CCCCCC" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />

            <Columns>
                <asp:TemplateField HeaderText="NOMBRE">
                    <ItemTemplate>
                        <asp:Label ID="lblMascota" runat="server" Text='<% #Bind("Nombre") %>' CssClass="text-center"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>     
                <asp:TemplateField HeaderText="TIPO">
                    <ItemTemplate>
                        <asp:Label ID="lblTipo" runat="server" Text='<% #Bind("Tipo.Nombre") %>' CssClass="text-center"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>       
                <asp:TemplateField HeaderText="RAZA">
                    <ItemTemplate>
                        <asp:Label ID="lblRaza" runat="server" Text='<% #Bind("Raza") %>' CssClass="text-center"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>     
                <asp:TemplateField HeaderText="EDAD">
                    <ItemTemplate>
                        <asp:Label ID="lblEdad" runat="server" Text='<% #Bind("Edad") %>' CssClass="text-center"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>      
                <asp:TemplateField HeaderText="TAMAÑO">
                    <ItemTemplate>
                        <asp:Label ID="lblTamanio" runat="server" Text='<% #Bind("Tamanio.Nombre") %>' CssClass="text-center"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>      
                <asp:TemplateField HeaderText="SEXO">
                    <ItemTemplate>
                        <asp:Label ID="lblSexo" runat="server" Text='<% #Bind("Sexo") %>' CssClass="text-center"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>   
                    
            </Columns>

        </asp:GridView>
    </div>
    <br /><br />

    <div class="clearfix"></div>
    
    <div class="text-center">
        <asp:Label ID="lblMascotas" runat="server" Text="Cantidad de mascotas: " CssClass="milabel"></asp:Label>
        <asp:Label ID="lblCantidadMascotas" runat="server" Text="0" CssClass="milabel"></asp:Label>
    </div>
    <br /><br />

    <div class="clearfix"></div>
   
    <div class="form-group">
        <asp:Button ID="btnAlta" runat="server" Text="ALTA" CssClass="form-control btn-lg btn-success" OnClick="btnAlta_Click" title="Alta"/>
    </div>
    <br />

</asp:Content>
