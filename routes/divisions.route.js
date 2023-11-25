const express = require("express");
const controller = require("../controllers/divisions.controller.js");
const router = express.Router();
router.get("/divisions/getall", controller.getAll);
router.get("/divisions/:id", controller.getById);
router.post("/divisions/", controller.create);
router.put("/divisions/:id", controller.updateById);
router.delete("/divisions/:id", controller.deletedById);

module.exports = router;