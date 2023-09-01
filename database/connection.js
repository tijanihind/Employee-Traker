// get the client
const mysql = require('mysql2');

// create the connection to database
const con = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password:"hi123456",
  database:"employee_management"
});

module.exports = con