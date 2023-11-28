const connectToDatabase = require("../misc/db");

//create a user
async function create(req, res) {
    try {
        // Create the user using the Sequelize model
        const { Users } = await connectToDatabase();

        const data = await Users.create(req.body);
        return res.status(200).json({message: data });
    }catch(e) {
        return res.status(500).json({ error: e.message });
    }
}

//get all users
async function getAll(req, res) {
    try {
        // Retrieve all users using the Sequelize model
        const {Users} = await connectToDatabase();

        const data = await Users.findAll();
        return res.status(200).json({message : data});
    }catch(e) {
        return res.status(500).json({ error: e.message});
    }
}

//get a single user
async function getById(req, res) {
    try {
        // Retrieve the user using the Sequelize model and the ID from req.params.id
        const {Users} = await connectToDatabase();

        const data = await Users.findByPk(req.params.id);
        if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
        return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
}

// Update a users
async function updateById(req, res) {
    try {
      const { Users } = await connectToDatabase();
      // Update the users using the Sequelize model
      const data = await Users.findByPk(req.params.id);
      if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
       // Update users properties
      if (req.body.title) data.title = req.body.title;
      if (req.body.description) data.description = req.body.description;
      await data.save();
      return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
  }
  

  //delete a users
  async function deletedById(req, res) {
    try {
      const { Users } = await connectToDatabase();
      const data = await Users.findByPk(req.params.id);
      if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
      await data.destroy();
      return res.status(200).json({ message: data });
    } catch (err) {
      return res.status(500).json({ error: err.message });
    }
  }
  
  module.exports = {
    getById,
    getAll,
    create,
    updateById,
    deletedById,
  };