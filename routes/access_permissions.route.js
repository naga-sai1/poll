const express = require("express");
const controller = require("../controllers/access_permissions.controller.js");
const router = express.Router();
router.get("/access_permision/getall", controller.getAll);
router.get("/access_permision/:id", controller.getById);
router.post("/access_permision/", controller.create);
router.put("/access_permision/:id", controller.updateById);
router.delete("/access_permision/:id", controller.deletedById);

module.exports = router;
