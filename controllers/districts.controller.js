const connectToDatabase = require("../misc/db");

//create a district
async function create(req, res) {
    try {
        // Create the district using the Sequelize model
        const { Districts } = await connectToDatabase();

        const data = await Districts.create(req.body);
        return res.status(200).json({message: data });
    }catch(e) {
        return res.status(500).json({ error: e.message });
    }
}

//get all districts
async function getAll(req, res) {
    try {
        // Retrieve all districts using the Sequelize model
        const {Districts} = await connectToDatabase();

        const data = await Districts.findAll();
        return res.status(200).json({message : data});
    }catch(e) {
        return res.status(500).json({ error: e.message});
    }
}

//get a single district
async function getById(req, res) {
    try {
        // Retrieve the district using the Sequelize model and the ID from req.params.id
        const {Districts} = await connectToDatabase();

        const data = await Districts.findByPk(req.params.id);
        if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
        return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
}

// Update a district
async function updateById(req, res) {
    try {
      const { Districts } = await connectToDatabase();
      // Update the district using the Sequelize model
      const data = await Districts.findByPk(req.params.id);
      if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
       // Update district properties
      if (req.body.title) data.title = req.body.title;
      if (req.body.description) data.description = req.body.description;
      await data.save();
      return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
  }
  

  //delete a district
  async function deletedById(req, res) {
    try {
      const { Districts } = await connectToDatabase();
      const data = await Districts.findByPk(req.params.id);
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