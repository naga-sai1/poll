const connectToDatabase = require("../misc/db");

//create a voters
async function create(req, res) {
    try {
        // Create the voters using the Sequelize model
        const { Voters } = await connectToDatabase();

        const data = await Voters.create(req.body);
        return res.status(200).json({message: data });
    }catch(e) {
        return res.status(500).json({ error: e.message });
    }
}

//get all voters
async function getAll(req, res) {
 
    try {
        // Retrieve all voters using the Sequelize model
        const {Voters} = await connectToDatabase();
        console.log("all voters");

        const data = await Voters.findAll();
        return res.status(200).json({message : data});
    }catch(e) {
        return res.status(500).json({ error: e.message});
    }
}

//get a single voters
async function getById(req, res) {
    try {
        // Retrieve the voters using the Sequelize model and the ID from req.params.id
        const {Voters} = await connectToDatabase();

        const data = await Voters.findByPk(req.params.id);
        if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
        return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
}

// Update a voters
async function updateById(req, res) {
    try {
      const { Voters } = await connectToDatabase();
      // Update the voters using the Sequelize model
      const data = await Voters.findByPk(req.params.id);
      if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
       // Update voters properties
      if (req.body.title) data.title = req.body.title;
      if (req.body.description) data.description = req.body.description;
      await data.save();
      return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
  }
  

  //delete a voters
  async function deletedById(req, res) {
    try {
      const { Voters } = await connectToDatabase();
      const data = await Voters.findByPk(req.params.id);
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