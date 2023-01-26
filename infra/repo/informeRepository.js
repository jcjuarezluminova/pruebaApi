const  config = require('../../dbconfig');
const  sql = require('mssql');
const helpers = require('../../helpers.js');

var informeRepository = {
    getSummary: async (body) => {
        try {
            let  pool = await  sql.connect(config);
            //Crear la Query Metas
            var conditional = helpers.createWhere(body);
            let  QueryMetas = await  pool.request().input('Conditional', conditional).execute(`sp_objetivos`);
            
            //Obtener Las  Metas
            var Metas= helpers.CreateMeta(QueryMetas.recordsets[0]);

            //Crear la Query Filas
            let  QueryFilas = await  pool.request().input('Conditional', conditional).execute(`sp_filas`);

            //Crear Objeto
            var Objeto=helpers.CreateObject(Metas, (QueryFilas.recordsets[0][0]));
            return  Objeto;
            
        }
        catch(err){
            console.log(err)
            return false;
        }
    },
    getRegion: async () => {
        try {
            let  pool = await  sql.connect(config);
            let  dataInforme = await  pool.request()
            .execute(`sp_llena_regiones`);
            return  dataInforme.recordsets;
        }
        catch(err){
            console.log(err)
            return false;
        }
    },
    getCountry: async (codRegion) => {
        try {
            let  pool = await  sql.connect(config);
            let  dataInforme = await  pool.request()
            .input('Cod_Region', codRegion)
            .execute(`sp_llena_paises`);
            return  dataInforme.recordsets;
        }
        catch(err){
            console.log(err)
            return false;
        }
    },
    getDivisiones: async () => {
        try {
            let  pool = await  sql.connect(config);
            let  dataInforme = await  pool.request()
            .execute(`sp_llena_divisiones`);
            return  dataInforme.recordsets;
        }
        catch(err){
            console.log(err)
            return false;
        }
    },
    getCasasMedicas: async ()=> {
        try {
            let  pool = await  sql.connect(config);
            let  dataInforme = await  pool.request()
            .execute(`sp_llena_casas_medicas`);
            return  dataInforme.recordsets;
        }
        catch(err){
            console.log(err)
            return false;
        }
    },
    getTipoCasaMedica: async ()=> {
        try {
            let  pool = await  sql.connect(config);
            let  dataInforme = await  pool.request()
            .execute(`sp_llena_tipo_casa_medica`);
            return  dataInforme.recordsets;
        }
        catch(err){
            console.log(err)
            return false;
        }
    },
    getCountryPercent: async (codRegion) => {
        try {
            let  pool = await  sql.connect(config);
            let  dataInforme = await  pool.request()
            .input('Cod_Region', codRegion)
            .execute(`sp_llena_porcentaje_pais`);
            return  dataInforme.recordsets;
        }
        catch(err){
            console.log(err)
            return false;
        }
    },
    getSummaryCountryByCode: async (codPais) => {
        try {
            let  pool = await  sql.connect(config);
            let  dataInforme = await  pool.request()
            .input('Cod_Pais', codPais)
            .execute(`sp_llena_summary_pais`);
            return  dataInforme.recordsets;
        }
        catch(err){
            console.log(err)
            return false;
        }
    },
    getTotalCountryByCode: async (codPais) => {
        try {
            let  pool = await  sql.connect(config);
            let  dataInforme = await  pool.request()
            .input('Cod_Pais', codPais)
            .execute(`sp_llena_total_pais`);
            return  dataInforme.recordsets;
        }
        catch(err){
            console.log(err)
            return false;
        }
    }
}

module.exports = {
    informeRepository
  }