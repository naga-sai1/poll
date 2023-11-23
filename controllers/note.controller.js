const connectToDatabase = require("../misc/db");

// Create a note
async function create(req, res) {
  try {
    // Create the note using the Sequelize model
    const { Note } = await connectToDatabase();

    const data = await Note.create(req.body);
    return res.status(200).json({ message: data });
  } catch (err) {
    return res.status(500).json({ error: err.message });
  }
}

// Get all notes
async function getAll(req, res) {
  try {
    const { Note } = await connectToDatabase();

    // Retrieve all notes using the Sequelize model
    const data = await Note.findAll();
    return res.status(200).json({ message: data });
  } catch (err) {
    return res.status(500).json({ error: err.message });
  }
}

// Get a single note
async function getById(req, res) {
  try {
    // Retrieve the note using the Sequelize model and the ID from req.params.id
    const { Note } = await connectToDatabase();

    //const data = await Note.findById(req.params.id);
    const data = await Note.findByPk(req.params.id);
    if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
    return res.status(200).json({ message: data });
  } catch (err) {
    return res.status(500).json({ error: err.message });
  }
}

// Update a note
async function updateById(req, res) {
  try {
    const { Note } = await connectToDatabase();
    // Update the note using the Sequelize model
    const data = await Note.findByPk(req.params.id);
    if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
    // // Update note properties
    if (req.body.title) data.title = req.body.title;
    if (req.body.description) data.description = req.body.description;
    await data.save();
    return res.status(200).json({ message: data });
  } catch (err) {
    return res.status(500).json({ error: err.message });
  }
}

async function deletedById(req, res) {
  try {
    const { Note } = await connectToDatabase();
    const data = await Note.findByPk(req.params.id);
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
