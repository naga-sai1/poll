const connectToDatabase = require("../misc/db");

//create a poll_survey
async function create(req, res) {
    try {
        // Create the poll_survey using the Sequelize model
        const { Poll_survey } = await connectToDatabase();

        const data = await Poll_survey.create(req.body);
        return res.status(200).json({message: data });
    }catch(e) {
        return res.status(500).json({ error: e.message });
    }
}

//get all poll_survey
async function getAll(req, res) {
    try {
        // Retrieve all poll_survey using the Sequelize model
        const {Poll_survey} = await connectToDatabase();

        const data = await Poll_survey.findAll();
        return res.status(200).json({message : data});
    }catch(e) {
        return res.status(500).json({ error: e.message});
    }
}

//get a single poll_survey
async function getById(req, res) {
    try {
        // Retrieve the poll_survey using the Sequelize model and the ID from req.params.id
        const {Poll_survey} = await connectToDatabase();

        const data = await Poll_survey.findByPk(req.params.id);
        if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
        return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
}

// Update a poll_survey
async function updateById(req, res) {
    try {
      const { Poll_survey } = await connectToDatabase();
      // Update the poll_survey using the Sequelize model
      const data = await Poll_survey.findByPk(req.params.id);
      if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
       // Update poll_survey properties
      if (req.body.title) data.title = req.body.title;
      if (req.body.description) data.description = req.body.description;
      await data.save();
      return res.status(200).json({ message: data });
    } catch (e) {
      return res.status(500).json({ error: e.message });
    }
  }
  

  //delete a poll_survey
  async function deletedById(req, res) {
    try {
      const { Poll_survey } = await connectToDatabase();
      const data = await Poll_survey.findByPk(req.params.id);
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
		FROM poll_survey ps

    left join voters on v
    ps.voter_pk = v.voter_pk    
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