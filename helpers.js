const createConditional = (body) => {
    let conditional = ''
    if(body.countries !== undefined ){
        if(body.countries.join("','") !== ''){
            conditional += (conditional!=='') ? ' and ' : 'where ';
            conditional += ` Desc_Corta_Pais in ('${body.countries.join("','")}')`
        }
    }
    if(body.region!== undefined){
        if(body.region.join("','") !== ''){
            conditional += (conditional!=='') ? ' and ' : 'where ';
            conditional += ` Desc_Corta_Region in ('${body.region.join("','")}')`
        }
    }
    if(body.division !== undefined){
        if(body.division.join("','") !== ''){
            conditional += (conditional!=='') ? ' and ' : 'where ';
            conditional += ` Cod_Division in ('${body.division.join("','")}')`
        }
    }
    if(body.casaMedica !== undefined){
        if(body.casaMedica.join("','") !== ''){
            conditional += (conditional!=='') ? ' and ' : 'where ';
            conditional += ` Cod_Casa_Medica in ('${body.casaMedica.join("','")}')`
        }
    }

    if(body.tipo !== undefined){
        if(body.tipo.join("','") !== ''){
            conditional += (conditional!=='') ? ' and ' : 'where ';
            conditional += ` Tipo_Casa_Medica in ('${body.tipo.join("','")}')`
        }
    }
    return conditional
}



const createWhere = (body) => {
    let conditional = ''
    if(body.countries !== undefined ){
        if(body.countries.join("','") !== ''){
            conditional += (conditional!=='') ? ' and ' : 'where ';
            conditional += ` Cod_Pais in ('${body.countries.join("','")}')`
        }
    }
    if(body.region!== undefined){
        if(body.region.join("','") !== ''){
            conditional += (conditional!=='') ? ' and ' : 'where ';
            conditional += ` Cod_Region in ('${body.region.join("','")}')`
        }
    }
    if(body.division !== undefined){
        if(body.division.join("','") !== ''){
            conditional += (conditional!=='') ? ' and ' : 'where ';
            conditional += ` Cod_Division in ('${body.division.join("','")}')`
        }
    }
    if(body.casaMedica !== undefined){
        if(body.casaMedica.join("','") !== ''){
            conditional += (conditional!=='') ? ' and ' : 'where ';
            conditional += ` Cod_Casa_Medica in ('${body.casaMedica.join("','")}')`
        }
    }

    if(body.tipo !== undefined){
        if(body.tipo.join("','") !== ''){
            conditional += (conditional!=='') ? ' and ' : 'where ';
            conditional += ` Tipo_Casa_Medica in ('${body.tipo.join("','")}')`
        }
    }
    return conditional
}

const CreateMeta = (ListMetas) => {
    var Metas = [
        { id: 'PPTO', value: 0},
        { id: 'LBE', value: 0},
        { id: 'PROY', value: 0}
      ];
      ListMetas.filter(function(metaBD){
        Metas.filter(function(metaReal){
            metaReal.value=metaReal.id==metaBD['Cod_Meta'] ? metaBD['vm']: metaReal.value
          });
      });
    return Metas
}

const FormatNumber=(quantity, currency = true)=>{
    const numberFormatter = Intl.NumberFormat('en-US');
    if (currency){
        return '$ '.concat(numberFormatter.format(quantity))
    }
    return ''.concat(numberFormatter.format(quantity*100), ' %')
}

const HedersTable=( Claves,Metas, Valores)=>{
    var objeto=[]
    objeto.push(['', '', FormatNumber(Valores['vpr'], true), FormatNumber(Valores['vac'], true)]);
    Metas.filter(function(Meta){  
        var fila=[Meta.id, FormatNumber(Meta.value)]
        Claves.filter(function(Clave){ 
            Meta.value = Meta.value==0 ? 1: Meta.value
            fila.push(FormatNumber((Valores[Clave]/Meta.value), false));
        });
        objeto.push(fila);
    });
    return objeto;
}

const SerializeObject =(Claves, Divisor, Valores)=>{
    var objeto=[], fila1=[], fila2=[]
    Claves.filter(function(Clave){ 
        fila1.push(FormatNumber(Valores[Clave], true))
        if(Valores[Divisor]==0){
            fila2.push(FormatNumber(0, false));
        }else{
            fila2.push(FormatNumber(Valores[Clave]/Valores[Divisor], false))    
        }
    });
    objeto.push(fila1, fila2);
    return objeto;
}

const CreateObject =(Metas, Valores)=>{
    var objeto1=HedersTable(['vpr', 'vac'], Metas, Valores);
    var objeto2=SerializeObject(['vf', 'vep'], 'vac', Valores);
    var objeto3=SerializeObject(['vrp', 'va', 'vfi', 'vt', 'vfc'], 'vac', Valores);
    return [objeto1, objeto2, objeto3];
}

module.exports = {createConditional, createWhere, CreateMeta, CreateObject}