const express = require("express");
const controller = require("../controllers/sachivalayam.controller.js");
const router = express.Router();
router.get("/sachivalayam/getall", controller.getAll);
router.get("/sachivalayam/:id", controller.getById);
router.get("/sachivalayam-get-by-id/:id", controller.getAllById);
router.post("/sachivalayam/", controller.create);
router.put("/sachivalayam/:id", controller.updateById);
router.delete("/sachivalayam/:id", controller.deletedById);

module.exports = router;