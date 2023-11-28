const express = require("express");
const controller = require("../controllers/ticket_master.controller.js");
const router = express.Router();
router.get("/ticket_master/getall", controller.getAll);
router.get("/ticket_master/:id", controller.getById);
router.post("/ticket_master/", controller.create);
router.put("/ticket_master/:id", controller.updateById);
router.delete("/ticket_master/:id", controller.deletedById);

module.exports = router;