const connectToDatabase = require("../misc/db");

//create a villages
async function create(req, res) {
    try {
        // Create the villages using the Sequelize model
        const { Villages } = await connectToDatabase();

        const data = await Villages.create(req.body);
        return res.status(200).json({message: data });
    }catch(e) {
        return res.status(500).json({ error: e.message });
    }
}

//get all villages
async function getAll(req, res) {
    try {
        // Retrieve all villages using the Sequelize model
        const {Villages} = await connectToDatabase();

        const data = await Villages.findAll();
        return res.status(200).json({message : data});
    }catch(e) {
        return res.status(500).json({ error: e.message});
    }
}

//get a single village
async function getById(req, res) {
    try {
        // Retrieve the village using the Sequelize model and the ID from req.params.id
        const {Villages} = await connectToDatabase();

        const data = await Villages.findByPk(req.params.id);
        if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
        return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
}

// Update a villages
async function updateById(req, res) {
    try {
      const { Villages } = await connectToDatabase();
      // Update the villages using the Sequelize model
      const data = await Villages.findByPk(req.params.id);
      if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
       // Update villages properties
      if (req.body.title) data.title = req.body.title;
      if (req.body.description) data.description = req.body.description;
      await data.save();
      return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
  }
  

  //delete a villages
  async function deletedById(req, res) {
    try {
      const { Villages } = await connectToDatabase();
      const data = await Villages.findByPk(req.params.id);
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
  