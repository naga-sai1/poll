const express = require("express");
const controller = require("../controllers/constituencies.controller.js");
const router = express.Router();
router.get("/constituencies/getall", controller.getAll);
router.get("/constituencies/:id", controller.getById);
router.post("/constituencies/", controller.create);
router.put("/constituencies/:id", controller.updateById);
router.delete("/constituencies/:id", controller.deletedById);

module.exports = router;