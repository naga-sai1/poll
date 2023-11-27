const express = require("express");
const controller = require("../controllers/parts.controller.js");
const router = express.Router();
router.get("/parts/getall", controller.getAll);
router.get("/parts/:id", controller.getById);
router.post("/parts/", controller.create);
router.put("/parts/:id", controller.updateById);
router.delete("/parts/:id", controller.deletedById);

module.exports = router;