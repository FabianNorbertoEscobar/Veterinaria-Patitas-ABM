# Veterinaria-Patitas-ABM
Veterinaria Patitas ABM. Aplicación Web en C#.NET con ASP.NET. PowerShell. HTML. XML. CSS. JavaScript. Entity Framework. Bootstrap. JQuery. MSSQL. Responsive Design. Trabajo Práctico del Curso de Desarrollo Eb en .NET, Polo Tecnológico. UNLaM.
 Universidad Nacional de la Matanza - DIIT
Polo Tecnológico 2017
Desarrollo de Aplicaciones Web en .NET
UNLaM - Polo Tecnológico
Trabajo Práctico
1. Objetivo
Este documento describe el alcance funcional y los requisitos técnicos del trabajo práctico que
los alumnos del curso de Desarrollo de Aplicaciones Web en .NET del Polo Tecnológico.
2. Equipo
El equipo para realizar el trabajo práctico deberá ser de 4 alumnos, sin excepciones.
3. Requisitos Técnicos
3.1 Proyecto .NET
1. El trabajo práctico deberá ser realizado utilizando ASP.NET. El tipo de proyecto a
utilizar es una aplicación web.
3.2 Estilos
1. No se permitirán que se utilicen los estilos ya provistos por Microsoft en la aplicación de
ejemplo que provee Visual Studio.
1
Universidad Nacional de la Matanza - DIIT
Polo Tecnológico 2017
2. Todos los archivos .css deberán estar dentro de una carpeta.
3. No utilizar estilos inline (atributo style=””) ni definir estilos dentro de una pagina (tags
<style>).
4. Debe de utilizarse algún framework/biblioteca de hojas de estilo. Algunos ejemplos:
a. Twitter Bootstrap ( http://getbootstrap.com/ , temas http://bootswatch.com/ ).
Video curso introductorio sugerido (no oficial) https://youtu.be/nug1pMke-y4
b. Foundation ( http://foundation.zurb.com/docs/ )
3.3 JavaScript
1. No será necesario utilizar JavaScript para ninguna de las funcionalidades requeridas en
el trabajo práctico.
3.4 HTML
1. No utilizar tags table para organizar el contenido de una página en columnas, los tags
table solo están permitidos para representar una grilla/listado de información.
2. Se requiere el uso de master page para estructura los formularios web de la aplicación.
Dentro de la master page deberán referenciarse las hojas de estilo.
3.5 Validación
1. Utilizar validaciones tanto del lado del cliente (JavaScript) como del lado del servidor
utilizando sólo controles ASP.NET. No es necesario utilizar javascript nativo o cualquier
otro framework que permite realizar validaciones del lado cliente.
2. Se puede utilizar una lista que detalle todos los campos que no cumplieron con las
validaciones.
3.6 Arquitectura y Consideraciones de Desarrollo
1. La capa de acceso a datos deberá ser realizada con Entity Framework Este componente
de .NET será explicado en clases a fin de que los alumnos comprendan cómo utilizarlo.
2. Utilizar la menor cantidad posible de código en los archivos aspx.cs, ascx.cs, master.cs,
etc. e intentar que en los mismos haya llamadas a métodos dentro de otro proyecto que
contenga las reglas de negocio.
2
Universidad Nacional de la Matanza - DIIT
Polo Tecnológico 2017
4. Objetivo del trabajo
El objetivo del trabajo consiste en el desarrollo de las pantallas de ABM (Alta/Baja/Modificación)
y de listado de una entidad a elección del alumno.
El alumno podrá elegir cualquier entidad que desee cumpliendo las siguientes condiciones
dentro de la aplicación web:
1. la entidad debe contener al menos 5 campos descriptivos.
a. un campo debe ser un booleano .
b. un campo debe ser numérico .
c. al menos un campo debe ser alfanumérico (tipo de dato en SQL Server
nvarchar).
2. se debe almacenar fecha de carga .
3. se debe registrar la fecha de modificación .
4. los siguientes controles deben ser utilizados: asp:TextBox, asp:Label,
asp:DropDownList. asp:GridView
5. uno de los campos debe contener la integridad referencial con otra entidad dependiente
(ejemplo: si es un ABM de Libros, debería existir una tabla Libro y por ejemplo esta tabla
tener un campo FK IdGenero que referencie a una tabla Genero, y en la pantalla de
creación/modificación existiría un combo con valores “Ciencia Ficción”, “Policial”,
“Suspenso” y esos valores proviniendo de esa tabla). El control DropDownList se debe
utilizar en este caso.
6. se debe aplicar las validaciones necesarias:
a. todos los campos son requeridos
b. se debe aplicar una validación de comparación
c. se debe aplicar una validación de expresión regular .
d. se debe aplicar una validación de mayor o menor .
Flujo de la aplicación
La aplicación deberá iniciar en la pantalla de listado. Esta pantalla contiene todos los registros
existentes en la base de datos. En caso de que no haya, se debe mostrar un mensaje que
indique que no hay datos .
Debe existir un boton (asp:Button) que permite ir a la pantalla para carga de nuevos registros.
Las opciones de modificar y eliminar deben estar dentro de la grilla que contiene el listado y
deben aparecer por cada ítem dentro del mismo.
3
Universidad Nacional de la Matanza - DIIT
Polo Tecnológico 2017
No se deberá visualizar dentro de los campos la clave primaria de cada registro de la base de
datos.
Funcionalidad Bonus
Para aquellos alumnos que deseen sumar puntos adicionales a la entrega del trabajo práctico
deben agrega una funcionalidad de búsqueda en la pantalla de listado. A través de un
asp:TextBox deberán realizar un filtrado del resultado a mostrar según el texto ingreso. El filtro
debe ser aplicado sobre un sólo campo de la entidad.
5. Forma de Entrega
El TP deberá ser enviado a los siguientes destinatarios, copiando a todos los integrantes del
equipo en el email enviado.
● mpazwasiuchnik@unlam.edu.ar ; pablokuko@gmail.com ; pnsanchez@unlam.edu.ar ;
● el resto de los integrantes que participaron del tp (como CC)
El email deberá contener los siguientes puntos:
a. El título del email será POLO-2017-TP-[Integrantes]
b. Respuestas a las siguientes preguntas:
i. ¿Qué nota creen que deberían sacar en el TP? (1-10, donde para 7 debe estar
toda la funcionalidad pedida) y ¿por qué?
ii. ¿Qué cosas creen que podrían mejorarse?
iii. ¿Qué les resultó más complicado?
c. Un Archivo [Grupo-integrante1-integrate2-etc].zip con toda la solución para que pueda
ser compilada y ejecutada en cualquier computadora. Cambiarle la extension al zip y
que sea [Grupo-integrante1-integrate2-etc].txt, porque puede que el mail rebote
por seguridad.
6. Condiciones de Aprobación
1. El TP deberá cumplir con todos los requisitos técnicos y funcionales definidos. No se
aceptará que alguna funcionalidad o requisito técnicos no se encuentren plasmados en
el trabajo práctico.
4
Universidad Nacional de la Matanza - DIIT
Polo Tecnológico 2017
2. Al momento de la entrega del trabajo práctico, todos los alumnos de cada equipo
deberán estar presentes para la defensa del trabajo práctico.
3. En la defensa del trabajo, se evaluará el grado de conocimiento y participación en el
desarrollo del trabajo práctico de cada alumno.
5
