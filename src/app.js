import bodyParser from 'body-parser'
import express from 'express'
import jwt from 'jsonwebtoken'
import authRoute from './controllers/authentication/auth_routes'
import userRoute from './controllers/users/user_routes'
import encryption from './config/auth-config'

const app = express()

app.use(bodyParser.urlencoded());
app.use(bodyParser.json());

function verifyToken(req, res, next){
  console.log("verify me..")
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
  console.log("use me..")
  res.setHeader("Access-Control-Allow-Origin", "*");
   res.setHeader("Access-Control-Allow-Methods", "POST, GET");
   res.setHeader("Access-Control-Max-Age", "3600");
   res.setHeader("Access-Control-Allow-Headers", "Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
  next();
});

app.use('/api', verifyToken)
app.use('/api/users', userRoute)
app.use('/auth', authRoute)
