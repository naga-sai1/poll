const express = require("express");
const controller = require("../controllers/lookup.controller.js");
const router = express.Router();
router.get("/lookup/getall", controller.getAll);
router.get("/lookup/:id", controller.getById);
router.post("/lookup/", controller.create);
router.put("/lookup/:id", controller.updateById);
router.delete("/lookup/:id", controller.deletedById);

router.get("/getAllReligion", controller.getAllReligion);
router.get("/getAllCastes", controller.getAllCastes);
router.get("/getalldesignations", controller.getAllDesignations);


module.exports = router;