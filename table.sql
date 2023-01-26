
CREATE TABLE [O2I].[Informe_Resumen_Pais](
	[Mes] [date] NOT NULL,
	[Cod_Division] [int] NOT NULL,
	[Desc_Division] [varchar](100) NOT NULL,
	[Cod_Pais] [varchar](8) NOT NULL,
	[Desc_Pais] [varchar](100) NOT NULL,
	[Cod_Meta] [int] NOT NULL,
	[Desc_Meta] [varchar](100) NOT NULL,
	[Desc_Corta_Meta] [varchar](10) NOT NULL,
	[Valor_Meta] [int] NOT NULL,
	[Fecha_1ra_Distrib] [date] NULL,
	[Valor_1ra_Distrib] [int] NOT NULL,
	[Porcent_1ra_Distrib] [decimal](6, 1) NOT NULL,
	[Fecha_2da_Distrib] [date] NULL,
	[Valor_2da_Distrib] [int] NOT NULL,
	[Porcent_2da_Distrib] [decimal](6, 1) NOT NULL,
	[Fecha_3ra_Distrib] [date] NULL,
	[Valor_3ra_Distrib] [int] NOT NULL,
	[Porcent_3ra_Distrib] [decimal](6, 1) NOT NULL,
	[Valor_Por_Facturar] [int] NOT NULL,
	[Porcent_Por_Facturar] [decimal](6, 1) NOT NULL,
	[Valor_Real_Facturado] [int] NOT NULL,
	[Porcent_Real_Facturado] [decimal](6, 1) NOT NULL,
	[Valor_Total] [int] NOT NULL,
	[Porcent_Total] [decimal](6, 1) NOT NULL,
 CONSTRAINT [PK_Informe_Resumen_Pais] PRIMARY KEY NONCLUSTERED 
(
	[Mes] ASC,
	[Cod_Division] ASC,
	[Cod_Pais] ASC,
	[Cod_Meta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','GT','GUATEMALA','1','PRESUPUESTO ANUAL','PPTO','1216','2022-11-17','570','46.9','2022-11-24','80','6.6','2022-11-29','3','33.8','27','2.2','239','19.7','1327','109.1');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','GT','GUATEMALA','2','LAST BEST ESTIMATE','LBE','1539','2022-11-17','570','37','2022-11-24','80','5.2','2022-11-29','3','26.7','27','1.8','239','15.5','1327','86.2');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','GT','GUATEMALA','3','PROYECCIÓN DE CIERRE','PROY','1562','2022-11-17','570','36.5','2022-11-24','80','5.1','2022-11-29','3','26.3','27','1.7','239','15.3','1327','85');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','SV','EL SALVADOR','1','PRESUPUESTO ANUAL','PPTO','693','2022-11-17','211','30.4','2022-11-24','29','4.2','2022-11-29','3','21.9','10','1.4','88','12.7','490','70.7');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','SV','EL SALVADOR','2','LAST BEST ESTIMATE','LBE','578','2022-11-17','211','36.5','2022-11-24','29','5','2022-11-29','3','26.3','10','1.7','88','15.2','490','84.8');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','SV','EL SALVADOR','3','PROYECCIÓN DE CIERRE','PROY','587','2022-11-17','211','35.9','2022-11-24','29','4.9','2022-11-29','3','25.9','10','1.7','88','15','490','83.5');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','HN','HONDURAS','1','PRESUPUESTO ANUAL','PPTO','873','2022-11-22','501','57.4','2022-11-28','70','8','2022-12-02','3','41.4','23','2.6','210','24.1','1165','133.4');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','HN','HONDURAS','2','LAST BEST ESTIMATE','LBE','1074','2022-11-22','501','46.6','2022-11-28','70','6.5','2022-12-02','3','33.6','23','2.1','210','19.6','1165','108.5');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','HN','HONDURAS','3','PROYECCIÓN DE CIERRE','PROY','1090','2022-11-22','501','46','2022-11-28','70','6.4','2022-12-02','3','33.1','23','2.1','210','19.3','1165','106.9');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','NI','NICARAGUA','1','PRESUPUESTO ANUAL','PPTO','835','2022-11-19','356','42.6','2022-11-22','50','6','2022-11-29','3','30.7','17','2','149','17.8','828','99.2');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','NI','NICARAGUA','2','LAST BEST ESTIMATE','LBE','969','2022-11-19','356','36.7','2022-11-22','50','5.2','2022-11-29','3','26.4','17','1.8','149','15.4','828','85.4');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','NI','NICARAGUA','3','PROYECCIÓN DE CIERRE','PROY','984','2022-11-19','356','36.2','2022-11-22','50','5.1','2022-11-29','3','26','17','1.7','149','15.1','828','84.1');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','CR','COSTA RICA','1','PRESUPUESTO ANUAL','PPTO','472','2022-11-17','154','32.6','2022-11-24','21','4.4','2022-11-29','3','23.5','7','1.5','64','13.6','357','75.6');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','CR','COSTA RICA','2','LAST BEST ESTIMATE','LBE','529','2022-11-17','154','29.1','2022-11-24','21','4','2022-11-29','3','21','7','1.3','64','12.1','357','67.5');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','CR','COSTA RICA','3','PROYECCIÓN DE CIERRE','PROY','537','2022-11-17','154','28.7','2022-11-24','21','3.9','2022-11-29','3','20.7','7','1.3','64','11.9','357','66.5');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','PA','PANAMÁ','1','PRESUPUESTO ANUAL','PPTO','353','2022-11-17','179','50.7','2022-11-24','25','7.1','2022-11-29','3','36.5','8','2.3','75','21.2','416','117.8');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','PA','PANAMÁ','2','LAST BEST ESTIMATE','LBE','485','2022-11-17','179','36.9','2022-11-24','25','5.2','2022-11-29','3','26.6','8','1.6','75','15.5','416','85.8');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','PA','PANAMÁ','3','PROYECCIÓN DE CIERRE','PROY','492','2022-11-17','179','36.4','2022-11-24','25','5.1','2022-11-29','3','26.2','8','1.6','75','15.2','416','84.6');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','EC','ECUADOR','1','PRESUPUESTO ANUAL','PPTO','433','2022-11-14','170','39.3','2022-11-21','24','5.5','2022-12-02','3','28.4','8','1.8','71','16.4','396','91.5');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','EC','ECUADOR','2','LAST BEST ESTIMATE','LBE','393','2022-11-14','170','43.3','2022-11-21','24','6.1','2022-12-02','3','31.3','8','2','71','18.1','396','100.8');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','EC','ECUADOR','3','PROYECCIÓN DE CIERRE','PROY','399','2022-11-14','170','42.6','2022-11-21','24','6','2022-12-02','3','30.8','8','2','71','17.8','396','99.2');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','CO','COLOMBIA','1','PRESUPUESTO ANUAL','PPTO','55','2022-11-17','29','52.7','2022-11-24','4','7.3','2022-11-29','3','38.2','1','1.8','12','21.8','67','121.8');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','CO','COLOMBIA','2','LAST BEST ESTIMATE','LBE','61','2022-11-17','29','47.5','2022-11-24','4','6.6','2022-11-29','3','34.4','1','1.6','12','19.7','67','109.8');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','CO','COLOMBIA','3','PROYECCIÓN DE CIERRE','PROY','62','2022-11-17','29','46.8','2022-11-24','4','6.5','2022-11-29','3','33.9','1','1.6','12','19.4','67','108.1');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','DO','REPÚBLICA DOMINICANA','1','PRESUPUESTO ANUAL','PPTO','299','2022-11-19','31','10.4','2022-11-22','4','1.3','2022-12-02','3','7.4','1','0.3','13','4.3','71','23.7');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','DO','REPÚBLICA DOMINICANA','2','LAST BEST ESTIMATE','LBE','156','2022-11-19','31','19.9','2022-11-22','4','2.6','2022-12-02','3','14.1','1','0.6','13','8.3','71','45.5');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','DO','REPÚBLICA DOMINICANA','3','PROYECCIÓN DE CIERRE','PROY','158','2022-11-19','31','19.6','2022-11-22','4','2.5','2022-12-02','3','13.9','1','0.6','13','8.2','71','44.9');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','PE','PERÚ','1','PRESUPUESTO ANUAL','PPTO','35','2022-11-17','0','0','2022-11-24','0','0','2022-11-29','3','0','0','0','0','0','0','0');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','PE','PERÚ','2','LAST BEST ESTIMATE','LBE','35','2022-11-17','0','0','2022-11-24','0','0','2022-11-29','3','0','0','0','0','0','0','0');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','PE','PERÚ','3','PROYECCIÓN DE CIERRE','PROY','36','2022-11-17','0','0','2022-11-24','0','0','2022-11-29','3','0','0','0','0','0','0','0');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','BS','BAHAMAS','1','PRESUPUESTO ANUAL','PPTO','32','2022-11-17','0','0','2022-11-24','0','0','2022-11-29','3','0','0','0','0','0','0','0');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','BS','BAHAMAS','2','LAST BEST ESTIMATE','LBE','33','2022-11-17','0','0','2022-11-24','0','0','2022-11-29','3','0','0','0','0','0','0','0');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','BS','BAHAMAS','3','PROYECCIÓN DE CIERRE','PROY','33','2022-11-17','0','0','2022-11-24','0','0','2022-11-29','3','0','0','0','0','0','0','0');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','BO','BOLIVIA','1','PRESUPUESTO ANUAL','PPTO','8','2022-11-17','9','112.5','2022-11-24','1','12.5','2022-11-29','3','87.5','0','0','4','50','21','262.5');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','BO','BOLIVIA','2','LAST BEST ESTIMATE','LBE','8','2022-11-17','9','112.5','2022-11-24','1','12.5','2022-11-29','3','87.5','0','0','4','50','21','262.5');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','1','PRIVADO','BO','BOLIVIA','3','PROYECCIÓN DE CIERRE','PROY','8','2022-11-17','9','112.5','2022-11-24','1','12.5','2022-11-29','3','87.5','0','0','4','50','21','262.5');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','GT','GUATEMALA','1','PRESUPUESTO ANUAL','PPTO','194','2022-11-17','81','41.8','2022-11-24','11','5.7','2022-11-29','3','29.9','4','2.1','34','17.5','188','96.9');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','GT','GUATEMALA','2','LAST BEST ESTIMATE','LBE','260','2022-11-17','81','31.2','2022-11-24','11','4.2','2022-11-29','3','22.3','4','1.5','34','13.1','188','72.3');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','GT','GUATEMALA','3','PROYECCIÓN DE CIERRE','PROY','264','2022-11-17','81','30.7','2022-11-24','11','4.2','2022-11-29','3','22','4','1.5','34','12.9','188','71.2');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','SV','EL SALVADOR','1','PRESUPUESTO ANUAL','PPTO','25','2022-11-17','9','36','2022-11-24','1','4','2022-11-29','3','28','0','0','4','16','21','84');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','SV','EL SALVADOR','2','LAST BEST ESTIMATE','LBE','25','2022-11-17','9','36','2022-11-24','1','4','2022-11-29','3','28','0','0','4','16','21','84');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','SV','EL SALVADOR','3','PROYECCIÓN DE CIERRE','PROY','25','2022-11-17','9','36','2022-11-24','1','4','2022-11-29','3','28','0','0','4','16','21','84');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','HN','HONDURAS','1','PRESUPUESTO ANUAL','PPTO','77','2022-11-22','32','41.6','2022-11-28','4','5.2','2022-12-02','3','29.9','1','1.3','13','16.9','73','94.8');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','HN','HONDURAS','2','LAST BEST ESTIMATE','LBE','77','2022-11-22','32','41.6','2022-11-28','4','5.2','2022-12-02','3','29.9','1','1.3','13','16.9','73','94.8');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','HN','HONDURAS','3','PROYECCIÓN DE CIERRE','PROY','78','2022-11-22','32','41','2022-11-28','4','5.1','2022-12-02','3','29.5','1','1.3','13','16.7','73','93.6');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','NI','NICARAGUA','1','PRESUPUESTO ANUAL','PPTO','24','2022-11-19','3','12.5','2022-11-22','0','0','2022-11-29','3','8.3','0','0','1','4.2','6','25');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','NI','NICARAGUA','2','LAST BEST ESTIMATE','LBE','21','2022-11-19','3','14.3','2022-11-22','0','0','2022-11-29','3','9.5','0','0','1','4.8','6','28.6');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','NI','NICARAGUA','3','PROYECCIÓN DE CIERRE','PROY','21','2022-11-19','3','14.3','2022-11-22','0','0','2022-11-29','3','9.5','0','0','1','4.8','6','28.6');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','CR','COSTA RICA','1','PRESUPUESTO ANUAL','PPTO','15','2022-11-17','9','60','2022-11-24','1','6.7','2022-11-29','3','46.7','0','0','4','26.7','21','140');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','CR','COSTA RICA','2','LAST BEST ESTIMATE','LBE','6','2022-11-17','9','150','2022-11-24','1','16.7','2022-11-29','3','116.7','0','0','4','66.7','21','350');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','CR','COSTA RICA','3','PROYECCIÓN DE CIERRE','PROY','6','2022-11-17','9','150','2022-11-24','1','16.7','2022-11-29','3','116.7','0','0','4','66.7','21','350');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','PA','PANAMÁ','1','PRESUPUESTO ANUAL','PPTO','82','2022-11-17','41','50','2022-11-24','6','7.3','2022-11-29','3','35.4','2','2.4','17','20.7','95','115.9');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','PA','PANAMÁ','2','LAST BEST ESTIMATE','LBE','82','2022-11-17','41','50','2022-11-24','6','7.3','2022-11-29','3','35.4','2','2.4','17','20.7','95','115.9');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','PA','PANAMÁ','3','PROYECCIÓN DE CIERRE','PROY','83','2022-11-17','41','49.4','2022-11-24','6','7.2','2022-11-29','3','34.9','2','2.4','17','20.5','95','114.5');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','CO','COLOMBIA','1','PRESUPUESTO ANUAL','PPTO','19','2022-11-17','8','42.1','2022-11-24','1','5.3','2022-11-29','3','31.6','0','0','3','15.8','18','94.7');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','CO','COLOMBIA','2','LAST BEST ESTIMATE','LBE','20','2022-11-17','8','40','2022-11-24','1','5','2022-11-29','3','30','0','0','3','15','18','90');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','CO','COLOMBIA','3','PROYECCIÓN DE CIERRE','PROY','20','2022-11-17','8','40','2022-11-24','1','5','2022-11-29','3','30','0','0','3','15','18','90');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','DO','REPÚBLICA DOMINICANA','1','PRESUPUESTO ANUAL','PPTO','10','2022-11-19','1','10','2022-11-22','0','0','2022-12-02','3','10','0','0','0','0','2','20');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','DO','REPÚBLICA DOMINICANA','2','LAST BEST ESTIMATE','LBE','10','2022-11-19','1','10','2022-11-22','0','0','2022-12-02','3','10','0','0','0','0','2','20');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','DO','REPÚBLICA DOMINICANA','3','PROYECCIÓN DE CIERRE','PROY','10','2022-11-19','1','10','2022-11-22','0','0','2022-12-02','3','10','0','0','0','0','2','20');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','BS','BAHAMAS','1','PRESUPUESTO ANUAL','PPTO','4','2022-11-17','0','0','2022-11-24','0','0','2022-11-29','3','0','0','0','0','0','0','0');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','BS','BAHAMAS','2','LAST BEST ESTIMATE','LBE','4','2022-11-17','0','0','2022-11-24','0','0','2022-11-29','3','0','0','0','0','0','0','0');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','2','INSTITUCIONAL','BS','BAHAMAS','3','PROYECCIÓN DE CIERRE','PROY','4','2022-11-17','0','0','2022-11-24','0','0','2022-11-29','3','0','0','0','0','0','0','0');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','3','VETERINARIO','GT','GUATEMALA','1','PRESUPUESTO ANUAL','PPTO','120','2022-11-17','33','27.5','2022-11-24','5','4.2','2022-11-29','3','20','2','1.7','14','11.7','78','65');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','3','VETERINARIO','GT','GUATEMALA','2','LAST BEST ESTIMATE','LBE','120','2022-11-17','33','27.5','2022-11-24','5','4.2','2022-11-29','3','20','2','1.7','14','11.7','78','65');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','3','VETERINARIO','GT','GUATEMALA','3','PROYECCIÓN DE CIERRE','PROY','122','2022-11-17','33','27','2022-11-24','5','4.1','2022-11-29','3','19.7','2','1.6','14','11.5','78','63.9');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','3','VETERINARIO','SV','EL SALVADOR','1','PRESUPUESTO ANUAL','PPTO','22','2022-11-17','6','27.3','2022-11-24','1','4.5','2022-11-29','3','22.7','0','0','3','13.6','15','68.2');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','3','VETERINARIO','SV','EL SALVADOR','2','LAST BEST ESTIMATE','LBE','22','2022-11-17','6','27.3','2022-11-24','1','4.5','2022-11-29','3','22.7','0','0','3','13.6','15','68.2');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','3','VETERINARIO','SV','EL SALVADOR','3','PROYECCIÓN DE CIERRE','PROY','22','2022-11-17','6','27.3','2022-11-24','1','4.5','2022-11-29','3','22.7','0','0','3','13.6','15','68.2');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','3','VETERINARIO','HN','HONDURAS','1','PRESUPUESTO ANUAL','PPTO','33','2022-11-22','17','51.5','2022-11-28','2','6.1','2022-12-02','3','36.4','1','3','7','21.2','39','118.2');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','3','VETERINARIO','HN','HONDURAS','2','LAST BEST ESTIMATE','LBE','33','2022-11-22','17','51.5','2022-11-28','2','6.1','2022-12-02','3','36.4','1','3','7','21.2','39','118.2');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','3','VETERINARIO','HN','HONDURAS','3','PROYECCIÓN DE CIERRE','PROY','33','2022-11-22','17','51.5','2022-11-28','2','6.1','2022-12-02','3','36.4','1','3','7','21.2','39','118.2');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','3','VETERINARIO','NI','NICARAGUA','1','PRESUPUESTO ANUAL','PPTO','35','2022-11-19','15','42.9','2022-11-22','2','5.7','2022-11-29','3','31.4','1','2.9','6','17.1','35','100');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','3','VETERINARIO','NI','NICARAGUA','2','LAST BEST ESTIMATE','LBE','35','2022-11-19','15','42.9','2022-11-22','2','5.7','2022-11-29','3','31.4','1','2.9','6','17.1','35','100');
Insert into B2B.O2I.Informe_Resumen_Pais  Values ('2022-11-01','3','VETERINARIO','NI','NICARAGUA','3','PROYECCIÓN DE CIERRE','PROY','36','2022-11-19','15','41.7','2022-11-22','2','5.6','2022-11-29','3','30.6','1','2.8','6','16.7','35','97.2');