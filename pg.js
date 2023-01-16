// const pg = require('pg')
// // const config = require('./pg')


// const config = {
//     user: process.env.USER_DB,
//     database: process.env.DB,
//     password: process.env.PASSWORD_DB,
//     host: 'localhost',
//     port: 5432,
//     idleTimeoutMillis: 30000
//   }

//const cliente = new pg.Pool(config)

  const Pool = require('pg').Pool

  const pool = new Pool({
     user: process.env.USER_DB,
     database: process.env.DB,
     password: process.env.PASSWORD_DB,
     host: 'localhost',
     port: 5432,
  })


module.exports = pool;