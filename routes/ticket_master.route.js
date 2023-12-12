const express = require('express');
const controller = require('../controllers/ticket_master.controller.js');
const router = express.Router();
router.post('/ticket_master/getall', controller.getAll);
router.get('/ticket_master/:id', controller.getById);
router.post('/ticket_master/', controller.create);
router.put('/ticket_master/:id', controller.updateById);
router.delete('/ticket_master/:id', controller.deletedById);

//join queries
router.get('/getallticketmasterwithjoin', controller.getAllWithJoin);
router.put('/updateticketstatus/', controller.updateTicketStatus);

router.post('/getallticketswithjoinandwhere', controller.getAllWithJoinAndWhere);

module.exports = router;
