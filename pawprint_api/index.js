const express = require('express')
const { config } = require('./config/index')
const app = express()
const morgan = require('morgan');
const cors = require('cors')
const http = require("http").Server(app);
const so = require('os');
const mysql = require('./config/db')


//middlewares
app.use(cors())
app.use(morgan('dev'))
app.use(express.json()) // for parsing application/json
app.use(express.urlencoded({ extended: true })) // for parsing application/x-www-form-urlencoded

//Routes
app.get('/pawprints', function (req, res) { 
  mysql.query("Select * from pawprint", function (err, result) {  
    if (err) {
      res.status(500).json({
        error: err,
        status : 500
      });
    } else {
      res.status(200).json({
        body: result,
        status : 200
      });
    }
  });
})

app.get('/pawprints/:id', function (req, res) { 
  const { id } = req.params;
  let sql = 'CALL detalleHuella(?)';
  mysql.query(sql, id, function (err, result) {  
    let pawprint = result[0];
    res.status(200).json(pawprint);
  });
})

app.get('/pawprints/compare/:id', function (req, res) { 
  const { id } = req.params;
  let sql = 'CALL validatepawPrint(?)';
  mysql.query(sql, id, function (err, result) {  
    if (err) {
      res.status(500).json({
        error: err,
        status : 500
      });
    } else {
      const ok = [];
      for (let index = 0; index < result.length; index++) {
        const e = result[index];
        if (e.password !== e.password2) {
          ok.push(e);
        }
      }
      res.status(200).json({
        body: ok,
        status : 200
      });
    }
  });
})

app.post('/pawprints/create', function (req, res) { 
  const { name ,version } = req.body;
  let sql = 'CALL generatedPawPrintF(?, ?)';
  mysql.query(sql, [name, version], function (err, result) {  
    if (err) {
      res.status(500).json({
        error: err,
        status : 500
      });
    } else {
      res.status(201).json({
        body:result,
        status : 201
      });
    }
  });
})

app.post('/pawprints/compare', function (req, res) { 
  const { id1 ,id2 } = req.body;
  let sql = 'CALL comparar(?, ?)';
  mysql.query(sql, [id1, id2], function (err, result) {  
    if (err) {
      res.status(500).json({
        error: err,
        status : 500
      });
    } else {
      const chaged = [];
      for (let i = 0; i < result[0].length; i++) {
        const e = result[0][i];
        for (let j = 0; j < result[1].length; j++) {
          const f = result[1][j];
          if (e.item == f.item) {
            if (e.password != f.password) {
              chaged.push({e, f});
            }
          }
        }
      }
      res.status(201).json({
        body:chaged,
        status : 201
      });
    }
  });
})





http.listen(config.port, () => {
    host = so.networkInterfaces();

    Object.keys(host).forEach(function (ifname) {
        var alias = 0;
      
        host[ifname].forEach(function (iface) {
          if ('IPv4' !== iface.family || iface.internal !== false) {
            return;
          }
      
          if (alias >= 1) {
            console.log(`App listening on ${iface.address} with port ${config.port}!`)
          } else {
            console.log(`App listening on ${iface.address} with port ${config.port}!`)
          }
          ++alias;
        });
      }
    );
    
})