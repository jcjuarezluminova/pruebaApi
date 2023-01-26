const  config = {
  user:  'sa', // sql user
  password:  'Seguridad2022!', //sql user password
  server:  '178.62.234.17', // if it does not work try- localhost
  database:  'B2B',
  options: {
    trustedconnection:  true,
    encrypt: false
  },
  port:  1433
}

module.exports = config;