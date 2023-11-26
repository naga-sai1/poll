const connectToDatabase = require("../misc/db");

//create a lookup
async function create(req, res) {
    try {
        // Create the lookup using the Sequelize model
        const { Lookup } = await connectToDatabase();

        const data = await Lookup.create(req.body);
        return res.status(200).json({message: data });
    }catch(e) {
        return res.status(500).json({ error: e.message });
    }
}

//get all lookup
async function getAll(req, res) {
    try {
        // Retrieve all lookup using the Sequelize model
        const {Lookup} = await connectToDatabase();

        const data = await Lookup.findAll();
        return res.status(200).json({message : data});
    }catch(e) {
        return res.status(500).json({ error: e.message});
    }
}

//get a single lookup
async function getById(req, res) {
    try {
        // Retrieve the lookup using the Sequelize model and the ID from req.params.id
        const {Lookup} = await connectToDatabase();

        const data = await Lookup.findByPk(req.params.id);
        if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
        return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
}

// Update a lookup
async function updateById(req, res) {
    try {
      const { Lookup } = await connectToDatabase();
      // Update the lookup using the Sequelize model
      const data = await Lookup.findByPk(req.params.id);
      if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
       // Update lookup properties
      if (req.body.title) data.title = req.body.title;
      if (req.body.description) data.description = req.body.description;
      await data.save();
      return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
  }
  

  //delete a lookup
  async function deletedById(req, res) {
    try {
      const { Lookup } = await connectToDatabase();
      const data = await Lookup.findByPk(req.params.id);
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