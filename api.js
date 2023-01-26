var  Db = require('./infra/repo/informeRepository');
var  express = require('express');
var  bodyParser = require('body-parser');
var  cors = require('cors');
var  app = express();
var  router = express.Router();

app.use(bodyParser.urlencoded({ extended:  true }));
app.use(bodyParser.json());
app.use(cors());
app.use('/api', router);

router.use((request, response, next) => {
    next();
  });

router.route('/informe/').post((request, response) => {
    let  body = { ...request.body }
    Db.informeRepository.getSummary(body).then((data) => {
      return response.json(data);
    })
})
router.route('/regiones/').get((request, response) => {
  Db.informeRepository.getRegion().then((data) => {
    return response.json(data[0]);
  })
})
router.route('/paises/:codRegion').get((request, response) => {
  const codRegion = request.params.codRegion;
  Db.informeRepository.getCountry(codRegion).then((data) => {
    return response.json(data[0]);
  })
}),
router.route('/divisiones/').get((request, response) => {
  Db.informeRepository.getDivisiones().then((data) => {
    return response.json(data[0]);
  })
})
router.route('/casas-medicas/').get((request, response) => {
  Db.informeRepository.getCasasMedicas().then((data) => {
    return response.json(data[0]);
  })
})
router.route('/tipo-casas/').get((request, response) => {
  Db.informeRepository.getTipoCasaMedica().then((data) => {
    return response.json(data[0]);
  })
})
router.route('/presupuesto-paises/:codRegion').get((request, response) => {
  const codRegion = request.params.codRegion;
  Db.informeRepository.getCountryPercent(codRegion).then((data) => {
    return response.json(data[0]);
  })
})
router.route('/resumen-pais/:codPais').get((request, response) => {
  const codPais = request.params.codPais;
  Db.informeRepository.getSummaryCountryByCode(codPais).then((data) => {
    return response.json(data[0]);
  })
})
router.route('/total-pais/:codPais').get((request, response) => {
  const codPais = request.params.codPais;
  Db.informeRepository.getTotalCountryByCode(codPais).then((data) => {
    return response.json(data[0]);
  })
})

var  port = process.env.PORT || 8090;
app.listen(port);
console.log('API esta ejecutandose en el puerto ' + port);
