CREATE PROCEDURE [dbo].[sp_llena_summary_pais] (@Cod_Pais varchar(8))
AS
BEGIN
  SELECT
    Desc_Division,
    Cod_Division,
    Cod_Pais,
    Desc_Pais,
    Desc_Corta_Meta,
    Desc_Corta_Meta,
	convert(varchar, Fecha_1ra_Distrib, 103) Fecha_1ra_Distrib,
	convert(varchar, Fecha_2da_Distrib, 103) Fecha_2da_Distrib,
	convert(varchar, Fecha_3ra_Distrib, 103) Fecha_3ra_Distrib,
    CAST(FORMAT(SUM(ISNULL(Valor_Meta, 0)), '###,###,###.##') AS varchar) Valor_Meta,
    CAST(FORMAT(SUM(ISNULL(Valor_1ra_Distrib, 0)), '###,###,###.##') AS varchar) Valor_1ra_Distrib,
    CAST(FORMAT(ROUND((CAST(SUM(ISNULL(Valor_1ra_Distrib, 0)) AS decimal(6, 1)) / SUM(ISNULL(Valor_Meta, 0))) * 100, 2), '###,###,###.##') AS varchar) + '%' Porcent_1ra_Distrib,
    CAST(FORMAT(COALESCE(SUM(ISNULL(Valor_2da_Distrib, 0)), 0), '###,###,###.##') AS varchar) Valor_2da_Distrib,
    CAST(FORMAT(ROUND((CAST(SUM(ISNULL(Valor_2da_Distrib, 0)) AS decimal(6, 1)) / SUM(ISNULL(Valor_Meta, 0))) * 100, 2), '###,###,###.##') AS varchar) + '%' Porcent_2da_Distrib,
    CAST(FORMAT(SUM(ISNULL(Valor_3ra_Distrib, 0)), '###,###,###.##') AS varchar) Valor_3ra_Distrib,
    CAST(FORMAT(ROUND((CAST(SUM(ISNULL(Valor_3ra_Distrib, 0)) AS decimal(6, 1)) / SUM(ISNULL(Valor_Meta, 0))) * 100, 2), '###,###,###.##') AS varchar) + '%' Porcent_3ra_Distrib,
    CAST(FORMAT(SUM(ISNULL(Valor_Por_Facturar, 0)), '###,###,###.##') AS varchar) Valor_Por_Facturar,
    CAST(FORMAT(ROUND((CAST(SUM(ISNULL(Valor_Por_Facturar, 0)) AS decimal(6, 1)) / SUM(ISNULL(Valor_Meta, 0))) * 100, 2), '###,###,###.##') AS varchar) + '%' Porcent_Por_Facturar,
    CAST(FORMAT(SUM(ISNULL(Valor_Real_Facturado, 0)), '###,###,###.##') AS varchar) Valor_Real_Facturado,
    CAST(FORMAT(ROUND((CAST(SUM(ISNULL(Valor_Real_Facturado, 0)) AS decimal(6, 1)) / SUM(ISNULL(Valor_Meta, 0))) * 100, 2), '###,###,###.##') AS varchar) + '%' Porcent_Real_Facturado,
    CAST(FORMAT(SUM(ISNULL(Valor_Total, 0)), '###,###,###.##') AS varchar) Valor_Total,
    CAST(FORMAT(ROUND((CAST(SUM(ISNULL(Valor_Total, 0)) AS decimal(6, 1)) / SUM(ISNULL(Valor_Meta, 0))) * 100, 2), '###,###,###.##') AS varchar) + '%' Porcent_Total
  FROM B2B.O2I.Informe_Resumen_Pais
  WHERE Cod_Pais = @Cod_Pais
  GROUP BY Desc_Division,
           Cod_Pais,
           Desc_Pais,
           Desc_Corta_Meta,
           Desc_Corta_Meta,
           Cod_Division,
		   convert(varchar, Fecha_1ra_Distrib, 103),
		   convert(varchar, Fecha_2da_Distrib, 103),
		   convert(varchar, Fecha_3ra_Distrib, 103),
		   Cod_Meta
		   ORDER BY Desc_Division asc, Cod_Meta asc
END

CREATE PROCEDURE [dbo].[sp_llena_total_pais]
(
  @Cod_Pais varchar(8)
)
AS
BEGIN
  SELECT
  Cod_Pais, 
  Desc_Pais, 
  Desc_Corta_Meta, 
  Desc_Corta_Meta, 
  SUM(Valor_Meta) Valor_Meta,
  SUM(Valor_1ra_Distrib) Valor_1ra_Distrib,
  CAST(FORMAT(ROUND((CAST(SUM(Valor_1ra_Distrib) AS decimal(6,1))/SUM(Valor_Meta))*100,2), '###,###,###.##') AS varchar) + '%' Porcent_1ra_Distrib,
  SUM(Valor_2da_Distrib) Valor_2da_Distrib,
  CAST(FORMAT(ROUND((CAST(SUM(Valor_2da_Distrib) AS decimal(6,1))/SUM(Valor_Meta))*100,2), '###,###,###.##') AS varchar) + '%' Porcent_2da_Distrib,
  SUM(Valor_3ra_Distrib) Valor_3ra_Distrib,
  CAST(FORMAT(ROUND((CAST(SUM(Valor_3ra_Distrib) AS decimal(6,1))/SUM(Valor_Meta))*100,2), '###,###,###.##') AS varchar) + '%' Porcent_3ra_Distrib,
  SUM(Valor_Por_Facturar) Valor_Por_Facturar,
  CAST(FORMAT(ROUND((CAST(SUM(Valor_Por_Facturar) AS decimal(6,1))/SUM(Valor_Meta))*100,2), '###,###,###.##') AS varchar) + '%' Porcent_Por_Facturar,
  SUM(Valor_Real_Facturado) Valor_Real_Facturado,
  CAST(FORMAT(ROUND((CAST(SUM(Valor_Real_Facturado) AS decimal(6,1))/SUM(Valor_Meta))*100,2), '###,###,###.##') AS varchar) + '%' Porcent_Real_Facturado,
  SUM(Valor_Total) Valor_Total,
  CAST(FORMAT(ROUND((CAST(SUM(Valor_Total) AS decimal(6,1))/SUM(Valor_Meta))*100,2), '###,###,###.##') AS varchar) + '%' Porcent_Total
  FROM B2B.O2I.Informe_Resumen_Pais
  WHERE Cod_Pais = @Cod_Pais
  group by Cod_Pais, Desc_Pais, Desc_Corta_Meta, Desc_Corta_Meta, Cod_Meta
  ORDER BY Cod_Meta asc
END

CREATE PROCEDURE [dbo].[sp_llena_porcentaje_pais] @Cod_Region int = 0
AS
BEGIN
  SELECT
    Cod_Pais,
    Desc_Pais,
    Seguimiento.Desc_Corta_Pais,
    Paises.latitud,
    Paises.longitud,
    COALESCE(FORMAT(ROUND(SUM(valor_meta)/(
		select sum(Facturado.valor_facturado) Facturado
		FROM [B2B].[O2I].[Informe_Seguimiento] as Facturado
		Where Facturado.Desc_Corta_Pais = Seguimiento.Desc_Corta_Pais
	)*100,2), '###,###,###.#'), '0.00') valor
  FROM (SELECT
    'GT' Desc_Corta_Pais,
    15.783471 latitud,
    -90.230759 longitud,
	1 Cod_Region
  UNION ALL
  SELECT
    'SV' Desc_Corta_Pais,
    13.794185 latitud,
    -88.89653 longitud,
	1 Cod_Region
  UNION ALL
  SELECT
    'HN' Desc_Corta_Pais,
    15.199999 latitud,
    -86.241905 longitud,
	1 Cod_Region
  UNION ALL
  SELECT
    'NI' Desc_Corta_Pais,
    12.865416 latitud,
    -85.207229 longitud,
	1 Cod_Region
	UNION ALL
  SELECT
    'CR' Desc_Corta_Pais,
    9.748917 latitud,
    -83.753428 longitud,
	1 Cod_Region
	UNION ALL
  SELECT
    'PA' Desc_Corta_Pais,
    8.537981 latitud,
    -80.782127 longitud,
	1 Cod_Region
	UNION ALL
  SELECT
    'DO' Desc_Corta_Pais,
    18.735693 latitud,
    -70.162651 longitud,
	2 Cod_Region
	UNION ALL
  SELECT
    'BS' Desc_Corta_Pais,
    25.025885 latitud,
    -78.035889 longitud,
	2 Cod_Region
	UNION ALL
  SELECT
    'EC' Desc_Corta_Pais,
    -1.831239 latitud,
    -78.183406 longitud,
	3 Cod_Region
	UNION ALL
  SELECT
    'PE' Desc_Corta_Pais,
    -9.189967 latitud,
    -75.015152 longitud,
	3 Cod_Region
	UNION ALL
  SELECT
    'CO' Desc_Corta_Pais,
    4.570868 latitud,
    -74.297333 longitud,
	3 Cod_Region
	UNION ALL
  SELECT
    'BO' Desc_Corta_Pais,
     -16.290154 latitud,
    -63.588653 longitud,
	3 Cod_Region) AS Paises
  LEFT JOIN [B2B].[O2I].[Informe_Seguimiento] AS Seguimiento
	ON Paises.Desc_Corta_Pais = Seguimiento.Desc_Corta_Pais
  WHERE ISNULL(Desc_Meta,'LAST BEST ESTIMATE') = 'LAST BEST ESTIMATE' 
  AND Paises.Cod_Region = @Cod_Region
  GROUP BY Cod_Pais,
           Desc_Pais,
           Seguimiento.Desc_Corta_Pais,
           Paises.latitud,
           Paises.longitud
END



