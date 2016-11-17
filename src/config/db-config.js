import mysql from 'mysql'

const pool = mysql.createPool({
  host     : '127.0.0.1',
  user     : 'root',
  password : 'root',
  database : 'getrux'
})

export default pool
