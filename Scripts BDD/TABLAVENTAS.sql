USE [bdd_practica_3]
GO

/****** Object:  Table [dbo].[Ventas]    Script Date: 1/28/2022 7:40:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Ventas](
	[num_factura] [int] NOT NULL,
	[cliente] [varchar](50) NOT NULL,
	[fecha] [datetime] NULL,
	[monto] [decimal](18, 2) NULL,
	[iva] [decimal](18, 2) NULL,
	[total] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[num_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


