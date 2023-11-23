const express = require("express");
const controller = require("../controllers/note.controller.js");
const router = express.Router();
router.get("/note/getall", controller.getAll);
router.get("/note/:id", controller.getById);
router.post("/note/", controller.create);
router.put("/note/:id", controller.updateById);
router.delete("/note/:id", controller.deletedById);

module.exports = router;
