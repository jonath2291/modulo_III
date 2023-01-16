const express = require('express');
const apiUsuario = express.Router();
const cliente = require('./pg')
 

// const getUsuario = async() =>{
//     const res = await cliente.query('select * from modulo_III.tusuario;');
//     console.log(res);
//     res.rows
// }

const getUsuario = (_request, response) => {
    cliente.query('select * from modulo_III.tusuario;', (error, results) => {
      if (error) {
        throw error
      }
      response.status(200).json({
        status: "sucess",
        requestTime: _request.requestTime,
        data: results.rows})
    })
  }

// 
const postUsuario = (req, res) =>{
    const {nombre_usuario, edad, email} = req.body; 
    cliente.query('insert into modulo_III.tusuario (nombre_usuario, edad, email) values ($1,$2,$3);',[nombre_usuario, edad, email],(error,results)=>{
        if (error) {
            throw error;
           }
          res.status(201).send(`New user added`);
    })
}

const apiStatus = (req, res ) =>{
        res.status(200).json({
            nameSystem: "api-users", 
            version: "0.0.1", 
            developer: "Jonathan Figueroa Peñarrieta", 
            email: "jonath2291@gmail.com"
        })
}

const edadPromedio = (req, res) =>{
    cliente.query("select avg(u.edad) from modulo_iii.tusuario u;",(error, results)=>{
        if(error){
            throw error;
        }
        res.status(200).json({
            status:"sucess",
            requestTime:req.requestTime,
            data: results.rows
        })
    })
}





apiUsuario.route("/getAllUsers").get(getUsuario)
apiUsuario.route("/apiStatus").get(apiStatus)
apiUsuario.route("/getAvgAge").get(edadPromedio)
apiUsuario.route("/newUser").post(postUsuario)
            
            



module.exports = apiUsuario
