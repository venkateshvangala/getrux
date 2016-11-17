import express from 'express'
import connection from './config/db-config'

const app = express()

app.listen(9000, () => {
  console.log("server started at 9000")
  connection.query("select * from penguins" , (err, rows) => {
    console.log(rows[1].id+ "..." + rows[1].myval)
  })
})
