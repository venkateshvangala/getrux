import connection from '../../config/db-config'
import * as userModel from '../../models/user/user_model'

export function findByMobile(mobile, done) {
  connection.query('select distinct * from users where mobile = ? order by id limit 1', mobile, function (err, user) {
    if (err) return done(null)
    done(user.length ? user[0]: null)
  })
}
