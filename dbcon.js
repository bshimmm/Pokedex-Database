var mysql = require('mysql');
var pool = mysql.createPool({
  connectionLimit : 10,
  host            : 'classmysql.engr.oregonstate.edu',
  user            : 'cs340_nguyenj6',
  password        : '2719',
  database        : 'cs340_nguyenj6'
});
module.exports.pool = pool;