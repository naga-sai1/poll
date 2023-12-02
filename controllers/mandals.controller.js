const connectToDatabase = require("../misc/db");

//create a mandals
async function create(req, res) {
    try {
        // Create the mandals using the Sequelize model
        const { Mandals } = await connectToDatabase();

        const data = await Mandals.create(req.body);
        return res.status(200).json({message: data });
    }catch(e) {
        return res.status(500).json({ error: e.message });
    }
}

//get all mandals
async function getAll(req, res) {
    try {
        // Retrieve all mandals using the Sequelize model
        const {Mandals} = await connectToDatabase();

        const data = await Mandals.findAll();
        return res.status(200).json({message : data});
    }catch(e) {
        return res.status(500).json({ error: e.message});
    }
}

//get a single mandal
async function getById(req, res) {
    try {
        // Retrieve the mandal using the Sequelize model and the ID from req.params.id
        const {Mandals} = await connectToDatabase();

        const data = await Mandals.findByPk(req.params.id);
        if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
        return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
}

// Update a mandal
async function updateById(req, res) {
    try {
      const { Mandals } = await connectToDatabase();
      // Update the mandal using the Sequelize model
      const data = await Mandals.findByPk(req.params.id);
      if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
       // Update mandal properties
      if (req.body.title) data.title = req.body.title;
      if (req.body.description) data.description = req.body.description;
      await data.save();
      return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
  }
  

  //delete a mandal
  async function deletedById(req, res) {
    try {
      const { Mandals } = await connectToDatabase();
      const data = await Mandals.findByPk(req.params.id);
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
		FROM mandals m

    left join constituencies c on
    m.consistency_id = c.consistency_pk
    
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