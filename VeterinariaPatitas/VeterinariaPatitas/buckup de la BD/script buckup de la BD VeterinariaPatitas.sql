USE [master]
GO
/****** Object:  Database [VeterinariaPatitas]    Script Date: 04/04/2017 05:04:09 p.m. ******/
CREATE DATABASE [VeterinariaPatitas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VeterinariaPatitas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\VeterinariaPatitas.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'VeterinariaPatitas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\VeterinariaPatitas_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [VeterinariaPatitas] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VeterinariaPatitas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VeterinariaPatitas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VeterinariaPatitas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VeterinariaPatitas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VeterinariaPatitas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VeterinariaPatitas] SET ARITHABORT OFF 
GO
ALTER DATABASE [VeterinariaPatitas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VeterinariaPatitas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VeterinariaPatitas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VeterinariaPatitas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VeterinariaPatitas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VeterinariaPatitas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VeterinariaPatitas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VeterinariaPatitas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VeterinariaPatitas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VeterinariaPatitas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [VeterinariaPatitas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VeterinariaPatitas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VeterinariaPatitas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VeterinariaPatitas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VeterinariaPatitas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VeterinariaPatitas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VeterinariaPatitas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VeterinariaPatitas] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [VeterinariaPatitas] SET  MULTI_USER 
GO
ALTER DATABASE [VeterinariaPatitas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VeterinariaPatitas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VeterinariaPatitas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VeterinariaPatitas] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [VeterinariaPatitas] SET DELAYED_DURABILITY = DISABLED 
GO
USE [VeterinariaPatitas]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 04/04/2017 05:04:09 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido] [nvarchar](50) NOT NULL,
	[DNI] [int] NOT NULL,
	[Domicilio] [nvarchar](50) NOT NULL,
	[IdProvincia] [int] NOT NULL,
	[Telefono] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
	[FechaCarga] [date] NOT NULL,
	[FechaModificacion] [date] NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mascota]    Script Date: 04/04/2017 05:04:09 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mascota](
	[IdCliente] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[IdTipo] [int] NOT NULL,
	[Raza] [nvarchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[IdTamanio] [int] NOT NULL,
	[Sexo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Mascota] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 04/04/2017 05:04:09 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Provincia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tamanio]    Script Date: 04/04/2017 05:04:09 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tamanio](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tamanio] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipo]    Script Date: 04/04/2017 05:04:09 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tipo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Provincia] FOREIGN KEY([IdProvincia])
REFERENCES [dbo].[Provincia] ([Id])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Provincia]
GO
ALTER TABLE [dbo].[Mascota]  WITH CHECK ADD  CONSTRAINT [FK_Mascota_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([Id])
GO
ALTER TABLE [dbo].[Mascota] CHECK CONSTRAINT [FK_Mascota_Cliente]
GO
ALTER TABLE [dbo].[Mascota]  WITH CHECK ADD  CONSTRAINT [FK_Mascota_Tamanio] FOREIGN KEY([IdTamanio])
REFERENCES [dbo].[Tamanio] ([Id])
GO
ALTER TABLE [dbo].[Mascota] CHECK CONSTRAINT [FK_Mascota_Tamanio]
GO
ALTER TABLE [dbo].[Mascota]  WITH CHECK ADD  CONSTRAINT [FK_Mascota_Tipo] FOREIGN KEY([IdTipo])
REFERENCES [dbo].[Tipo] ([Id])
GO
ALTER TABLE [dbo].[Mascota] CHECK CONSTRAINT [FK_Mascota_Tipo]
GO
USE [master]
GO
ALTER DATABASE [VeterinariaPatitas] SET  READ_WRITE 
GO
