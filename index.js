/**
 * 1)Instalamos el express
 * 2) npm init donde nombramos los parametros
 * 3) instalamos el nodemoon si no esta instalado de forma global
 * 4) instalamos el dotenv
 * 5) configuramos el script "dev"
 */
const express = require('express');
const app = express();
const cors = require('cors')
const apiUsuario = require('./usuario')

app.use(express.json()); 

app.use(cors())

app.use('/api/usuario', apiUsuario)



app.listen(process.env.PORT, () => {
    console.log(`App running on port ${process.env.PORT}`);
});


