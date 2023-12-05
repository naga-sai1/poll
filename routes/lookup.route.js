const express = require("express");
const controller = require("../controllers/lookup.controller.js");
const router = express.Router();
router.get("/lookup/getall", controller.getAll);
router.get("/lookup/getallReligion", controller.getAllReligion);
router.get("/lookup/getAllCastes", controller.getAllCastes);
router.get("/lookup/:id", controller.getById);
router.post("/lookup/", controller.create);
router.put("/lookup/:id", controller.updateById);
router.delete("/lookup/:id", controller.deletedById);

module.exports = router;