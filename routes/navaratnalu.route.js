const express = require("express");
const controller = require("../controllers/navaratnalu.controller.js");
const router = express.Router();
router.get("/navaratnalu/getall", controller.getAll);
router.get("/mandals/:id", controller.getById);
router.post("/mandals/", controller.create);
router.put("/mandals/:id", controller.updateById);
router.delete("/mandals/:id", controller.deletedById);

module.exports = router;