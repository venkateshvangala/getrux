import jwt from 'jsonwebtoken'
import router from '../../config/route-config'
import * as UserModel from '../../models/user/user_model'
import encryption from '../../config/auth-config'

function createToken(user){
  return jwt.sign(user, encryption.secret, {
    expiresIn : 60*60*24
  });
}

router.post('/signIn', (req, res) => {
  let mobile = req.body.mobile
  let password = req.body.password
  UserModel.findByMobile(mobile, (user) => {
    if(!user){
      res.json({ success: false, message: 'Authentication failed. User not found.' });
    } else if(user){
      if (user.password != password) {
       res.json({ success: false, message: 'Authentication failed. Wrong password.' });
      } else {
        let token = createToken(user)
        res.json({userId: user.id, token});
      }
    }
  })
})

router.get('/signUp', (req, res) => {
  res.json({success: "Sign Up"})
})

router.get('/signOut', (req, res) => {
  res.json({success: "Logout"})
})

module.exports = router
