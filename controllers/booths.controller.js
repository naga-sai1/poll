// const connectToDatabase = require("../misc/db");

// //create a booth
// async function create(req, res) {
//     try {
//         // Create the booth using the Sequelize model
//         const { Booths } = await connectToDatabase();

//         const data = await Booths.create(req.body);
//         return res.status(200).json({message: data });
//     }catch(e) {
//         return res.status(500).json({ error: e.message });
//     }
// }

// //get all booths
// async function getAll(req, res) {
//     try {
//         // Retrieve all booths using the Sequelize model
//         const {Booths} = await connectToDatabase();

//         const data = await Booths.findAll();
//         return res.status(200).json({message : data});
//     }catch(e) {
//         return res.status(500).json({ error: e.message});
//     }
// }

// //get a single booth
// async function getById(req, res) {
//     try {
//         // Retrieve the booths using the Sequelize model and the ID from req.params.id
//         const {Booths} = await connectToDatabase();

//         const data = await Booths.findByPk(req.params.id);
//         if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
//         return res.status(200).json({ message: data });
//     } catch (e) {
//       return res.status(500).json({ error: e.message });
//     }
// }

// // Update a booth
// async function updateById(req, res) {
//     try {
//       const { Booths } = await connectToDatabase();
//       // Update the booths using the Sequelize model
//       const data = await Booths.findByPk(req.params.id);
//       if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
//        // Update booths properties
//       if (req.body.title) data.title = req.body.title;
//       if (req.body.description) data.description = req.body.description;
//       await data.save();
//       return res.status(200).json({ message: data });
//     } catch (e) {
//       return res.status(500).json({ error: e.message });
//     }
//   }

//   //delete a booth
//   async function deletedById(req, res) {
//     try {
//       const { Booths } = await connectToDatabase();
//       const data = await Booths.findByPk(req.params.id);
//       if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
//       await data.destroy();
//       return res.status(200).json({ message: data });
//     } catch (err) {
//       return res.status(500).json({ error: err.message });
//     }
//   }

//   module.exports = {
//     getById,
//     getAll,
//     create,
//     updateById,
//     deletedById,
//   };
