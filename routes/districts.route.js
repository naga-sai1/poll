const express = require('express');
const controller = require('../controllers/districts.controller.js');
const router = express.Router();
router.get('/districts/getall', controller.getAll);
router.get('/districts/:id', controller.getById);
router.post('/districts/', controller.create);
router.put('/districts/:id', controller.updateById);
router.delete('/districts/:id', controller.deletedById);

//join queries
router.get('/getalldistrictswithjoin', controller.getAllWithJoin);

router.get('/getdistrictsbystateid/:id', controller.getDisctrictsByStateId);

module.exports = router;
