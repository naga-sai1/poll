const express = require('express');
const controller = require('../controllers/users.controller.js');
const router = express.Router();
router.get('/users/getall', controller.getAll);
router.get('/users/:id', controller.getById);
router.post('/users/', controller.create);
router.post('/users-login/', controller.login);
router.put('/users/:id', controller.updateById);
router.delete('/users/:id', controller.deletedById);

//join queries
router.get('/getalluserswithjoin', controller.getAllWithJoin);
router.post('/getalluserswithjoinandwhere', controller.getAllWithJoinAndWhere);
router.post('/getallbellowuser', controller.getBellowUserByDesignation);

router.post('/updateuserpassword', controller.updateUserPassword);

module.exports = router;
