import express from 'express'
import bodyParser from 'body-parser'

import userRoute from './controllers/users/user_routes'

const app = express()
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.get('/', (req, res) => {
  res.json({success: "Welcome To GetRux"})
})

app.listen(9000, (req, res) => {
  console.log("server started at 9000")
})

app.use('/users', userRoute)
