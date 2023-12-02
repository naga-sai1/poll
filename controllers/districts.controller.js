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
      if (req.body.state_id) data.state_id = req.body.state_id;
      if (req.body.district_name) data.district_name = req.body.district_name;
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

        //joins
async function getAllWithJoin(req, res) {
  try {
    const { sequelize } = await connectToDatabase();

    const query = `
		SELECT *
		FROM districts d

    left join states s on
    d.state_id = s.state_pk
    
		;`;

    const data = await sequelize.query(query, { type: sequelize.QueryTypes.SELECT });

    return res.status(200).json({ message: data });
  } catch (e) {
    return res.status(500).json({ error: e.message });
  }
}

  
  module.exports = {
    getById,
    getAll,
    create,
    updateById,
    deletedById,
    getAllWithJoin,
  };