Create or ALTER PROCEDURE [dbo].[sp_objetivos]
    @Conditional VARCHAR (300) = ''
AS
BEGIN
DECLARE @query AS VARCHAR(6000) = 'select Cod_Meta, sum(Valor_Meta) as vm FROM B2B.O2I.Informe_Metas '+@Conditional+' group by Cod_Meta Order by Cod_Meta'
exec(@query)
END


Create or ALTER PROCEDURE [dbo].[sp_filas]
    @Conditional VARCHAR (300) = ''
AS
BEGIN
DECLARE @query AS VARCHAR(6000) = 'SELECT ISNULL(sum(Valor_Pedidos_Recibidos),0) as vpr, ISNULL(sum(Valor_Abast_Confirmado),0) as vac, ISNULL(sum(Valor_Facturado),0) as vf, ISNULL(sum(Valor_En_Proceso),0) as vep, ISNULL(sum(Valor_Recepcion_Pedidos),0) as vrp, ISNULL(sum(Valor_Abastecimiento),0) as va, ISNULL(sum(Valor_Fac_InterCompany),0) as vfi, ISNULL(sum(Valor_Transito),0) as vt, ISNULL(sum(Valor_Fac_Comercial),0) as vfc FROM B2B.O2I.Informe_Columnas '+@Conditional+' '
exec(@query)
END