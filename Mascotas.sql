USE [DB_MASCOTAS]
GO
/****** Object:  Table [dbo].[Mascota]    Script Date: 16/07/2023 23:49:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mascota](
	[id_mascota] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[edad] [int] NOT NULL,
	[descripcion] [varchar](max) NULL,
 CONSTRAINT [PK_Mascota] PRIMARY KEY CLUSTERED 
(
	[id_mascota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Mascota_Add]    Script Date: 16/07/2023 23:49:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Mascota_Add]
@nombre varchar(50),
@edad int,
@desc varchar(MAX)
AS
INSERT INTO Mascota (nombre, edad, descripcion) 
VALUES (@nombre,@edad,@desc)
GO
/****** Object:  StoredProcedure [dbo].[Mascota_ALL]    Script Date: 16/07/2023 23:49:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Mascota_ALL]
AS
SELECT id_mascota, nombre, edad,descripcion FROM Mascota
ORDER BY id_mascota ASC
GO
/****** Object:  StoredProcedure [dbo].[Mascota_Delete]    Script Date: 16/07/2023 23:49:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Mascota_Delete]
@id int
AS
DELETE FROM Mascota
WHERE id_mascota = @id

GO
/****** Object:  StoredProcedure [dbo].[Mascota_Update]    Script Date: 16/07/2023 23:49:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Mascota_Update]
@id int,
@nombre varchar(50),
@edad int,
@desc varchar(MAX)
AS
UPDATE Mascota 
SET nombre = @nombre, 
    edad = @edad, 
	descripcion = @desc
WHERE id_mascota = @id

GO
