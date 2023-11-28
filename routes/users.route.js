const express = require("express");
const controller = require("../controllers/users.controller.js");
const router = express.Router();
router.get("/users/getall", controller.getAll);
router.get("/users/:id", controller.getById);
router.post("/users/", controller.create);
router.put("/users/:id", controller.updateById);
router.delete("/users/:id", controller.deletedById);

module.exports = router;