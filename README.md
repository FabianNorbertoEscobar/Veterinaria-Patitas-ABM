# Veterinaria Patitas

Aplicación web de prácticas para administrar clientes de una veterinaria y sus mascotas. El proyecto implementa operaciones ABM (alta, baja y modificación), listados y filtros, y fue realizado como trabajo práctico del curso **Desarrollo de Aplicaciones Web en .NET** del Polo Tecnológico de la Universidad Nacional de La Matanza (2017).

> Es un proyecto académico basado en tecnologías de Microsoft de esa época. No está pensado como una solución lista para producción ni utiliza una arquitectura moderna de .NET.

## Funcionalidades

- Listado de clientes y mascotas en grillas independientes, con sus datos relacionados.
- Alta de un cliente y su mascota asociada desde un único formulario.
- Modificación y baja de clientes, con una pantalla de confirmación antes de aplicar los cambios.
- Búsqueda por prefijo: clientes por nombre o apellido, y mascotas por nombre o raza.
- Conteo de resultados y opción para quitar los filtros.
- Selección de provincia, tipo de mascota y tamaño desde listas cargadas con datos de la base.
- Validaciones de campos obligatorios, formatos (por ejemplo, DNI y correo electrónico) y rangos numéricos mediante controles de validación de ASP.NET.
- Diseño compartido entre páginas, estilos con Bootstrap y contenido visual relacionado con la veterinaria.

## Stack tecnológico

| Área | Tecnología |
| --- | --- |
| Aplicación web | ASP.NET Web Forms, C# y .NET Framework 4.5 |
| Persistencia | Entity Framework 6, modelo EDMX y consultas LINQ |
| Base de datos | Microsoft SQL Server |
| Interfaz | HTML, CSS, Bootstrap y JavaScript |
| Bibliotecas de interfaz | jQuery 3.1.1 y Bootstrap (archivos locales) |
| Ejecución local | Visual Studio e IIS Express |

El modelo Entity Framework es de tipo **Database First**: `VeterinariaPatitas.edmx` describe el modelo y los archivos `.tt` generan las clases de entidades y el contexto. La conexión configurada se llama `Contexto`.

## Modelo de datos

- **Cliente** almacena datos de contacto, estado y fechas de carga y modificación.
- **Mascota** se asocia a un cliente y registra nombre, raza, edad, sexo, tipo y tamaño.
- **Provincia**, **Tipo** y **Tamanio** proveen los valores de referencia de las listas desplegables.

Las relaciones y claves foráneas están definidas en el modelo EDMX y en el script SQL incluido. La aplicación registra los datos del cliente y su mascota desde el mismo formulario.

## Estructura del repositorio

```text
.
├── README.md
├── 2017.Polo.TP.pdf                 # Enunciado original del trabajo práctico
└── VeterinariaPatitas/
    ├── VeterinariaPatitas.sln       # Solución de Visual Studio
    └── VeterinariaPatitas/
        ├── PáginaPrincipal.aspx     # Listados y filtros
        ├── Formulario.aspx          # Alta y modificación
        ├── Confirmación.aspx        # Confirmación y persistencia de cambios
        ├── VeterinariaPatitasMaestra.Master
        ├── VeterinariaPatitas.edmx  # Modelo Entity Framework
        ├── css/                     # Bootstrap y estilos del sitio
        ├── js/                      # jQuery y Bootstrap
        ├── images/                  # Imágenes de la interfaz
        ├── queries/query.sql        # Datos de referencia de ejemplo
        └── buckup de la BD/         # Archivos MDF/LDF y script de la base
```

## Requisitos para ejecutarlo

- Windows con Visual Studio compatible con proyectos ASP.NET Web Forms y el **targeting pack de .NET Framework 4.5**.
- IIS Express (incluido habitualmente con Visual Studio).
- Microsoft SQL Server y SQL Server Management Studio para preparar la base.

### Puesta en marcha

1. Abra `VeterinariaPatitas/VeterinariaPatitas.sln` en Visual Studio y restaure los paquetes NuGet si Visual Studio lo solicita. Entity Framework 6 está declarado en `packages.config`.
2. Prepare una base de datos llamada `VeterinariaPatitas` en la instancia local de SQL Server. Puede adjuntar `VeterinariaPatitas/VeterinariaPatitas/buckup de la BD/VeterinariaPatitas.mdf` (junto con su archivo de log), o ejecutar el script `script buckup de la BD VeterinariaPatitas.sql` de esa misma carpeta desde SQL Server Management Studio. Si ejecuta el script, revise y adapte las rutas de archivos que contiene a su instalación.
3. Si la instancia, el nombre de la base o el método de autenticación son distintos, actualice la cadena `Contexto` en `VeterinariaPatitas/VeterinariaPatitas/Web.config`. La configuración incluida apunta a `(local)`, a la base `VeterinariaPatitas` y usa autenticación integrada de Windows.
4. Configure la solución para iniciar la aplicación web y ejecute con IIS Express. La pantalla de inicio funcional es `PáginaPrincipal.aspx`.

La carpeta `queries` contiene sentencias para cargar datos de referencia y ejemplos adicionales; ejecútelas solo si esos registros no existen ya en la base. El script de base también contiene datos de ejemplo. No ejecute ambos conjuntos de inserciones repetidamente, ya que pueden duplicar registros.

## Prácticas y alcance

El trabajo aplica conceptos introductorios de desarrollo web con .NET: páginas Web Forms con code-behind, una Master Page compartida, controles de servidor (`GridView`, `DropDownList`, `TextBox` y validadores), relaciones entre entidades, acceso a datos con Entity Framework y hojas de estilo externas organizadas en una carpeta.

La lógica de las operaciones está principalmente en los code-behind de las páginas; no hay una capa de negocio independiente. Para mantener el proyecto como material de práctica, se conservan el modelo y las dependencias originales. La separación de responsabilidades, la actualización de dependencias, la configuración por entorno y la cobertura automatizada serían posibles mejoras para una evolución futura.

## Licencia y material académico

El repositorio incluye el enunciado `2017.Polo.TP.pdf` como referencia del curso. No se especifica una licencia de software en el proyecto.
