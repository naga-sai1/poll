const express = require('express');
const controller = require('../controllers/ticket_history.controller.js');
const router = express.Router();
router.post('/gettickethistory', controller.getAll);
router.post('/ticket_history/', controller.create);
router.post('/save_or_updated_ticket_history', controller.save_or_updated_ticket);

//join queries
router.get('/getalltickethistorywithjoin', controller.getAllWithJoin);
router.post('/getonetickethistory', controller.getOneTicket);

module.exports = router;