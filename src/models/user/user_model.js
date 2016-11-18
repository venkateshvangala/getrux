import connection from '../../config/db-config'
import * as userModel from '../../models/user/user_model'

export function findByEmail(email, done) {
  connection.query('select distinct * from users where email = ? order by id limit 1', email, function (err, user) {
    if (err) return done(new Error(err))
    done(user.length ? user[0]: null)
  })
}
