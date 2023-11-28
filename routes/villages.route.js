const express = require("express");
const controller = require("../controllers/villages.controller.js");
const router = express.Router();
router.get("/villages/getall", controller.getAll);
router.get("/villages/:id", controller.getById);
router.post("/villages/", controller.create);
router.put("/villages/:id", controller.updateById);
router.delete("/villages/:id", controller.deletedById);

module.exports = router;