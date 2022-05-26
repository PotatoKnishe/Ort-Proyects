USE [master]
GO
/****** Object:  Database [tpefsibdd]    Script Date: 26/5/2022 20:13:24 ******/
CREATE DATABASE [tpefsibdd]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TpEfsi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TpEfsi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TpEfsi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TpEfsi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [tpefsibdd] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tpefsibdd].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tpefsibdd] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [tpefsibdd] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [tpefsibdd] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [tpefsibdd] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [tpefsibdd] SET ARITHABORT OFF 
GO
ALTER DATABASE [tpefsibdd] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [tpefsibdd] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [tpefsibdd] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [tpefsibdd] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [tpefsibdd] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [tpefsibdd] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [tpefsibdd] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [tpefsibdd] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [tpefsibdd] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [tpefsibdd] SET  DISABLE_BROKER 
GO
ALTER DATABASE [tpefsibdd] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [tpefsibdd] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [tpefsibdd] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [tpefsibdd] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [tpefsibdd] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [tpefsibdd] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [tpefsibdd] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [tpefsibdd] SET RECOVERY FULL 
GO
ALTER DATABASE [tpefsibdd] SET  MULTI_USER 
GO
ALTER DATABASE [tpefsibdd] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [tpefsibdd] SET DB_CHAINING OFF 
GO
ALTER DATABASE [tpefsibdd] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [tpefsibdd] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [tpefsibdd] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [tpefsibdd] SET QUERY_STORE = OFF
GO
USE [tpefsibdd]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 26/5/2022 20:13:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Apellido] [varchar](100) NOT NULL,
	[Dni] [int] NOT NULL,
	[Email] [text] NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientesxAuto]    Script Date: 26/5/2022 20:13:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientesxAuto](
	[IdClientesXauto] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdAuto] [int] NOT NULL,
 CONSTRAINT [PK_ClientesxAuto] PRIMARY KEY CLUSTERED 
(
	[IdClientesXauto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compras]    Script Date: 26/5/2022 20:13:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras](
	[IdCompra] [int] IDENTITY(1,1) NOT NULL,
	[IdAuto] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Compras] PRIMARY KEY CLUSTERED 
(
	[IdCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventario1]    Script Date: 26/5/2022 20:13:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario1](
	[IdAuto] [int] IDENTITY(1,1) NOT NULL,
	[Patente] [varchar](50) NOT NULL,
	[Marca] [varchar](50) NOT NULL,
	[Modelo] [varchar](50) NOT NULL,
	[Año] [varchar](50) NOT NULL,
	[Kilometraje] [varchar](50) NOT NULL,
	[Usado] [bit] NULL,
	[Precio] [int] NOT NULL,
	[Deuda] [int] NULL,
 CONSTRAINT [PK_Inventario1] PRIMARY KEY CLUSTERED 
(
	[IdAuto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reserva]    Script Date: 26/5/2022 20:13:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reserva](
	[idReserva] [int] IDENTITY(1,1) NOT NULL,
	[Senia] [float] NOT NULL,
	[fyh] [datetime] NOT NULL,
	[idAuto] [int] NOT NULL,
 CONSTRAINT [PK_Reserva] PRIMARY KEY CLUSTERED 
(
	[idReserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 26/5/2022 20:13:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[IdVenta] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[Hora] [time](7) NOT NULL,
	[Fecha] [date] NOT NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[IdVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellido], [Dni], [Email]) VALUES (1, N'Nicolas', N'Feldman', 46437764, N'Nicox@gmail.com')
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellido], [Dni], [Email]) VALUES (2, N'Martin', N'Piterman', 65432112, N'Marto@gmail.com')
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellido], [Dni], [Email]) VALUES (3, N'Joaquin', N'Dalsgaard', 98765432, N'Joaco@gmail.com')
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellido], [Dni], [Email]) VALUES (4, N'Santiago', N'Saenz', 46437732, N'Santi@gmail.com')
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellido], [Dni], [Email]) VALUES (5, N'Uriel', N'Rabih', 46437748, N'Uri@gmail.com')
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellido], [Dni], [Email]) VALUES (6, N'Jony', N'Blankleder', 46437784, N'Jony@gmail.com')
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellido], [Dni], [Email]) VALUES (7, N'Ariel', N'Lichinizer', 4647384, N'Ariel@gmail.com')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientesxAuto] ON 

INSERT [dbo].[ClientesxAuto] ([IdClientesXauto], [IdCliente], [IdAuto]) VALUES (3, 1, 1)
INSERT [dbo].[ClientesxAuto] ([IdClientesXauto], [IdCliente], [IdAuto]) VALUES (4, 2, 2)
INSERT [dbo].[ClientesxAuto] ([IdClientesXauto], [IdCliente], [IdAuto]) VALUES (5, 3, 3)
INSERT [dbo].[ClientesxAuto] ([IdClientesXauto], [IdCliente], [IdAuto]) VALUES (6, 4, 4)
INSERT [dbo].[ClientesxAuto] ([IdClientesXauto], [IdCliente], [IdAuto]) VALUES (7, 5, 5)
SET IDENTITY_INSERT [dbo].[ClientesxAuto] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventario1] ON 

INSERT [dbo].[Inventario1] ([IdAuto], [Patente], [Marca], [Modelo], [Año], [Kilometraje], [Usado], [Precio], [Deuda]) VALUES (1, N'LXH943', N'Chevrolet', N'Onix', N'1999', N'200000', 1, 100000, 150000)
INSERT [dbo].[Inventario1] ([IdAuto], [Patente], [Marca], [Modelo], [Año], [Kilometraje], [Usado], [Precio], [Deuda]) VALUES (2, N'LON789', N'Audi', N'R8', N'2000', N'400000', 1, 200000, 45600)
INSERT [dbo].[Inventario1] ([IdAuto], [Patente], [Marca], [Modelo], [Año], [Kilometraje], [Usado], [Precio], [Deuda]) VALUES (3, N'LMN456', N'Lamborghini', N'Trompa', N'2010', N'1000000', 1, 300000, NULL)
INSERT [dbo].[Inventario1] ([IdAuto], [Patente], [Marca], [Modelo], [Año], [Kilometraje], [Usado], [Precio], [Deuda]) VALUES (4, N'MNB765', N'Fiat', N'Cronos', N'1998', N'100000', 0, 400000, 5000)
INSERT [dbo].[Inventario1] ([IdAuto], [Patente], [Marca], [Modelo], [Año], [Kilometraje], [Usado], [Precio], [Deuda]) VALUES (5, N'LKO123', N'Ford', N'Fiesta', N'1989', N'240000', 1, 500000, 12200)
SET IDENTITY_INSERT [dbo].[Inventario1] OFF
GO
SET IDENTITY_INSERT [dbo].[Reserva] ON 

INSERT [dbo].[Reserva] ([idReserva], [Senia], [fyh], [idAuto]) VALUES (2, 100, CAST(N'2021-08-07T18:20:00.000' AS DateTime), 1)
INSERT [dbo].[Reserva] ([idReserva], [Senia], [fyh], [idAuto]) VALUES (3, 200, CAST(N'2021-07-08T14:00:00.000' AS DateTime), 2)
INSERT [dbo].[Reserva] ([idReserva], [Senia], [fyh], [idAuto]) VALUES (4, 200000, CAST(N'2021-08-09T10:01:00.000' AS DateTime), 3)
INSERT [dbo].[Reserva] ([idReserva], [Senia], [fyh], [idAuto]) VALUES (6, 400, CAST(N'2021-08-10T14:15:00.000' AS DateTime), 4)
INSERT [dbo].[Reserva] ([idReserva], [Senia], [fyh], [idAuto]) VALUES (7, 500, CAST(N'2021-08-11T11:50:00.000' AS DateTime), 5)
SET IDENTITY_INSERT [dbo].[Reserva] OFF
GO
SET IDENTITY_INSERT [dbo].[Ventas] ON 

INSERT [dbo].[Ventas] ([IdVenta], [IdCliente], [Hora], [Fecha]) VALUES (1, 1, CAST(N'10:10:10' AS Time), CAST(N'2001-01-01' AS Date))
INSERT [dbo].[Ventas] ([IdVenta], [IdCliente], [Hora], [Fecha]) VALUES (2, 2, CAST(N'11:11:11' AS Time), CAST(N'2002-02-02' AS Date))
INSERT [dbo].[Ventas] ([IdVenta], [IdCliente], [Hora], [Fecha]) VALUES (3, 3, CAST(N'12:12:12' AS Time), CAST(N'2003-03-03' AS Date))
INSERT [dbo].[Ventas] ([IdVenta], [IdCliente], [Hora], [Fecha]) VALUES (4, 4, CAST(N'13:13:13' AS Time), CAST(N'2004-04-04' AS Date))
INSERT [dbo].[Ventas] ([IdVenta], [IdCliente], [Hora], [Fecha]) VALUES (5, 5, CAST(N'14:14:14' AS Time), CAST(N'2005-05-05' AS Date))
SET IDENTITY_INSERT [dbo].[Ventas] OFF
GO
ALTER TABLE [dbo].[ClientesxAuto]  WITH CHECK ADD  CONSTRAINT [FK_ClientesxAuto_Cliente1] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[ClientesxAuto] CHECK CONSTRAINT [FK_ClientesxAuto_Cliente1]
GO
ALTER TABLE [dbo].[ClientesxAuto]  WITH CHECK ADD  CONSTRAINT [FK_ClientesxAuto_Inventario11] FOREIGN KEY([IdAuto])
REFERENCES [dbo].[Inventario1] ([IdAuto])
GO
ALTER TABLE [dbo].[ClientesxAuto] CHECK CONSTRAINT [FK_ClientesxAuto_Inventario11]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Inventario1] FOREIGN KEY([IdAuto])
REFERENCES [dbo].[Inventario1] ([IdAuto])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_Inventario1]
GO
ALTER TABLE [dbo].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Reserva_Inventario1] FOREIGN KEY([idAuto])
REFERENCES [dbo].[Inventario1] ([IdAuto])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [FK_Reserva_Inventario1]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Cliente]
GO
/****** Object:  StoredProcedure [dbo].[ej]    Script Date: 26/5/2022 20:13:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ej]
AS

BEGIN
	SELECT COUNT(idAuto), Usado
	FROM dbo.Inventario1
	GROUP BY Usado
	ORDER BY COUNT(idAuto) DESC
END
GO
/****** Object:  StoredProcedure [dbo].[ej2]    Script Date: 26/5/2022 20:13:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ej2]
AS

BEGIN
	SELECT nombre
	FROM dbo.Cliente
	WHERE Nombre LIKE '%a%'
	ORDER BY Nombre desc
END
GO
/****** Object:  StoredProcedure [dbo].[ej3]    Script Date: 26/5/2022 20:13:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ej3]
AS

BEGIN
	SELECT TOP 1 *
	FROM dbo.Inventario1
	ORDER BY Precio DESC
END
GO
/****** Object:  StoredProcedure [dbo].[ej4]    Script Date: 26/5/2022 20:13:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ej4]
@id int
AS
BEGIN
	SELECT Cliente.Nombre, Inventario1.Patente
	FROM dbo.Cliente
	INNER JOIN dbo.ClientesxAuto 
	ON ClientesxAuto.IdCliente = Cliente.IdCliente
	INNER JOIN dbo.Inventario1
	ON Inventario1.IdAuto = ClientesxAuto.IdAuto
	WHERE Cliente.IdCliente = @id
END
GO
/****** Object:  StoredProcedure [dbo].[ej5]    Script Date: 26/5/2022 20:13:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ej5]
@fecha date
AS
BEGIN
	SELECT Cliente.Nombre, Ventas.Fecha
	FROM dbo.Cliente
	INNER JOIN dbo.Ventas
	ON Ventas.IdCliente = Cliente.IdCliente
	WHERE Ventas.Fecha < @fecha
	ORDER BY FECHA DESC
END
GO
/****** Object:  StoredProcedure [dbo].[ej6]    Script Date: 26/5/2022 20:13:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ej6]
@deuda int
AS	
BEGIN
	SELECT *
	FROM dbo.Inventario1
	WHERE Inventario1.Deuda > @deuda
	ORDER BY Patente DESC
END
GO
/****** Object:  StoredProcedure [dbo].[ej7]    Script Date: 26/5/2022 20:13:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ej7]
@senia float
AS
BEGIN
	SELECT Cliente.IdCliente, Cliente.Nombre, Cliente.Apellido, Cliente.Dni, Cliente.Email
	FROM dbo.Cliente
	INNER JOIN dbo.ClientesxAuto
	ON ClientesxAuto.IdCliente = Cliente.IdCliente
	INNER JOIN dbo.Inventario1
	ON ClientesxAuto.IdAuto = Inventario1.IdAuto
	INNER JOIN dbo.Reserva
	ON Inventario1.IdAuto = Reserva.idAuto
	WHERE Reserva.Senia > @senia
END
GO
/****** Object:  StoredProcedure [dbo].[SP_P2Consulta1]    Script Date: 26/5/2022 20:13:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[SP_P2Consulta1] 
as 
begin
select Patente, Marca, Modelo, Año, Kilometraje, Color, Estado, Precio
from Inventario
end 
GO
/****** Object:  StoredProcedure [dbo].[SP_P2Consulta3]    Script Date: 26/5/2022 20:13:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_P2Consulta3]
as 
begin
select Nombre, Apellido, Dni, Email
from Cliente
end

GO
USE [master]
GO
ALTER DATABASE [tpefsibdd] SET  READ_WRITE 
GO
