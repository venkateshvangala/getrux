import express from 'express'
import bodyParser from 'body-parser'
import jwt from 'jsonwebtoken'
import authRoute from './controllers/authentication/auth_routes'
import userRoute from './controllers/users/user_routes'
import encryption from './config/auth-config'

const app = express()
app.use(bodyParser.urlencoded({ extended: true }))
app.use(bodyParser.json())

function verifyToken(req, res, next){
  var token = req.headers['x-access-token'];
  if(token){
    jwt.verify(token, encryption.secret, (err, decoded) => {
      if (err) return res.json({ success: false, message: 'Failed to authenticate token.' })
      req.decoded = decoded
      next()
    })
  } else {
    res.removeHeader('x-access-token');
    res.redirect("/auth/signIn")
  }
}

app.get('/', (req, res) => {
  res.json({success: "Welcome To GetRux"})
})

app.listen(9000, (req, res) => {
  console.log("server started at 9000")
})

app.use('/', (req, res, next) => {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "X-Requested-With");
  next();
});

app.use('/api', verifyToken)
app.use('/api/users', userRoute)
app.use('/auth', authRoute)
