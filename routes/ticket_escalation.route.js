const express = require("express");
const controller = require("../controllers/ticket_escalation.controller.js");
const router = express.Router();
router.get("/ticket_escalation/getall", controller.getAll);
router.get("/ticket_escalation/:id", controller.getById);
router.post("/ticket_escalation/", controller.create);
router.put("/ticket_escalation/:id", controller.updateById);
router.delete("/ticket_escalation/:id", controller.deletedById);

module.exports = router;