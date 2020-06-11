var mysql     = require('mysql');
const { config }  = require('./index');

var connection = mysql.createConnection({
  host     :  config.dbHost,
  user     :  config.dbUser,
  password :  config.dbPassword,
  database :  config.dbName
});

connection.connect(function(err) {
    if (err) throw err;
});

module.exports = connection;