if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Busqueda]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Busqueda]
GO
CREATE Procedure Busqueda
(
    @Nombre nvarchar(40)
	@TipoViaje bit 
	@Autorizador nvarchar(40)
	@Linea nvarchar(30)
	@Destino nvarchar(25)
	@Area nvarchar(35)
	@TipoOficial bit
	@Estado nvarchar(20)
	@Estatus nvarchar (15)
	@Historico bit
	@Fecha1 bigint
	@Fecha2 bigint
	@TipoFecha bit
)
AS

SELECT 
    v.Solicitante,
    v.Fecha_Viaje_Para,
    v.Destino,
    v.Motivo, 
    v.Estado,

FROM 
    Productos

WHERE 
    NumeroModelo LIKE '%' + @Busqueda + '%' 
   OR
    NombreModelo LIKE '%' + @Busqueda + '%'
   OR
    Descripcion LIKE '%' + @Busqueda + '%'

GO