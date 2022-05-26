USE [master]
GO
/****** Object:  Database [Diz3r]    Script Date: 26/5/2022 20:16:06 ******/
CREATE DATABASE [Diz3r]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Diz3r', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Diz3r.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Diz3r_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Diz3r_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Diz3r] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Diz3r].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Diz3r] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Diz3r] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Diz3r] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Diz3r] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Diz3r] SET ARITHABORT OFF 
GO
ALTER DATABASE [Diz3r] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Diz3r] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Diz3r] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Diz3r] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Diz3r] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Diz3r] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Diz3r] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Diz3r] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Diz3r] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Diz3r] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Diz3r] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Diz3r] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Diz3r] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Diz3r] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Diz3r] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Diz3r] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Diz3r] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Diz3r] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Diz3r] SET  MULTI_USER 
GO
ALTER DATABASE [Diz3r] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Diz3r] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Diz3r] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Diz3r] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Diz3r] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Diz3r] SET QUERY_STORE = OFF
GO
USE [Diz3r]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[idAlbum] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](45) NOT NULL,
	[iddiscografia] [int] NOT NULL,
	[idArtista] [int] NOT NULL,
	[imagenportada] [varchar](45) NULL,
 CONSTRAINT [PK_Album] PRIMARY KEY CLUSTERED 
(
	[idAlbum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Artista]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artista](
	[idArtista] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](45) NOT NULL,
	[imagen] [varchar](45) NOT NULL,
 CONSTRAINT [PK_Artista] PRIMARY KEY CLUSTERED 
(
	[idArtista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cancion]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cancion](
	[idCancion] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](45) NOT NULL,
	[duracion] [float] NOT NULL,
	[cantreproduccion] [int] NOT NULL,
	[cantlikes] [int] NULL,
	[idAlbum] [int] NULL,
 CONSTRAINT [PK_Cancion] PRIMARY KEY CLUSTERED 
(
	[idCancion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discografia]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discografia](
	[idDiscografia] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](45) NOT NULL,
	[idPais] [int] NOT NULL,
 CONSTRAINT [PK_Discografia] PRIMARY KEY CLUSTERED 
(
	[idDiscografia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoPlaylist]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoPlaylist](
	[idEstadoPlaylist] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](45) NOT NULL,
 CONSTRAINT [PK_EstadoPlaylist] PRIMARY KEY CLUSTERED 
(
	[idEstadoPlaylist] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genero](
	[idGenero] [int] IDENTITY(1,1) NOT NULL,
	[Genero] [varchar](45) NOT NULL,
 CONSTRAINT [PK_Genero] PRIMARY KEY CLUSTERED 
(
	[idGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GeneroCancion]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeneroCancion](
	[idGeneroCancion] [int] IDENTITY(1,1) NOT NULL,
	[idCancion] [int] NULL,
	[idGenero] [int] NULL,
 CONSTRAINT [PK_GeneroCancion] PRIMARY KEY CLUSTERED 
(
	[idGeneroCancion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[idPais] [int] IDENTITY(1,1) NOT NULL,
	[Pais] [varchar](45) NOT NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[idPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Playlist]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Playlist](
	[idPlaylist] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NOT NULL,
	[titulo] [varchar](45) NOT NULL,
	[cantcanciones] [int] NOT NULL,
	[idestado] [int] NOT NULL,
	[Fechacreacion] [datetime] NOT NULL,
	[Fechaeliminada] [datetime] NULL,
 CONSTRAINT [PK_Playlist] PRIMARY KEY CLUSTERED 
(
	[idPlaylist] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlaylistxCancion]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlaylistxCancion](
	[idPlaylistxCancion] [int] IDENTITY(1,1) NOT NULL,
	[idCancion] [int] NULL,
	[idPlaylist] [int] NULL,
 CONSTRAINT [PK_PlaylistxCancion] PRIMARY KEY CLUSTERED 
(
	[idPlaylistxCancion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoUsuario]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoUsuario](
	[idTipoUsuario] [int] IDENTITY(1,1) NOT NULL,
	[TipoUsuario] [varchar](45) NOT NULL,
 CONSTRAINT [PK_TipoUsuario] PRIMARY KEY CLUSTERED 
(
	[idTipoUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[nombreUsuario] [varchar](45) NOT NULL,
	[nyap] [varchar](45) NOT NULL,
	[fecha_nac] [date] NULL,
	[sexo] [varchar](1) NULL,
	[CP] [varchar](8) NULL,
	[password] [varchar](45) NOT NULL,
	[Pais_idPais] [int] NULL,
	[idTipoUsuario] [int] NOT NULL,
	[FechaPassword] [date] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Album] ON 

INSERT [dbo].[Album] ([idAlbum], [titulo], [iddiscografia], [idArtista], [imagenportada]) VALUES (4, N'a', 4, 1, N'a')
INSERT [dbo].[Album] ([idAlbum], [titulo], [iddiscografia], [idArtista], [imagenportada]) VALUES (5, N'b', 2, 2, NULL)
INSERT [dbo].[Album] ([idAlbum], [titulo], [iddiscografia], [idArtista], [imagenportada]) VALUES (6, N'c', 2, 3, N'')
INSERT [dbo].[Album] ([idAlbum], [titulo], [iddiscografia], [idArtista], [imagenportada]) VALUES (7, N'd', 4, 4, N'd')
INSERT [dbo].[Album] ([idAlbum], [titulo], [iddiscografia], [idArtista], [imagenportada]) VALUES (8, N'e', 4, 4, N'e')
SET IDENTITY_INSERT [dbo].[Album] OFF
GO
SET IDENTITY_INSERT [dbo].[Artista] ON 

INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (1, N'a1', N'i1')
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (2, N'a2', N'i2')
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (3, N'a3', N'i3')
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (4, N'erre', N'i4')
INSERT [dbo].[Artista] ([idArtista], [Nombre], [imagen]) VALUES (5, N'a5', N'i5')
SET IDENTITY_INSERT [dbo].[Artista] OFF
GO
SET IDENTITY_INSERT [dbo].[Cancion] ON 

INSERT [dbo].[Cancion] ([idCancion], [titulo], [duracion], [cantreproduccion], [cantlikes], [idAlbum]) VALUES (3, N'b', 2, 0, 0, 5)
INSERT [dbo].[Cancion] ([idCancion], [titulo], [duracion], [cantreproduccion], [cantlikes], [idAlbum]) VALUES (4, N'c', 3, 3, 0, 6)
INSERT [dbo].[Cancion] ([idCancion], [titulo], [duracion], [cantreproduccion], [cantlikes], [idAlbum]) VALUES (5, N'd', 4, 0, 3, 7)
INSERT [dbo].[Cancion] ([idCancion], [titulo], [duracion], [cantreproduccion], [cantlikes], [idAlbum]) VALUES (6, N'z', 5, 5, 5, 8)
INSERT [dbo].[Cancion] ([idCancion], [titulo], [duracion], [cantreproduccion], [cantlikes], [idAlbum]) VALUES (7, N'f', 6, 6, 2, NULL)
SET IDENTITY_INSERT [dbo].[Cancion] OFF
GO
SET IDENTITY_INSERT [dbo].[Discografia] ON 

INSERT [dbo].[Discografia] ([idDiscografia], [nombre], [idPais]) VALUES (1, N'a', 1)
INSERT [dbo].[Discografia] ([idDiscografia], [nombre], [idPais]) VALUES (2, N'b', 2)
INSERT [dbo].[Discografia] ([idDiscografia], [nombre], [idPais]) VALUES (3, N'c', 3)
INSERT [dbo].[Discografia] ([idDiscografia], [nombre], [idPais]) VALUES (4, N'd', 4)
INSERT [dbo].[Discografia] ([idDiscografia], [nombre], [idPais]) VALUES (5, N'e', 5)
SET IDENTITY_INSERT [dbo].[Discografia] OFF
GO
SET IDENTITY_INSERT [dbo].[EstadoPlaylist] ON 

INSERT [dbo].[EstadoPlaylist] ([idEstadoPlaylist], [descripcion]) VALUES (1, N'd1')
INSERT [dbo].[EstadoPlaylist] ([idEstadoPlaylist], [descripcion]) VALUES (2, N'd2')
INSERT [dbo].[EstadoPlaylist] ([idEstadoPlaylist], [descripcion]) VALUES (3, N'd3')
INSERT [dbo].[EstadoPlaylist] ([idEstadoPlaylist], [descripcion]) VALUES (4, N'd4')
INSERT [dbo].[EstadoPlaylist] ([idEstadoPlaylist], [descripcion]) VALUES (5, N'd5')
SET IDENTITY_INSERT [dbo].[EstadoPlaylist] OFF
GO
SET IDENTITY_INSERT [dbo].[Genero] ON 

INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (1, N'g1')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (2, N'g2')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (3, N'g3')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (4, N'g4')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (5, N'g5')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (6, N'g6')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (7, N'g7')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (8, N'g8')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (9, N'g9')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (10, N'g10')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (11, N'g11')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (12, N'g12')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (13, N'g13')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (14, N'g14')
INSERT [dbo].[Genero] ([idGenero], [Genero]) VALUES (15, N'g15')
SET IDENTITY_INSERT [dbo].[Genero] OFF
GO
SET IDENTITY_INSERT [dbo].[GeneroCancion] ON 

INSERT [dbo].[GeneroCancion] ([idGeneroCancion], [idCancion], [idGenero]) VALUES (1, 3, 1)
INSERT [dbo].[GeneroCancion] ([idGeneroCancion], [idCancion], [idGenero]) VALUES (3, 4, 2)
INSERT [dbo].[GeneroCancion] ([idGeneroCancion], [idCancion], [idGenero]) VALUES (5, 5, 14)
INSERT [dbo].[GeneroCancion] ([idGeneroCancion], [idCancion], [idGenero]) VALUES (6, 6, 5)
INSERT [dbo].[GeneroCancion] ([idGeneroCancion], [idCancion], [idGenero]) VALUES (7, 7, 1)
INSERT [dbo].[GeneroCancion] ([idGeneroCancion], [idCancion], [idGenero]) VALUES (8, 3, 1)
SET IDENTITY_INSERT [dbo].[GeneroCancion] OFF
GO
SET IDENTITY_INSERT [dbo].[Pais] ON 

INSERT [dbo].[Pais] ([idPais], [Pais]) VALUES (1, N'a')
INSERT [dbo].[Pais] ([idPais], [Pais]) VALUES (2, N'b')
INSERT [dbo].[Pais] ([idPais], [Pais]) VALUES (3, N'c')
INSERT [dbo].[Pais] ([idPais], [Pais]) VALUES (4, N'inglaterra')
INSERT [dbo].[Pais] ([idPais], [Pais]) VALUES (5, N'e')
SET IDENTITY_INSERT [dbo].[Pais] OFF
GO
SET IDENTITY_INSERT [dbo].[Playlist] ON 

INSERT [dbo].[Playlist] ([idPlaylist], [idUsuario], [titulo], [cantcanciones], [idestado], [Fechacreacion], [Fechaeliminada]) VALUES (1, 1, N'ca', 1, 1, CAST(N'2001-01-01T00:00:00.000' AS DateTime), CAST(N'2010-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Playlist] ([idPlaylist], [idUsuario], [titulo], [cantcanciones], [idestado], [Fechacreacion], [Fechaeliminada]) VALUES (2, 2, N'b', 2, 2, CAST(N'2002-02-02T00:00:00.000' AS DateTime), CAST(N'2020-02-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Playlist] ([idPlaylist], [idUsuario], [titulo], [cantcanciones], [idestado], [Fechacreacion], [Fechaeliminada]) VALUES (3, 3, N'c', 3, 3, CAST(N'2003-03-03T00:00:00.000' AS DateTime), CAST(N'2030-03-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Playlist] ([idPlaylist], [idUsuario], [titulo], [cantcanciones], [idestado], [Fechacreacion], [Fechaeliminada]) VALUES (4, 4, N'd', 4, 4, CAST(N'2004-04-04T00:00:00.000' AS DateTime), CAST(N'2040-04-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Playlist] ([idPlaylist], [idUsuario], [titulo], [cantcanciones], [idestado], [Fechacreacion], [Fechaeliminada]) VALUES (5, 5, N'e', 5, 5, CAST(N'2005-05-05T00:00:00.000' AS DateTime), CAST(N'1950-05-05T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Playlist] OFF
GO
SET IDENTITY_INSERT [dbo].[PlaylistxCancion] ON 

INSERT [dbo].[PlaylistxCancion] ([idPlaylistxCancion], [idCancion], [idPlaylist]) VALUES (1, 3, 1)
INSERT [dbo].[PlaylistxCancion] ([idPlaylistxCancion], [idCancion], [idPlaylist]) VALUES (2, 3, 2)
INSERT [dbo].[PlaylistxCancion] ([idPlaylistxCancion], [idCancion], [idPlaylist]) VALUES (3, 3, 3)
INSERT [dbo].[PlaylistxCancion] ([idPlaylistxCancion], [idCancion], [idPlaylist]) VALUES (4, 3, 4)
INSERT [dbo].[PlaylistxCancion] ([idPlaylistxCancion], [idCancion], [idPlaylist]) VALUES (5, 3, 5)
SET IDENTITY_INSERT [dbo].[PlaylistxCancion] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoUsuario] ON 

INSERT [dbo].[TipoUsuario] ([idTipoUsuario], [TipoUsuario]) VALUES (1, N'free')
INSERT [dbo].[TipoUsuario] ([idTipoUsuario], [TipoUsuario]) VALUES (2, N'free')
INSERT [dbo].[TipoUsuario] ([idTipoUsuario], [TipoUsuario]) VALUES (3, N'premium')
INSERT [dbo].[TipoUsuario] ([idTipoUsuario], [TipoUsuario]) VALUES (4, N'standart')
INSERT [dbo].[TipoUsuario] ([idTipoUsuario], [TipoUsuario]) VALUES (5, N'premium')
SET IDENTITY_INSERT [dbo].[TipoUsuario] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([idUsuario], [nombreUsuario], [nyap], [fecha_nac], [sexo], [CP], [password], [Pais_idPais], [idTipoUsuario], [FechaPassword]) VALUES (1, N'nu1', N'nyap1', CAST(N'2001-01-01' AS Date), N'a', N'1', N'a', 1, 1, CAST(N'2001-01-01' AS Date))
INSERT [dbo].[Usuario] ([idUsuario], [nombreUsuario], [nyap], [fecha_nac], [sexo], [CP], [password], [Pais_idPais], [idTipoUsuario], [FechaPassword]) VALUES (2, N'nu2', N'nyap2', CAST(N'2002-02-02' AS Date), N'b', N'2', N'b', 2, 2, CAST(N'2002-02-02' AS Date))
INSERT [dbo].[Usuario] ([idUsuario], [nombreUsuario], [nyap], [fecha_nac], [sexo], [CP], [password], [Pais_idPais], [idTipoUsuario], [FechaPassword]) VALUES (3, N'nu3', N'nyap3', CAST(N'2003-03-03' AS Date), N'c', N'3', N'c', 3, 3, CAST(N'2003-03-03' AS Date))
INSERT [dbo].[Usuario] ([idUsuario], [nombreUsuario], [nyap], [fecha_nac], [sexo], [CP], [password], [Pais_idPais], [idTipoUsuario], [FechaPassword]) VALUES (4, N'nu4', N'nyap4', CAST(N'2004-04-04' AS Date), N'd', N'4', N'd', 4, 4, CAST(N'2021-07-20' AS Date))
INSERT [dbo].[Usuario] ([idUsuario], [nombreUsuario], [nyap], [fecha_nac], [sexo], [CP], [password], [Pais_idPais], [idTipoUsuario], [FechaPassword]) VALUES (5, N'nu5', N'nyap5', CAST(N'2005-05-05' AS Date), N'e', N'5', N'e', 5, 5, CAST(N'2005-05-05' AS Date))
INSERT [dbo].[Usuario] ([idUsuario], [nombreUsuario], [nyap], [fecha_nac], [sexo], [CP], [password], [Pais_idPais], [idTipoUsuario], [FechaPassword]) VALUES (6, N'miusuariodeDiz3r@gmail.com', N'Patricio Estrella', CAST(N'1995-11-15' AS Date), N'F', N'B1429ATF', N'S1234m', 2, 1, CAST(N'1999-11-15' AS Date))
INSERT [dbo].[Usuario] ([idUsuario], [nombreUsuario], [nyap], [fecha_nac], [sexo], [CP], [password], [Pais_idPais], [idTipoUsuario], [FechaPassword]) VALUES (7, N'miusuariodeDiz3r@gmail.com', N'Patricio Estrella', CAST(N'1995-11-15' AS Date), N'F', N'B1429ATF', N'S1234m', 2, 1, CAST(N'1999-11-15' AS Date))
INSERT [dbo].[Usuario] ([idUsuario], [nombreUsuario], [nyap], [fecha_nac], [sexo], [CP], [password], [Pais_idPais], [idTipoUsuario], [FechaPassword]) VALUES (8, N'miusuariodeDiz3r@gmail.com', N'Patricio Estrella', CAST(N'1995-11-15' AS Date), N'F', N'B1429ATF', N'S1234m', 2, 1, CAST(N'1999-11-15' AS Date))
INSERT [dbo].[Usuario] ([idUsuario], [nombreUsuario], [nyap], [fecha_nac], [sexo], [CP], [password], [Pais_idPais], [idTipoUsuario], [FechaPassword]) VALUES (9, N'miusuariodeDiz3r@gmail.com', N'Patricio Estrella', CAST(N'1995-11-15' AS Date), N'F', N'B1429ATF', N'S1234m', 2, 1, CAST(N'1999-11-15' AS Date))
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [FK_Album_Artista] FOREIGN KEY([idArtista])
REFERENCES [dbo].[Artista] ([idArtista])
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [FK_Album_Artista]
GO
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [FK_Album_Discografia] FOREIGN KEY([iddiscografia])
REFERENCES [dbo].[Discografia] ([idDiscografia])
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [FK_Album_Discografia]
GO
ALTER TABLE [dbo].[Cancion]  WITH CHECK ADD  CONSTRAINT [FK_Cancion_Album] FOREIGN KEY([idAlbum])
REFERENCES [dbo].[Album] ([idAlbum])
GO
ALTER TABLE [dbo].[Cancion] CHECK CONSTRAINT [FK_Cancion_Album]
GO
ALTER TABLE [dbo].[Discografia]  WITH CHECK ADD  CONSTRAINT [FK_Discografia_Pais] FOREIGN KEY([idPais])
REFERENCES [dbo].[Pais] ([idPais])
GO
ALTER TABLE [dbo].[Discografia] CHECK CONSTRAINT [FK_Discografia_Pais]
GO
ALTER TABLE [dbo].[GeneroCancion]  WITH CHECK ADD  CONSTRAINT [FK_GeneroCancion_Cancion] FOREIGN KEY([idCancion])
REFERENCES [dbo].[Cancion] ([idCancion])
GO
ALTER TABLE [dbo].[GeneroCancion] CHECK CONSTRAINT [FK_GeneroCancion_Cancion]
GO
ALTER TABLE [dbo].[GeneroCancion]  WITH CHECK ADD  CONSTRAINT [FK_GeneroCancion_Genero] FOREIGN KEY([idGenero])
REFERENCES [dbo].[Genero] ([idGenero])
GO
ALTER TABLE [dbo].[GeneroCancion] CHECK CONSTRAINT [FK_GeneroCancion_Genero]
GO
ALTER TABLE [dbo].[Playlist]  WITH CHECK ADD  CONSTRAINT [FK_Playlist_EstadoPlaylist] FOREIGN KEY([idestado])
REFERENCES [dbo].[EstadoPlaylist] ([idEstadoPlaylist])
GO
ALTER TABLE [dbo].[Playlist] CHECK CONSTRAINT [FK_Playlist_EstadoPlaylist]
GO
ALTER TABLE [dbo].[Playlist]  WITH CHECK ADD  CONSTRAINT [FK_Playlist_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Playlist] CHECK CONSTRAINT [FK_Playlist_Usuario]
GO
ALTER TABLE [dbo].[PlaylistxCancion]  WITH CHECK ADD  CONSTRAINT [FK_PlaylistxCancion_Cancion] FOREIGN KEY([idCancion])
REFERENCES [dbo].[Cancion] ([idCancion])
GO
ALTER TABLE [dbo].[PlaylistxCancion] CHECK CONSTRAINT [FK_PlaylistxCancion_Cancion]
GO
ALTER TABLE [dbo].[PlaylistxCancion]  WITH CHECK ADD  CONSTRAINT [FK_PlaylistxCancion_Playlist] FOREIGN KEY([idPlaylist])
REFERENCES [dbo].[Playlist] ([idPlaylist])
GO
ALTER TABLE [dbo].[PlaylistxCancion] CHECK CONSTRAINT [FK_PlaylistxCancion_Playlist]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Pais] FOREIGN KEY([Pais_idPais])
REFERENCES [dbo].[Pais] ([idPais])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Pais]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_TipoUsuario] FOREIGN KEY([idTipoUsuario])
REFERENCES [dbo].[TipoUsuario] ([idTipoUsuario])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_TipoUsuario]
GO
/****** Object:  StoredProcedure [dbo].[sp_ej7_1]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ej7_1]
AS
BEGIN
	SELECT COUNT(TipoUsuario.idTipoUsuario), TipoUsuario
	FROM dbo.TipoUsuario
	GROUP BY TipoUsuario.TipoUsuario
	ORDER BY COUNT(TipoUsuario) DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ej7_10]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ej7_10]
AS
BEGIN
	SELECT COUNT(GeneroCancion.idGeneroCancion), Genero.idGenero
	FROM dbo.GeneroCancion
	INNER JOIN dbo.Genero
	ON Genero.idGenero = GeneroCancion.idGenero
	GROUP BY Genero.idGenero
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ej7_11]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ej7_11]
AS
BEGIN
	SELECT TOP 1 Cancion.titulo
	FROM dbo.Cancion
	ORDER BY Cancion.duracion ASC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ej7_12]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ej7_12]
AS
BEGIN
	SELECT TOP 1 Cancion.titulo
	FROM dbo.Cancion
	ORDER BY Cancion.duracion DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ej7_13]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_ej7_13]
AS
BEGIN
	SELECT COUNT(GeneroCancion.idCancion), Genero.Genero
	FROM dbo.Genero
	INNER JOIN dbo.GeneroCancion
	ON GeneroCancion.idGenero = Genero.idGenero
	GROUP BY Genero.Genero
	ORDER BY COUNT(GeneroCancion.idCancion) DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ej7_14]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_ej7_14]
AS
BEGIN
	SELECT Cancion.titulo
	FROM dbo.Cancion
	INNER JOIN dbo.Album
	ON Album.idAlbum = Cancion.idAlbum
	INNER JOIN dbo.Artista
	ON Album.idArtista = Artista.idArtista
	INNER JOIN GeneroCancion
	ON GeneroCancion.idCancion = Cancion.idCancion
	WHERE GeneroCancion.idGenero=14 AND Artista.Nombre LIKE '%r%'
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ej7_15]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_ej7_15]
AS
BEGIN
	SELECT COUNT(Cancion.idCancion), GeneroCancion.idGenero
	FROM dbo.GeneroCancion
	INNER JOIN dbo.Cancion
	ON GeneroCancion.idCancion = Cancion.idCancion
	GROUP BY GeneroCancion.idGenero
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ej7_16]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_ej7_16]
AS
BEGIN
	SELECT COUNT(Usuario.idUsuario), TipoUsuario.TipoUsuario
	FROM dbo.TipoUsuario
	INNER JOIN dbo.Usuario
	ON TipoUsuario.idTipoUsuario = Usuario.idTipoUsuario
	GROUP BY TipoUsuario.TipoUsuario
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ej7_17]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_ej7_17]
AS
BEGIN
	SELECT COUNT(Cancion.idCancion), Genero.Genero
	FROM dbo.Genero
	INNER JOIN dbo.GeneroCancion
	ON GeneroCancion.idGenero = Genero.idGenero
	INNER JOIN dbo.Cancion
	ON GeneroCancion.idCancion = Cancion.idCancion
	GROUP BY Genero.Genero
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ej7_18]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ej7_18]
AS
BEGIN
	SELECT TOP 15 Cancion.cantlikes, Cancion.titulo
	FROM dbo.Cancion
	WHERE cantreproduccion>0
	ORDER BY cantlikes DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ej7_19]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ej7_19]
AS
BEGIN
	SELECT Cancion.titulo, Artista.Nombre
	FROM dbo.Artista
	INNER JOIN dbo.Album
	ON Album.idArtista = Artista.idArtista
	INNER JOIN dbo.Cancion
	ON Cancion.idAlbum = Album.idAlbum
	WHERE Cancion.idAlbum IS NULL
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ej7_2]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_ej7_2]
AS
BEGIN
	SELECT COUNT(Discografia.idDiscografia), Discografia.nombre
	FROM dbo.Discografia
	inner join dbo.Album
	ON Discografia.idDiscografia = Album.iddiscografia
	GROUP BY Discografia.nombre
	ORDER BY COUNT(Discografia.idDiscografia) DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ej7_20]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_ej7_20]
AS
BEGIN
	SELECT Cancion.idCancion, Artista.Nombre, Discografia.nombre, Cancion.cantreproduccion
	FROM dbo.Cancion
	INNER JOIN dbo.Album
	ON Album.idAlbum = Cancion.idAlbum
	INNER JOIN dbo.Artista
	ON Album.idArtista = Artista.idArtista
	INNER JOIN dbo.Discografia
	ON Album.iddiscografia = Discografia.idDiscografia
	ORDER BY Cancion.cantreproduccion
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ej7_21]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_ej7_21]
AS
BEGIN
	 SELECT Discografia.nombre, COUNT(Album.idAlbum)
	 FROM dbo.Discografia
	 INNER JOIN dbo.Album
	 ON Album.iddiscografia = Discografia.idDiscografia
	 INNER JOIN dbo.Pais
	 ON Pais.idPais = Discografia.idPais
	 WHERE Pais.Pais = 'inglaterra'
	 GROUP BY Discografia.nombre
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ej7_22]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ej7_22]
AS
BEGIN
	SELECT Artista.Nombre
	FROM dbo.Artista
	LEFT JOIN dbo.Album
	ON Album.idArtista = Artista.idArtista
	GROUP BY Artista.Nombre
	HAVING COUNT(Album.idArtista)=0
	ORDER BY COUNT(Album.idArtista) DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ej7_4]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ej7_4]
AS
BEGIN
	SELECT TOP 1 COUNT(Cancion.cantlikes), Artista.idArtista
	FROM dbo.Artista
	INNER JOIN dbo.Album
	ON Album.idArtista = Artista.idArtista
	INNER JOIN dbo.Cancion
	ON Cancion.idAlbum = Album.idAlbum
	GROUP BY Artista.idArtista
	ORDER BY COUNT(cantlikes) DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ej7_5]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_ej7_5]
AS
BEGIN
	SELECT TOP 1 COUNT(Cancion.idCancion), Artista.Nombre
	FROM dbo.Cancion
	INNER JOIN dbo.Album
	ON cancion.idAlbum = Album.idAlbum
	INNER JOIN dbo.Artista
	ON album.idArtista = Artista.idArtista
	GROUP BY Artista.Nombre
	ORDER BY COUNT(Cancion.titulo) DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ej7_6]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ej7_6]
AS
BEGIN
	SELECT max(Playlist.cantcanciones) as mayor, MIN(playlist.cantcanciones) as menor, AVG(playlist.cantcanciones) as promedio
	FROM dbo.Playlist
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ej7_7]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ej7_7]
AS
BEGIN
	SELECT COUNT(Usuario.idUsuario), Pais.idPais
	FROM dbo.Usuario
	INNER JOIN dbo.Pais
	ON Pais.idPais = Usuario.Pais_idPais
	GROUP BY Pais.idPais
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ej7_8]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ej7_8]
AS
BEGIN
	DELETE 
	FROM dbo.GeneroCancion
	WHERE idGenero=3
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ej7_9]    Script Date: 26/5/2022 20:16:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_ej7_9]
AS
BEGIN
	SELECT Pais.idPais, COUNT(Discografia.idDiscografia)
	FROM dbo.Pais
	INNER JOIN dbo.Discografia
	ON Pais.idPais = Discografia.idPais
	GROUP BY Pais.idPais
END
GO
USE [master]
GO
ALTER DATABASE [Diz3r] SET  READ_WRITE 
GO
