const express = require('express');
const controller = require('../controllers/mandals.controller.js');
const router = express.Router();
router.get('/mandals/getall', controller.getAll);
router.get('/mandals/:id', controller.getById);
router.post('/mandals/', controller.create);
router.put('/mandals/:id', controller.updateById);
router.delete('/mandals/:id', controller.deletedById);

//join queries
router.get('/getallmandalswithjoin', controller.getAllWithJoin);

router.get('/getmandalsbyuserid/:id', controller.getMandalsbyUserid);

module.exports = router;
