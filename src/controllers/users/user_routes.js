import router from '../../config/route-config'
import connection from '../../config/db-config'

router.get('/fetchAll', (req, res) => {
  connection.query('SELECT * FROM users', (err, users) => {
    if(err) throw err;
    res.json({users: users})
  });
})

module.exports = router
