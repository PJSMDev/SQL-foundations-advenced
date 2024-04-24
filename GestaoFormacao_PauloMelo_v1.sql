USE [master]
GO
/****** Object:  Database [GestaoFormacao_PauloMelo_v1]    Script Date: 3/26/2024 4:23:54 PM ******/
CREATE DATABASE [GestaoFormacao_PauloMelo_v1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GestaoFormacao_PauloMelo_v1', FILENAME = N'C:\RS11\Data\GestaoFormacao_PauloMelo_v1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GestaoFormacao_PauloMelo_v1_log', FILENAME = N'C:\RS11\Data\GestaoFormacao_PauloMelo_v1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GestaoFormacao_PauloMelo_v1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET ARITHABORT OFF 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET RECOVERY FULL 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET  MULTI_USER 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'GestaoFormacao_PauloMelo_v1', N'ON'
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET QUERY_STORE = OFF
GO
USE [GestaoFormacao_PauloMelo_v1]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 3/26/2024 4:23:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Area](
	[AreaId] [int] IDENTITY(1,1) NOT NULL,
	[Area] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Area] PRIMARY KEY CLUSTERED 
(
	[AreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CodigoPostal]    Script Date: 3/26/2024 4:23:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CodigoPostal](
	[CodigoPostalId] [int] IDENTITY(1,1) NOT NULL,
	[CodigoPostal] [char](8) NOT NULL,
	[Localidade] [nvarchar](70) NOT NULL,
 CONSTRAINT [PK_CodigoPostal] PRIMARY KEY CLUSTERED 
(
	[CodigoPostalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 3/26/2024 4:23:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso](
	[CursoId] [int] IDENTITY(1,1) NOT NULL,
	[SubareaID] [int] NOT NULL,
	[NomeCurso] [nchar](100) NOT NULL,
	[DataInicio] [date] NOT NULL,
	[DataFim] [date] NULL,
	[NumeroHoras] [decimal](5, 2) NOT NULL,
	[Horario] [nvarchar](50) NULL,
 CONSTRAINT [PK_Curso] PRIMARY KEY CLUSTERED 
(
	[CursoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CursoFormador]    Script Date: 3/26/2024 4:23:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CursoFormador](
	[CursoId] [int] NOT NULL,
	[FormadorId] [int] NOT NULL,
 CONSTRAINT [PK_CursoFormador] PRIMARY KEY CLUSTERED 
(
	[CursoId] ASC,
	[FormadorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CursoFormando]    Script Date: 3/26/2024 4:23:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CursoFormando](
	[CursoId] [int] NOT NULL,
	[FormandoId] [int] NOT NULL,
 CONSTRAINT [PK_CursoFormando] PRIMARY KEY CLUSTERED 
(
	[CursoId] ASC,
	[FormandoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Formador]    Script Date: 3/26/2024 4:23:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formador](
	[FormadorId] [int] IDENTITY(1,1) NOT NULL,
	[CodigoPostalId] [int] NOT NULL,
	[NomeFormador] [nvarchar](70) NOT NULL,
	[NIF] [char](9) NOT NULL,
	[DataNascimento] [date] NULL,
	[Morada] [nvarchar](100) NOT NULL,
	[Telemovel] [char](9) NULL,
	[Email] [nvarchar](254) NOT NULL,
	[CCP] [bit] NULL,
 CONSTRAINT [PK_Formador] PRIMARY KEY CLUSTERED 
(
	[FormadorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Formando]    Script Date: 3/26/2024 4:23:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formando](
	[FormandoId] [int] IDENTITY(1,1) NOT NULL,
	[CodigoPostalId] [int] NOT NULL,
	[NomeFormando] [nvarchar](70) NOT NULL,
	[NIF] [char](9) NOT NULL,
	[DataNascimento] [date] NULL,
	[Morada] [nvarchar](100) NOT NULL,
	[Telemovel] [char](9) NULL,
	[Email] [nvarchar](254) NOT NULL,
	[Observacoes] [nvarchar](254) NULL,
 CONSTRAINT [PK_Formando] PRIMARY KEY CLUSTERED 
(
	[FormandoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subarea]    Script Date: 3/26/2024 4:23:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subarea](
	[SubAreaId] [int] IDENTITY(1,1) NOT NULL,
	[AreaId] [int] NOT NULL,
	[Subarea] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Subarea] PRIMARY KEY CLUSTERED 
(
	[SubAreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Area] ON 

INSERT [dbo].[Area] ([AreaId], [Area]) VALUES (1, N'Tecnologias da Informação')
INSERT [dbo].[Area] ([AreaId], [Area]) VALUES (2, N'Softskills')
SET IDENTITY_INSERT [dbo].[Area] OFF
GO
SET IDENTITY_INSERT [dbo].[CodigoPostal] ON 

INSERT [dbo].[CodigoPostal] ([CodigoPostalId], [CodigoPostal], [Localidade]) VALUES (1, N'4715-591', N'Lamaçães, Braga')
INSERT [dbo].[CodigoPostal] ([CodigoPostalId], [CodigoPostal], [Localidade]) VALUES (2, N'4715-566', N'Fraião, Braga')
INSERT [dbo].[CodigoPostal] ([CodigoPostalId], [CodigoPostal], [Localidade]) VALUES (3, N'4705-737', N'Esporões, Braga')
INSERT [dbo].[CodigoPostal] ([CodigoPostalId], [CodigoPostal], [Localidade]) VALUES (4, N'4705-371', N'Cabreiros, Braga')
INSERT [dbo].[CodigoPostal] ([CodigoPostalId], [CodigoPostal], [Localidade]) VALUES (5, N'4715-412', N'Espinho, Braga')
INSERT [dbo].[CodigoPostal] ([CodigoPostalId], [CodigoPostal], [Localidade]) VALUES (6, N'4705-630', N'Tebosa, Braga')
SET IDENTITY_INSERT [dbo].[CodigoPostal] OFF
GO
SET IDENTITY_INSERT [dbo].[Curso] ON 

INSERT [dbo].[Curso] ([CursoId], [SubareaID], [NomeCurso], [DataInicio], [DataFim], [NumeroHoras], [Horario]) VALUES (1, 1, N'JavaScript Advanced                                                                                 ', CAST(N'2024-05-08' AS Date), NULL, CAST(28.00 AS Decimal(5, 2)), N'(09:00 - 13:00)')
INSERT [dbo].[Curso] ([CursoId], [SubareaID], [NomeCurso], [DataInicio], [DataFim], [NumeroHoras], [Horario]) VALUES (2, 2, N'Database Fundamentals                                                                               ', CAST(N'2024-05-29' AS Date), NULL, CAST(30.00 AS Decimal(5, 2)), N'(18:45 - 21:45)')
INSERT [dbo].[Curso] ([CursoId], [SubareaID], [NomeCurso], [DataInicio], [DataFim], [NumeroHoras], [Horario]) VALUES (3, 3, N'Gestão de Equipas                                                                                   ', CAST(N'2024-06-05' AS Date), NULL, CAST(10.00 AS Decimal(5, 2)), N'(09:00 - 11:00)')
SET IDENTITY_INSERT [dbo].[Curso] OFF
GO
INSERT [dbo].[CursoFormador] ([CursoId], [FormadorId]) VALUES (1, 1)
INSERT [dbo].[CursoFormador] ([CursoId], [FormadorId]) VALUES (2, 3)
INSERT [dbo].[CursoFormador] ([CursoId], [FormadorId]) VALUES (2, 4)
INSERT [dbo].[CursoFormador] ([CursoId], [FormadorId]) VALUES (3, 5)
GO
INSERT [dbo].[CursoFormando] ([CursoId], [FormandoId]) VALUES (1, 1)
INSERT [dbo].[CursoFormando] ([CursoId], [FormandoId]) VALUES (1, 2)
INSERT [dbo].[CursoFormando] ([CursoId], [FormandoId]) VALUES (2, 1)
INSERT [dbo].[CursoFormando] ([CursoId], [FormandoId]) VALUES (3, 2)
GO
SET IDENTITY_INSERT [dbo].[Formador] ON 

INSERT [dbo].[Formador] ([FormadorId], [CodigoPostalId], [NomeFormador], [NIF], [DataNascimento], [Morada], [Telemovel], [Email], [CCP]) VALUES (1, 1, N'Faustino Cardoso', N'114878501', NULL, N'Travessa da Igreja Velha', NULL, N'faustinocasrdoso13@gmail.com', NULL)
INSERT [dbo].[Formador] ([FormadorId], [CodigoPostalId], [NomeFormador], [NIF], [DataNascimento], [Morada], [Telemovel], [Email], [CCP]) VALUES (3, 3, N'Clara Vasconcelos', N'230387950', NULL, N'Rua do Além', NULL, N'clara12@gmail.com', NULL)
INSERT [dbo].[Formador] ([FormadorId], [CodigoPostalId], [NomeFormador], [NIF], [DataNascimento], [Morada], [Telemovel], [Email], [CCP]) VALUES (4, 4, N'Faustino', N'289371643', NULL, N'Rua dos 4 Caminhos', NULL, N'faust@gmail.com', NULL)
INSERT [dbo].[Formador] ([FormadorId], [CodigoPostalId], [NomeFormador], [NIF], [DataNascimento], [Morada], [Telemovel], [Email], [CCP]) VALUES (5, 6, N'Maria Pardilha', N'259581917', NULL, N'Quinta de Tebosa', NULL, N'mp24@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[Formador] OFF
GO
SET IDENTITY_INSERT [dbo].[Formando] ON 

INSERT [dbo].[Formando] ([FormandoId], [CodigoPostalId], [NomeFormando], [NIF], [DataNascimento], [Morada], [Telemovel], [Email], [Observacoes]) VALUES (1, 2, N'Tiago Feliciano', N'258718684', NULL, N'Rua Calvelo de baixo', NULL, N'feliciano.t@gmail.com', NULL)
INSERT [dbo].[Formando] ([FormandoId], [CodigoPostalId], [NomeFormando], [NIF], [DataNascimento], [Morada], [Telemovel], [Email], [Observacoes]) VALUES (2, 5, N'Jacinta Sampaio', N'386596395', NULL, N'Rua da Cachada', NULL, N'cinta@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[Formando] OFF
GO
SET IDENTITY_INSERT [dbo].[Subarea] ON 

INSERT [dbo].[Subarea] ([SubAreaId], [AreaId], [Subarea]) VALUES (1, 1, N'Programação')
INSERT [dbo].[Subarea] ([SubAreaId], [AreaId], [Subarea]) VALUES (2, 1, N'Base de Dados')
INSERT [dbo].[Subarea] ([SubAreaId], [AreaId], [Subarea]) VALUES (3, 2, N'Gestão')
SET IDENTITY_INSERT [dbo].[Subarea] OFF
GO
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD  CONSTRAINT [FK_Curso_Subarea] FOREIGN KEY([SubareaID])
REFERENCES [dbo].[Subarea] ([SubAreaId])
GO
ALTER TABLE [dbo].[Curso] CHECK CONSTRAINT [FK_Curso_Subarea]
GO
ALTER TABLE [dbo].[CursoFormador]  WITH CHECK ADD  CONSTRAINT [FK_CursoFormador_Curso1] FOREIGN KEY([CursoId])
REFERENCES [dbo].[Curso] ([CursoId])
GO
ALTER TABLE [dbo].[CursoFormador] CHECK CONSTRAINT [FK_CursoFormador_Curso1]
GO
ALTER TABLE [dbo].[CursoFormador]  WITH CHECK ADD  CONSTRAINT [FK_CursoFormador_Formador] FOREIGN KEY([FormadorId])
REFERENCES [dbo].[Formador] ([FormadorId])
GO
ALTER TABLE [dbo].[CursoFormador] CHECK CONSTRAINT [FK_CursoFormador_Formador]
GO
ALTER TABLE [dbo].[CursoFormando]  WITH CHECK ADD  CONSTRAINT [FK_CursoFormando_Curso1] FOREIGN KEY([CursoId])
REFERENCES [dbo].[Curso] ([CursoId])
GO
ALTER TABLE [dbo].[CursoFormando] CHECK CONSTRAINT [FK_CursoFormando_Curso1]
GO
ALTER TABLE [dbo].[CursoFormando]  WITH CHECK ADD  CONSTRAINT [FK_CursoFormando_Formando] FOREIGN KEY([FormandoId])
REFERENCES [dbo].[Formando] ([FormandoId])
GO
ALTER TABLE [dbo].[CursoFormando] CHECK CONSTRAINT [FK_CursoFormando_Formando]
GO
ALTER TABLE [dbo].[Subarea]  WITH CHECK ADD  CONSTRAINT [FK_Subarea_Area] FOREIGN KEY([AreaId])
REFERENCES [dbo].[Area] ([AreaId])
GO
ALTER TABLE [dbo].[Subarea] CHECK CONSTRAINT [FK_Subarea_Area]
GO
USE [master]
GO
ALTER DATABASE [GestaoFormacao_PauloMelo_v1] SET  READ_WRITE 
GO
