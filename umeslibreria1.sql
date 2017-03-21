create database libreria
USE [libreria]
GO
/****** Object:  User [gabriel]    Script Date: 20/03/2017 9:08:45 a. m. ******/
CREATE USER [sa] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Usuario-PC\ANGEL]    Script Date: 20/03/2017 9:08:45 a. m. ******/
CREATE USER [Usuario-PC\UMES] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[afiliado]    Script Date: 20/03/2017 9:08:45 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](.............................................................
	[codcliente] [nvarchar](20) NOT NULL,
	[nombre] [nvarchar](256) NULL,
	[estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[codcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO...........................................................................................
/****** Object:  Table [dbo].[estado]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado](....................................................
	[idestado] [int] NOT NULL,
	[nombreestado] [nvarchar](100) NULL,
 CONSTRAINT [PK_estado] PRIMARY KEY CLUSTERED 
(
	[idestado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO ..............................................................................
/****** Object:  Table [dbo].[mednombre]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON.................................................
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prodnombre](
	[idnombre] [int] NOT NULL,
	[nombre] [nvarchar](256) NULL,
	[presentacion] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idnombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO................................................................
/****** Object:  Table [dbo].[nuevolote]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON..........................................................
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nuevolote](
	[idlote] [nvarchar](20) NOT NULL,
	[codprod] [nvarchar](20) NULL,
	[saldo] [numeric](18, 0) NULL,
	[preciouti] [numeric](18, 2) NULL,
	[valor] [numeric](18, 2) NULL,
	[preciocompra] [numeric](18, 3) NULL,
	[estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idlote] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO..........................................................................
/****** Object:  Table [dbo].[nuevomed]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON..........................................................
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nuevoprod](
	[codprod] [nvarchar](20) NOT NULL,
	[nombre] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[codprod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO........................................................................
/****** Object:  Table [dbo].[proveedor]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON.........................................................
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedor](
	[idproveedor] [int] NOT NULL,
	[nombre] [nvarchar](100) NULL,
	[rnombre] [int] NULL,
 CONSTRAINT [PK_proveedor] PRIMARY KEY CLUSTERED 
(
	[idproveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO........................................................................
/****** Object:  Table [dbo].[prueba1]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prueba1](
	[numerico] [int] NOT NULL,
	[precio] [money] NULL,
 CONSTRAINT [PK_prueba1] PRIMARY KEY CLUSTERED 
(
	[numerico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[registrokardez]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON...................................................................
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[registrolibreria](
	[idregistro] [int] IDENTITY(1,1) NOT NULL,
	[fechaop] [nvarchar](50) NULL,
	[afiliado] [nvarchar](20) NULL,
	[proveedor] [int] NULL,
	[lote] [nvarchar](20) NULL,
	[comprobanteing] [int] NULL,
	[saldoant] [numeric](18, 0) NULL,
	[precioant] [numeric](18, 2) NULL,
	[entrada] [numeric](18, 0) NULL,
	[salida] [numeric](18, 0) NULL,
	[saldoactual] [numeric](18, 0) NULL,
	[precioactual] [numeric](18, 2) NULL,
	[descripcion] [nvarchar](256) NULL,
	[factura] [int] NULL,
	[valor] [numeric](18, 2) NULL,
	[facturaproveedor] [numeric](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idregistro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO................................................................................
/****** Object:  Table [dbo].[SuperUsuario]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON.................................................................
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuperUsuario](................................................
	[idSuperusuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellido] [nvarchar](50) NULL,
	[Usuario] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_SuperUsuario] PRIMARY KEY CLUSTERED 
(
	[idSuperusuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO................................................................................
/****** Object:  Table [dbo].[Usuario]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON..................................................................
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] IDENTITY(10,10) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellido] [nvarchar](50) NULL,
	[Usuario] [nvarchar](50) NULL,
	[Password] [nvarchar](20) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO...................................................................................
/****** Object:  View [dbo].[cuadrekardex]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON.............................................
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[cuadrelibreria]

as 
SELECT        codprod, SUM(saldo) AS TOTAL
FROM            dbo.nuevolote
GROUP BY codprod


GO...................................................................
/****** Object:  View [dbo].[cuadrekardex1]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON.............................................................
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[cuadrelibreria1]

as

SELECT        TOP (100) PERCENT dbo.nuevolote.codprod, dbo.prodnombre.nombre, SUM(dbo.nuevolote.saldo) AS TOTAL, SUM(dbo.nuevolote.valor) AS QTOTAL
FROM            dbo.nuevolote INNER JOIN
                         dbo.nuevoprod ON dbo.nuevolote.codprod = dbo.nuevoprod.codprod INNER JOIN
                         dbo.prodnombre ON dbo.nuevoprod.nombre = dbo.prodnombre.idnombre
GROUP BY dbo.nuevolote.codprod, dbo.prodnombre.nombre
ORDER BY dbo.nuevolote.codprod



GO.............................................................................
/****** Object:  View [dbo].[detallelotes]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[detallelotes]

as 
SELECT         TOP (100) PERCENT idlote, codprod, saldo, preciouti, valor, preciocompra
FROM            dbo.nuevolote
ORDER BY codprod


GO
/****** Object:  View [dbo].[impresiondetallelotes]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[impresiondetallelotes]

as 

select top(100)percent idlote,codprod,saldo,preciouti,valor,preciocompra from nuevolote order by codprod



GO
/****** Object:  View [dbo].[impresiondetallelotes1]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[impresiondetallelotes1]

as 

select top(100)percent idlote,codprod,saldo,preciouti,valor,preciocompra from nuevolote ORDER BY codprod



GO
/****** Object:  View [dbo].[listalote]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[listalote]
AS
SELECT        TOP (100) PERCENT idlote, codprod
FROM            dbo.nuevolote
WHERE        (valor <> 0)
ORDER BY  preciocompra

GO
/****** Object:  View [dbo].[listalotes]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[listalotes]

as


SELECT        TOP (100) PERCENT idlote, codprod
FROM            dbo.nuevolote
WHERE        (valor <> 0) AND (codprod = '@VALOR')
ORDER BY preciocompra


GO
/****** Object:  View [dbo].[Listamedicamentos]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[Listamedicamentos]

as

select  TOP (100) PERCENT dbo.nuevoprod.codprod, dbo.nuevoprod.nombre
FROM dbo.nuevoprod ORDER BY dbo.nuevoprod.codprod


GO
/****** Object:  View [dbo].[listarparametosdelotes]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[listarparametosdelotes]
AS
SELECT        TOP (100) PERCENT idlote, codprod
FROM            dbo.nuevolote
WHERE        (valor <> 0) AND (codprod = N'O003')
ORDER BY  preciocompra

GO
/****** Object:  View [dbo].[registrolotes]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[registrolotes]
as

select * from nuevolote  


GO
/****** Object:  View [dbo].[transaccion1]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[transaccion1]
AS
SELECT        dbo.transaccion.*
FROM            dbo.transaccion

GO
/****** Object:  View [dbo].[v_Kardex]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_Kardex]
as
SELECT        dbo.registrolibreria.fechaop, dbo.afiliado.nombre, dbo.registrolibreria.lote, dbo.registrolibreria.afiliado, dbo.registrolibreria.factura, dbo.nuevolote.precioprod, dbo.registrolibreria.entrada, dbo.registrolibreria.salida, 
                         dbo.registrolibreria.saldoactual, dbo.registrolibreria.precioactual
FROM            dbo.registrokardez INNER JOIN
                         dbo.afiliado ON dbo.registrolibreria.afiliado = dbo.afiliado.codafiliado INNER JOIN
                         dbo.nuevolote ON dbo.registrolibreria.lote = dbo.nuevolote.idlote
GO
/****** Object:  View [dbo].[vistakardex]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vistakardex]
AS
SELECT  TOP (100) PERCENT dbo.registrokardez.fechaop, dbo.afiliado.nombre, dbo.registrokardez.lote, dbo.registrokardez.factura, dbo.nuevolote.preciomed, dbo.registrokardez.entrada, dbo.registrokardez.salida, 
                         dbo.registrokardez.saldoactual, dbo.registrokardez.precioactual
FROM            dbo.registrokardez INNER JOIN
                         dbo.afiliado ON dbo.registrokardez.afiliado = dbo.afiliado.codafiliado INNER JOIN
                         dbo.nuevolote ON dbo.registrokardez.lote = dbo.nuevolote.idlote



GO
/****** Object:  View [dbo].[vistareportekardex1]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vistareportekardex1]
AS
SELECT        CONVERT(char, dbo.registrokardez.fechaop, 103) AS fechaoperado, dbo.afiliado.nombre, dbo.registrokardez.lote, dbo.registrokardez.afiliado, dbo.registrokardez.factura, dbo.registrokardez.facturaproveedor, 
                         dbo.registrokardez.comprobanteing, dbo.nuevolote.preciomed, dbo.registrokardez.entrada, dbo.registrokardez.salida, dbo.registrokardez.valor, dbo.registrokardez.saldoactual, 
                         dbo.registrokardez.precioactual
FROM            dbo.registrokardez INNER JOIN
                         dbo.afiliado ON dbo.registrokardez.afiliado = dbo.afiliado.codafiliado INNER JOIN
                         dbo.nuevolote ON dbo.registrokardez.lote = dbo.nuevolote.idlote

GO
ALTER TABLE [dbo].[afiliado]  WITH CHECK ADD  CONSTRAINT [FK_afiliado_estado] FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([idestado])
GO
ALTER TABLE [dbo].[afiliado] CHECK CONSTRAINT [FK_afiliado_estado]
GO
ALTER TABLE [dbo].[nuevolote]  WITH CHECK ADD  CONSTRAINT [fk_nuevomed_kardex_1_1] FOREIGN KEY([codmed])
REFERENCES [dbo].[nuevomed] ([codmed])
GO
ALTER TABLE [dbo].[nuevolote] CHECK CONSTRAINT [fk_nuevomed_kardex_1_1]
GO
ALTER TABLE [dbo].[nuevomed]  WITH CHECK ADD  CONSTRAINT [FK_nuevomed_mednombre] FOREIGN KEY([nombre])
REFERENCES [dbo].[mednombre] ([idnombre])
GO
ALTER TABLE [dbo].[nuevomed] CHECK CONSTRAINT [FK_nuevomed_mednombre]
GO
ALTER TABLE [dbo].[registrokardez]  WITH CHECK ADD  CONSTRAINT [fk_afiliado_kardex_1_1] FOREIGN KEY([afiliado])
REFERENCES [dbo].[afiliado] ([codafiliado])
GO
ALTER TABLE [dbo].[registrokardez] CHECK CONSTRAINT [fk_afiliado_kardex_1_1]
GO
ALTER TABLE [dbo].[registrokardez]  WITH CHECK ADD  CONSTRAINT [fk_nuevolote_kardex_1_1] FOREIGN KEY([lote])
REFERENCES [dbo].[nuevolote] ([idlote])
GO
ALTER TABLE [dbo].[registrokardez] CHECK CONSTRAINT [fk_nuevolote_kardex_1_1]
GO
ALTER TABLE [dbo].[registrokardez]  WITH CHECK ADD  CONSTRAINT [fk_proveedor_kardex_1_1] FOREIGN KEY([proveedor])
REFERENCES [dbo].[proveedor] ([idproveedor])
GO
ALTER TABLE [dbo].[registrokardez] CHECK CONSTRAINT [fk_proveedor_kardex_1_1]
GO
/****** Object:  StoredProcedure [dbo].[actualizarafi]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[actualizarafi]

@codafiliado nvarchar(20),
@estado int

as
begin

update afiliado set estado=@estado where codafiliado=@codafiliado


end
GO
/****** Object:  StoredProcedure [dbo].[actualizarlote2]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[actualizarlote2]

 @idlote nvarchar (20),
 @codmed nvarchar (20),
 @fechaven nvarchar (50),
 @saldo numeric (18,0),
 @preciomed numeric (18,2)
 
as
declare @valor numeric (18,2)

 --------------------------------------------------------
 select @valor=nuevolote.saldo from nuevolote where nuevolote.idlote=@idlote;

set @valor=@saldo * @preciomed;
 


begin try
begin transaction Kardex_1_1

UPDATE nuevolote SET idlote=@idlote,codmed=@codmed,fechaven= Convert(nvarchar,@fechaven,103),saldo=@saldo,preciomed=@preciomed,valor=@valor
WHERE idlote=@idlote


commit transaction kardex_1_1
end try
begin catch
rollback transaction kardex_1_1
end catch
GO
/****** Object:  StoredProcedure [dbo].[crearafiliado]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[crearafiliado]
@codafiliado nvarchar(20),
@nombre  nvarchar(256),
@estado int

as
begin

insert into afiliado (codafiliado,nombre,estado) values (@codafiliado,@nombre,@estado)

end
GO
/****** Object:  StoredProcedure [dbo].[crearestado]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[crearestado]

@idestado int,
@nombreestado nvarchar(100)

as
begin

insert  into  estado (idestado,nombreestado) values (@idestado,@nombreestado)

end
GO
/****** Object:  StoredProcedure [dbo].[crearnombre]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[crearnombre]

@idnombre int,
@nombre nvarchar (256),
@presentacion nvarchar (100)

As 
Begin

insert into mednombre  values (@idnombre,@nombre,@presentacion)


end

GO
/****** Object:  StoredProcedure [dbo].[crearnuevomedicamento]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[crearnuevomedicamento]

@codmed nvarchar (20),
@nombre int 
As 
Begin

insert into nuevomed  values (@codmed,@nombre)


end

GO
/****** Object:  StoredProcedure [dbo].[crearsuperusuario]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[crearsuperusuario]

@Nombre nvarchar(50),
@Apellido nvarchar(50),
@Usuario nvarchar (50),
@Password nvarchar(50)

As 
Begin

INSERT INTO SuperUsuario VALUES (@Nombre,@Apellido,@Usuario,@Password)

end
GO
/****** Object:  StoredProcedure [dbo].[eliminarnombre]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[eliminarnombre]
@id_nommedicamento int

as
begin

delete from dbo.nombremed where id_nommedicamento=@id_nommedicamento

end
select * from dbo.nombremed

GO
/****** Object:  StoredProcedure [dbo].[eliminarnuevolote]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[eliminarnuevolote]
@idlote nvarchar(20)
as
begin 

delete from nuevolote WHERE idlote=@idlote 

end
GO
/****** Object:  StoredProcedure [dbo].[eliminarregistro]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminarregistro]
@idregistro int
as
begin 

delete from registrokardez WHERE idregistro=@idregistro 

end
GO
/****** Object:  StoredProcedure [dbo].[entradamedicamento912]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[entradamedicamento912]

  @lote nvarchar(20),
  @fechaop nvarchar (50),
  @factura int,
  @afiliado nvarchar (20),
  @entrada numeric (18,0)

AS
BEGIN
BEGIN TRANSACTION
BEGIN TRY

declare @saldoant numeric (18,0)
declare @precioant numeric (18,2)
declare @saldoactual numeric (18,0)
declare @precioactual numeric (18,2)
declare @preciomed numeric (18,2) 
declare @valor numeric (18,2) 


select @saldoant=nuevolote.saldo from nuevolote where nuevolote.idlote=@lote
set @saldoactual=@saldoant + @entrada

select @preciomed=nuevolote.preciomed from nuevolote where nuevolote.idlote=@lote

select @precioant=nuevolote.saldo from nuevolote where nuevolote.idlote=@lote
set @precioant=@saldoant * @preciomed

select @precioactual=nuevolote.saldo from nuevolote where nuevolote.idlote=@lote
set @precioactual=@saldoactual * @preciomed

set @valor=@entrada * @preciomed


update dbo.nuevolote
set saldo=saldo+@entrada
where idlote=@lote


update dbo.nuevolote
set valor=saldo*@preciomed
where idlote=@lote



insert into registrokardez (lote,fechaop,afiliado,saldoant,precioant,entrada,saldoactual,precioactual,factura,valor)
SELECT      @lote,Convert(nvarchar,@fechaop,103),@afiliado,@saldoant,@precioant,@entrada,@saldoactual,@precioactual,@factura,@valor 

FROM dbo.nuevolote

WHERE idlote=@lote

COMMIT TRANSACTION 

END TRY

BEGIN CATCH


ROLLBACK TRANSACTION

PRINT'SE HA PRODUCIDO UN ERROR!'

END CATCH
select * from nuevolote
select * from registrokardez
END
GO
/****** Object:  StoredProcedure [dbo].[entradamedicamento913]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[entradamedicamento913]

  @lote nvarchar(20),
  @fechaop nvarchar (50),
  @facturaproveedor numeric (18,0),
  @proveedor nvarchar(20),
  @entrada numeric (18,0),
  @comprobanteing int

AS
BEGIN
BEGIN TRANSACTION
BEGIN TRY

declare @saldoant numeric (18,0)
declare @precioant numeric (18,2)
declare @saldoactual numeric (18,0)
declare @precioactual numeric (18,2)
declare @preciocompra numeric (18,3) 
declare @valor numeric (18,2) 


select @saldoant=nuevolote.saldo from nuevolote where nuevolote.idlote=@lote
set @saldoactual=@saldoant + @entrada

select @preciocompra=nuevolote.preciocompra from nuevolote where nuevolote.idlote=@lote

select @precioant=nuevolote.saldo from nuevolote where nuevolote.idlote=@lote
set @precioant=@saldoant * @preciocompra

select @precioactual=nuevolote.saldo from nuevolote where nuevolote.idlote=@lote
set @precioactual=@saldoactual * @preciocompra

set @valor=@entrada * @preciocompra


update dbo.nuevolote
set saldo=saldo+@entrada
where idlote=@lote


update dbo.nuevolote
set valor=saldo*@preciocompra
where idlote=@lote



insert into registrokardez (lote,fechaop,afiliado,saldoant,precioant,entrada,saldoactual,precioactual,facturaproveedor,valor,comprobanteing)
SELECT      @lote,Convert(nvarchar,@fechaop,103),@proveedor,@saldoant,@precioant,@entrada,@saldoactual,@precioactual,@facturaproveedor,@valor,@comprobanteing 

FROM dbo.nuevolote

WHERE idlote=@lote

COMMIT TRANSACTION 

END TRY

BEGIN CATCH


ROLLBACK TRANSACTION

PRINT'SE HA PRODUCIDO UN ERROR!'

END CATCH
select * from nuevolote
select * from registrokardez
END
GO
/****** Object:  StoredProcedure [dbo].[entradamedicamentoajuste914]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[entradamedicamentoajuste914]

  @lote nvarchar(20),
  @fechaop nvarchar (50),
  @afiliado nvarchar (20),
  @entrada numeric (18,0)

AS
BEGIN
BEGIN TRANSACTION
BEGIN TRY

declare @saldoant numeric (18,0)
declare @precioant numeric (18,2)
declare @saldoactual numeric (18,0)
declare @precioactual numeric (18,2)
declare @preciomed numeric (18,2) 
declare @valor numeric (18,2) 


select @saldoant=nuevolote.saldo from nuevolote where nuevolote.idlote=@lote
set @saldoactual=@saldoant + @entrada

select @preciomed=nuevolote.preciomed from nuevolote where nuevolote.idlote=@lote

select @precioant=nuevolote.saldo from nuevolote where nuevolote.idlote=@lote
set @precioant=@saldoant * @preciomed

select @precioactual=nuevolote.saldo from nuevolote where nuevolote.idlote=@lote
set @precioactual=@saldoactual * @preciomed

set @valor=@entrada * @preciomed


update dbo.nuevolote
set saldo=saldo+@entrada
where idlote=@lote


update dbo.nuevolote
set valor=saldo*@preciomed
where idlote=@lote



insert into registrokardez (lote,fechaop,afiliado,saldoant,precioant,entrada,saldoactual,precioactual,valor)
SELECT      @lote,Convert(nvarchar,@fechaop,103),@afiliado,@saldoant,@precioant,@entrada,@saldoactual,@precioactual,@valor 

FROM dbo.nuevolote

WHERE idlote=@lote

COMMIT TRANSACTION 

END TRY

BEGIN CATCH


ROLLBACK TRANSACTION

PRINT'SE HA PRODUCIDO UN ERROR!'

END CATCH
select * from nuevolote
select * from registrokardez
END
GO
/****** Object:  StoredProcedure [dbo].[impresion_kardex]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[impresion_kardex]

as
begin

SELECT        dbo.registrokardez.fechaop, dbo.afiliado.nombre, dbo.registrokardez.lote, dbo.registrokardez.afiliado, dbo.registrokardez.factura, dbo.registrokardez.facturaproveedor, dbo.registrokardez.comprobanteing, 
                         dbo.nuevolote.preciomed, dbo.registrokardez.entrada, dbo.registrokardez.salida, dbo.registrokardez.valor, dbo.registrokardez.saldoactual, dbo.registrokardez.precioactual, dbo.nuevomed.codmed, 
                         dbo.mednombre.nombre AS Expr1, dbo.mednombre.presentacion
FROM            dbo.registrokardez INNER JOIN
                         dbo.afiliado ON dbo.registrokardez.afiliado = dbo.afiliado.codafiliado INNER JOIN
                         dbo.nuevolote ON dbo.registrokardez.lote = dbo.nuevolote.idlote INNER JOIN
                         dbo.nuevomed ON dbo.nuevolote.codmed = dbo.nuevomed.codmed INNER JOIN
                         dbo.mednombre ON dbo.nuevomed.nombre = dbo.mednombre.idnombre
ORDER BY  idregistro

end
GO
/****** Object:  StoredProcedure [dbo].[impresionvistakardex]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[impresionvistakardex]


as

SELECT        TOP (100) PERCENT dbo.registrokardez.fechaop, dbo.afiliado.nombre, dbo.registrokardez.lote, dbo.registrokardez.afiliado, dbo.registrokardez.factura, dbo.registrokardez.facturaproveedor, 
                         dbo.registrokardez.comprobanteing, dbo.nuevolote.preciomed, dbo.registrokardez.entrada, dbo.registrokardez.salida, dbo.registrokardez.valor, dbo.registrokardez.saldoactual, dbo.registrokardez.precioactual, 
                         dbo.nuevolote.codmed, dbo.mednombre.nombre AS Expr1, dbo.mednombre.presentacion
FROM            dbo.registrokardez INNER JOIN
                         dbo.afiliado ON dbo.registrokardez.afiliado = dbo.afiliado.codafiliado INNER JOIN
                         dbo.nuevolote ON dbo.registrokardez.lote = dbo.nuevolote.idlote INNER JOIN
                         dbo.nuevomed ON dbo.nuevolote.codmed = dbo.nuevomed.codmed INNER JOIN
                         dbo.mednombre ON dbo.nuevomed.nombre = dbo.mednombre.idnombre

ORDER BY dbo.registrokardez.idregistro


return 
GO
/****** Object:  StoredProcedure [dbo].[ingafiliado]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ingafiliado]

@codafiliado nvarchar(20),
@nombre nvarchar(256),  
@estado int

as begin

insert into afiliado values(@codafiliado,@nombre,@estado)

end


GO
/****** Object:  StoredProcedure [dbo].[ingresarusuario]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ingresarusuario]

@Nombre nvarchar (50),
@Apellido nvarchar(50),
@Usuario nvarchar(50),
@Password nvarchar(20)

as
begin

insert into dbo.Usuario values(@Nombre,@Apellido,@Usuario,@Password)

end
GO
/****** Object:  StoredProcedure [dbo].[ingreselote]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ingreselote]
@idlote nvarchar (20),
@codmed nvarchar (20),
@fechaven nvarchar (50),
@saldo numeric (18,0),
@preciomed numeric (18,2)

as
begin
insert into dbo.nuevolote (idlote,codmed,fechaven,preciomed,valor)values (@idlote,@codmed,@fechaven,@saldo,@preciomed)

end
GO
/****** Object:  StoredProcedure [dbo].[ingresoafiliado]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ingresoafiliado]
@codafiliado nvarchar(20),
@nombre nvarchar(256)
as 
begin

insert into dbo.afiliado values(@codafiliado,@nombre)

end

GO
/****** Object:  StoredProcedure [dbo].[ingresolotesuper2]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ingresolotesuper2]

 @idlote nvarchar (20),
 @codmed nvarchar (20),
 @fechaven nvarchar (50),
 @saldo numeric (18,0),
 @preciomed numeric (18,2)
 
as
declare @valor numeric (18,2)  
 --------------------------------------------------------
select @valor=nuevolote.saldo from nuevolote where nuevolote.idlote=@idlote;

set @valor=@saldo * @preciomed;

begin try
begin transaction kardex_1_1
	
insert into nuevolote values (@idlote,@codmed,Convert(varchar,@fechaven,103),@saldo,@preciomed,@valor)


commit transaction kardex_1_1	
end try
begin catch
rollback transaction kardex_1_1
	
end catch


GO
/****** Object:  StoredProcedure [dbo].[ingresolotesuper3]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[ingresolotesuper3]

 @idlote nvarchar (20),
 @codmed nvarchar (20),
 @fechaven nvarchar (50),
 @saldo numeric (18,0),
 @preciomed numeric (18,2),
 @preciocompra numeric(18,3),
 @estado int
 
as
declare @valor numeric (18,2)  
 --------------------------------------------------------
select @valor=nuevolote.saldo from nuevolote where nuevolote.idlote=@idlote;

set @valor=@saldo * @preciomed;

begin try
begin transaction kardex_1_1
	
insert into nuevolote values (@idlote,@codmed,Convert(varchar,@fechaven,103),@saldo,@preciomed,@valor,@preciocompra,@estado)


commit transaction kardex_1_1	
end try
begin catch
rollback transaction kardex_1_1
	
end catch


GO
/****** Object:  StoredProcedure [dbo].[ingresomed]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ingresomed]
@codmed nvarchar (20),
@nombre int


as 
begin
insert into dbo.nuevomed values (@codmed,@nombre)

end


GO
/****** Object:  StoredProcedure [dbo].[ingresonombre]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ingresonombre]

@idnombre int,
@nombre nvarchar(256)

as
begin

insert into dbo.mednombre values(@idnombre,@nombre)

end

GO
/****** Object:  StoredProcedure [dbo].[insproveedor]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[insproveedor]

@idproveedor int,
@nombre varchar (100),
@descripcion varchar(100)

as
begin
insert into dbo.proveedor values (@idproveedor,@nombre,@descripcion)

end
GO
/****** Object:  StoredProcedure [dbo].[Listarlotepormedicamento]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Listarlotepormedicamento]
	-- Add the parameters for the stored procedure here
	@codmed nvarchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	FROM nuevolote
	WHERE codmed=@codmed
	ORDER BY codmed
END

GO
/****** Object:  StoredProcedure [dbo].[listarlotes]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[listarlotes]
@codmed nvarchar (20)
as
begin

select * from nuevolote where codmed=@codmed And saldo != '0'
order by fechaven

end
GO
/****** Object:  StoredProcedure [dbo].[ListarMedicamento]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ListarMedicamento] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	FROM nuevomed
	ORDER BY codmed
END

GO
/****** Object:  StoredProcedure [dbo].[Listarproveedor]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Listarproveedor]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	FROM afiliado
	WHERE estado='2'
	order by nombre
END

GO
/****** Object:  StoredProcedure [dbo].[medicamento]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[medicamento]

@idlote nvarchar(20), 
@codmed nvarchar(20),
@fechaven nvarchar(50),
@saldo numeric(18,0),
@preciomed numeric(18,2),
@valor numeric (18,2),
@preciocompra numeric(18,3)

as 
begin 

SELECT 
*FROM nuevomed
WHERE codmed=@codmed 

order by codmed

end  
GO
/****** Object:  StoredProcedure [dbo].[nombrepresentacion]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[nombrepresentacion]
	-- Add the parameters for the stored procedure here
	@medicamento nvarchar(20)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT        dbo.nuevomed.codmed, dbo.mednombre.nombre, dbo.mednombre.presentacion
    FROM            dbo.nuevomed INNER JOIN
                         dbo.mednombre ON dbo.nuevomed.nombre = dbo.mednombre.idnombre
    WHERE codmed=@medicamento
END

GO
/****** Object:  StoredProcedure [dbo].[nuevavistaimpresion]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[nuevavistaimpresion]
@lote nvarchar(20)
as
begin

SELECT        TOP (100) PERCENT dbo.registrokardez.fechaop, dbo.afiliado.nombre, dbo.registrokardez.lote, dbo.registrokardez.afiliado, dbo.registrokardez.factura, dbo.registrokardez.facturaproveedor, 
                         dbo.registrokardez.comprobanteing, dbo.nuevolote.preciomed, dbo.registrokardez.entrada, dbo.registrokardez.salida, dbo.registrokardez.valor, dbo.registrokardez.saldoactual, dbo.registrokardez.precioactual, 
                         dbo.nuevolote.codmed, dbo.mednombre.nombre AS Expr1, dbo.mednombre.presentacion
FROM            dbo.registrokardez INNER JOIN
                         dbo.afiliado ON dbo.registrokardez.afiliado = dbo.afiliado.codafiliado INNER JOIN
                         dbo.nuevolote ON dbo.registrokardez.lote = dbo.nuevolote.idlote INNER JOIN
                         dbo.nuevomed ON dbo.nuevolote.codmed = dbo.nuevomed.codmed INNER JOIN
                         dbo.mednombre ON dbo.nuevomed.nombre = dbo.mednombre.idnombre
WHERE        dbo.registrokardez.lote = @lote
ORDER BY dbo.registrokardez.idregistro

end
GO
/****** Object:  StoredProcedure [dbo].[ReporteFactura]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[ReporteFactura]
@lote nvarchar(20)
as
begin

SELECT        TOP (100) PERCENT dbo.registrokardez.fechaop, dbo.afiliado.nombre, dbo.registrokardez.lote, dbo.registrokardez.afiliado, dbo.registrokardez.factura, dbo.registrokardez.facturaproveedor, 
                         dbo.registrokardez.comprobanteing, dbo.nuevolote.preciomed, dbo.registrokardez.entrada, dbo.registrokardez.salida, dbo.registrokardez.valor, dbo.registrokardez.saldoactual, dbo.registrokardez.precioactual, 
                         dbo.nuevolote.codmed, dbo.mednombre.nombre AS Expr1, dbo.mednombre.presentacion
FROM            dbo.registrokardez INNER JOIN
                         dbo.afiliado ON dbo.registrokardez.afiliado = dbo.afiliado.codafiliado INNER JOIN
                         dbo.nuevolote ON dbo.registrokardez.lote = dbo.nuevolote.idlote INNER JOIN
                         dbo.nuevomed ON dbo.nuevolote.codmed = dbo.nuevomed.codmed INNER JOIN
                         dbo.mednombre ON dbo.nuevomed.nombre = dbo.mednombre.idnombre
WHERE        dbo.registrokardez.lote = @lote
ORDER BY dbo.registrokardez.idregistro

end
GO
/****** Object:  StoredProcedure [dbo].[salidakardex]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[salidakardex]

  @lote nvarchar(20),
  @fechaop date,
  @factura int,
  @afiliado nvarchar (20),
  @salida numeric (18,0)

as

declare @saldoant numeric (18,0);
declare @precioant numeric (18,2);
declare @saldoactual numeric (18,0);
declare @precioactual numeric (18,2);
declare @preciomed numeric (18,2);  
 --------------------------------------------------------
select @saldoant=nuevolote.saldo from nuevolote where nuevolote.idlote=@lote;
set @saldoactual=@saldoant - @salida;

select @preciomed=nuevolote.preciomed from nuevolote where nuevolote.idlote=@lote;

select @precioant=nuevolote.saldo from nuevolote where nuevolote.idlote=@lote;
set @precioant=@saldoant * @preciomed;

select @precioactual=nuevolote.saldo from nuevolote where nuevolote.idlote=@lote;
set @precioactual=@saldoactual * @preciomed;

begin try
begin transaction Kardex_1_1

insert into registrokardez (lote,fechaop,afiliado,saldoant,precioant,salida,saldoactual,precioactual,factura)
values (@lote,@fechaop,@afiliado,@saldoant,@precioant,@salida,@saldoactual,@precioactual,@factura); 


commit transaction kardex_1_1
end try
begin catch
rollback transaction kardex_1_1
end catch
GO
/****** Object:  StoredProcedure [dbo].[salidamedicamento]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[salidamedicamento]

  @lote nvarchar(20),
  @fechaop date,
  @factura int,
  @afiliado nvarchar (20),
  @salida numeric (18,0)

AS
BEGIN
BEGIN TRANSACTION
BEGIN TRY

declare @saldoant numeric (18,0)
declare @precioant numeric (18,2)
declare @saldoactual numeric (18,0)
declare @precioactual numeric (18,2)
declare @preciomed numeric (18,2)  

select @saldoant=nuevolote.saldo from nuevolote where nuevolote.idlote=@lote;
set @saldoactual=@saldoant - @salida;

select @preciomed=nuevolote.preciomed from nuevolote where nuevolote.idlote=@lote;

select @precioant=nuevolote.saldo from nuevolote where nuevolote.idlote=@lote;
set @precioant=@saldoant * @preciomed;

select @precioactual=nuevolote.saldo from nuevolote where nuevolote.idlote=@lote;
set @precioactual=@saldoactual * @preciomed;

if((@saldoant-@salida)>=0)
update dbo.nuevolote
set saldo=saldo-@salida
where idlote=@lote

else
ROLLBACK TRANSACTION
PRINT 'SALDO DE LOTE INSUFICIENTE'

insert into registrokardez (lote,fechaop,afiliado,saldoant,precioant,salida,saldoactual,precioactual,factura)
SELECT      @lote,@fechaop,@afiliado,@saldoant,@precioant,@salida,@saldoactual,@precioactual,@factura 

FROM dbo.nuevolote

WHERE idlote=@lote

COMMIT TRANSACTION 

END TRY

BEGIN CATCH

select * from nuevolote
select * from registrokardez
ROLLBACK TRANSACTION

PRINT'SE HA PRODUCIDO UN ERROR!'

END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[salidamedicamento1]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[salidamedicamento1]

  @lote nvarchar(20),
  @fechaop date,
  @factura int,
  @afiliado nvarchar (20),
  @salida numeric (18,0)

AS
BEGIN
BEGIN TRANSACTION
BEGIN TRY

declare @saldoant numeric (18,0)
declare @precioant numeric (18,2)
declare @saldoactual numeric (18,0)
declare @precioactual numeric (18,2)
declare @preciomed numeric (18,2)  

if((@saldoant-@salida)>=0)
select @saldoant=nuevolote.saldo from nuevolote where nuevolote.idlote=@lote
set @saldoactual=@saldoant - @salida

select @preciomed=nuevolote.preciomed from nuevolote where nuevolote.idlote=@lote

select @precioant=nuevolote.saldo from nuevolote where nuevolote.idlote=@lote
set @precioant=@saldoant * @preciomed

select @precioactual=nuevolote.saldo from nuevolote where nuevolote.idlote=@lote
set @precioactual=@saldoactual * @preciomed

ROLLBACK TRANSACTION
PRINT 'SALDO DE LOTE INSUFICIENTE'


if((@saldoant-@salida)>=0)
update dbo.nuevolote
set saldo=saldo-@salida
where idlote=@lote

else
ROLLBACK TRANSACTION
PRINT 'SALDO DE LOTE INSUFICIENTE'

insert into registrokardez (lote,fechaop,afiliado,saldoant,precioant,salida,saldoactual,precioactual,factura)
SELECT      @lote,@fechaop,@afiliado,@saldoant,@precioant,@salida,@saldoactual,@precioactual,@factura 

FROM dbo.nuevolote

WHERE idlote=@lote

COMMIT TRANSACTION 

END TRY

BEGIN CATCH

select * from nuevolote
select * from registrokardez
ROLLBACK TRANSACTION

PRINT'SE HA PRODUCIDO UN ERROR!'

END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[salidamedicamento911]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[salidamedicamento911]

  @lote nvarchar(20),
  @fechaop nvarchar(50),
  @factura int,
  @afiliado nvarchar (20),
  @salida numeric (18,0)

AS
BEGIN
BEGIN TRANSACTION
BEGIN TRY

declare @saldoant numeric (18,0)
declare @precioant numeric (18,2)
declare @saldoactual numeric (18,0)
declare @precioactual numeric (18,2)
declare @preciomed numeric (18,2)  
declare @valor numeric (18,2)

select @saldoant=nuevolote.saldo from nuevolote where nuevolote.idlote=@lote
set @saldoactual=@saldoant - @salida

select @preciomed=nuevolote.preciomed from nuevolote where nuevolote.idlote=@lote

select @precioant=nuevolote.saldo from nuevolote where nuevolote.idlote=@lote
set @precioant=@saldoant * @preciomed

select @precioactual=nuevolote.saldo from nuevolote where nuevolote.idlote=@lote
set @precioactual=@saldoactual * @preciomed

set @valor=@salida * @preciomed



if((@saldoant-@salida)>=0)
update dbo.nuevolote
set saldo=saldo-@salida
where idlote=@lote
else
ROLLBACK TRANSACTION
PRINT 'SALDO DE LOTE INSUFICIENTE'

update dbo.nuevolote
set valor=saldo*@preciomed
where idlote=@lote



insert into registrokardez (lote,fechaop,afiliado,saldoant,precioant,salida,saldoactual,precioactual,factura,valor)
SELECT      @lote,Convert (nvarchar,@fechaop,103),@afiliado,@saldoant,@precioant,@salida,@saldoactual,@precioactual,@factura,@valor 

FROM dbo.nuevolote

WHERE idlote=@lote

COMMIT TRANSACTION 

END TRY

BEGIN CATCH

select * from nuevolote
select * from registrokardez
ROLLBACK TRANSACTION

PRINT'SE HA PRODUCIDO UN ERROR!'

END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[salidamedicamentoajuste915]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[salidamedicamentoajuste915]

  @lote nvarchar(20),
  @fechaop nvarchar(50),
  @afiliado nvarchar (20),
  @salida numeric (18,0)

AS
BEGIN
BEGIN TRANSACTION
BEGIN TRY

declare @saldoant numeric (18,0)
declare @precioant numeric (18,2)
declare @saldoactual numeric (18,0)
declare @precioactual numeric (18,2)
declare @preciomed numeric (18,2)  
declare @valor numeric (18,2)

select @saldoant=nuevolote.saldo from nuevolote where nuevolote.idlote=@lote
set @saldoactual=@saldoant - @salida

select @preciomed=nuevolote.preciomed from nuevolote where nuevolote.idlote=@lote

select @precioant=nuevolote.saldo from nuevolote where nuevolote.idlote=@lote
set @precioant=@saldoant * @preciomed

select @precioactual=nuevolote.saldo from nuevolote where nuevolote.idlote=@lote
set @precioactual=@saldoactual * @preciomed

set @valor=@salida * @preciomed



if((@saldoant-@salida)>=0)
update dbo.nuevolote
set saldo=saldo-@salida
where idlote=@lote
else
ROLLBACK TRANSACTION
PRINT 'SALDO DE LOTE INSUFICIENTE'

update dbo.nuevolote
set valor=saldo*@preciomed
where idlote=@lote



insert into registrokardez (lote,fechaop,afiliado,saldoant,precioant,salida,saldoactual,precioactual,valor)
SELECT      @lote,Convert (nvarchar,@fechaop,103),@afiliado,@saldoant,@precioant,@salida,@saldoactual,@precioactual,@valor 

FROM dbo.nuevolote

WHERE idlote=@lote

COMMIT TRANSACTION 

END TRY

BEGIN CATCH

select * from nuevolote
select * from registrokardez
ROLLBACK TRANSACTION

PRINT'SE HA PRODUCIDO UN ERROR!'

END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[VerificacioUsuario]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[VerificacioUsuario]
@Usuario nvarchar(50), @Password nvarchar(20)

As
Begin

  SET NOCOUNT ON;

  SELECT *
  FROM Usuario
  WHERE Usuario=@Usuario AND Password=@Password

  END

GO
/****** Object:  StoredProcedure [dbo].[verificarSuperlote]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[verificarSuperlote]

	@idlote nvarchar(20) 

As 
Begin

	SET NOCOUNT ON;

	SELECT * 
	FROM nuevolote
	where idlote=@idlote

END
GO
/****** Object:  StoredProcedure [dbo].[VerificarSuperusuario]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[VerificarSuperusuario]

@Usuario nvarchar(50), @Password nvarchar(50)

As
Begin

  SET NOCOUNT ON;

  SELECT *
  FROM SuperUsuario
  WHERE Usuario=@Usuario AND Password=@Password

  END

GO
/****** Object:  StoredProcedure [dbo].[vistakardexmodificaca]    Script Date: 20/03/2017 9:08:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[vistakardexmodificaca]
@lote nvarchar(20)
as
begin

SELECT        registrokardez.fechaop, afiliado.nombre, registrokardez.lote, registrokardez.afiliado, registrokardez.factura, registrokardez.facturaproveedor, registrokardez.comprobanteing, nuevolote.preciomed, 
                         registrokardez.entrada, registrokardez.salida, registrokardez.valor, registrokardez.saldoactual, registrokardez.precioactual
FROM            registrokardez INNER JOIN
                         afiliado ON registrokardez.afiliado = afiliado.codafiliado INNER JOIN
                         nuevolote ON registrokardez.lote = nuevolote.idlote
WHERE        registrokardez.lote = @lote
ORDER BY registrokardez.idregistro

end
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "nuevolote"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'listalote'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'listalote'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "nuevolote"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 256
               Right = 210
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'listarparametosdelotes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'listarparametosdelotes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "transaccion"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'transaccion1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'transaccion1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[25] 4[19] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "registrokardez"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "afiliado"
            Begin Extent = 
               Top = 6
               Left = 256
               Bottom = 119
               Right = 426
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "nuevolote"
            Begin Extent = 
               Top = 6
               Left = 464
               Bottom = 136
               Right = 634
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 17
         Width = 284
         Width = 2745
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2130
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 4275
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistareportekardex1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistareportekardex1'
GO
