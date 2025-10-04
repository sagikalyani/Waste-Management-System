const express = require('express');
const mysql = require('mysql');
const app = express();

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'yourUsername',
  password: 'yourPassword',
  database: 'yourDatabase'
});

connection.connect();

app.get('/data', (req, res) => {
  connection.query('SELECT * FROM yourTable', (error, results) => {
    if (error) throw error;
    res.json(results);
  });
});

app.listen(3000, () => {
  console.log('Server is running on port 3000');
});
