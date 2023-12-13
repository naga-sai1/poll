const connectToDatabase = require("../misc/db");

//create a ticket
async function create(req, res) {
  try {
    // Create the ticket using the Sequelize model
    const { Ticket_history } = await connectToDatabase();

    const data = await Ticket_history.create(req.body);
    return res.status(200).json({ message: data });
  } catch (e) {
    return res.status(500).json({ error: e.message });
  }
}

//get all ticket
async function getAll(req, res) {
  try {
    // Retrieve all ticket using the Sequelize model
    const { Ticket_history } = await connectToDatabase();

    const data = await Ticket_history.findAll();
    return res.status(200).json({ message: data });
  } catch (e) {
    return res.status(500).json({ error: e.message });
  }
}

//get a single ticket
// async function getById(req, res) {
//   try {
//     // Retrieve the ticket using the Sequelize model and the ID from req.params.id
//     const { Ticket_history } = await connectToDatabase();

//     const data = await Ticket_history.findByPk(req.params.id);
//     if (!data)
//       return res
//         .status(404)
//         .json({ error: `id: ${req.params.id} was not found` });
//     return res.status(200).json({ message: data });
//   } catch (e) {
//     return res.status(500).json({ error: e.message });
//   }
// }

// Update a ticket
// async function updateById(req, res) {
//   try {
//     const { Ticket_history } = await connectToDatabase();
//     // Update the ticket using the Sequelize model
//     const data = await Ticket_history.findByPk(req.params.id);
//     if (!data)
//       return res
//         .status(404)
//         .json({ error: `id: ${req.params.id} was not found` });
//     // Update ticket properties
//     if (req.body.reason) data.reason = req.body.reason;
//     if (req.body.status_id) data.status_id = req.body.status_id;
//     if (req.body.createdby) data.createdby = req.body.createdby;
//     await data.save();
//     return res.status(200).json({ message: data });
//   } catch (e) {
//     return res.status(500).json({ error: e.message });
//   }
// }

//delete a ticket_master
// async function deletedById(req, res) {
//   try {
//     const { Ticket_history } = await connectToDatabase();
//     const data = await Ticket_history.findByPk(req.params.id);
//     if (!data)
//       return res
//         .status(404)
//         .json({ error: `id: ${req.params.id} was not found` });
//     await data.destroy();
//     return res.status(200).json({ message: data });
//   } catch (err) {
//     return res.status(500).json({ error: err.message });
//   }
// }

//joins
async function getAllWithJoin(req, res) {
  try {
    const { sequelize } = await connectToDatabase();

    const query = `
		SELECT *
		FROM ticket_history th

    left join ticket_attachments ta on
    th.ticket_attachment_id = ta.ticket_attachment_pk

    left join lookup l on
    tm.status_id = l.lookup_pk
    
		;`;

    const data = await sequelize.query(query, {
      type: sequelize.QueryTypes.SELECT,
    });

    return res.status(200).json({ message: data });
  } catch (e) {
    return res.status(500).json({ error: e.message });
  }
}

async function save_or_updated_ticket(req, res) {
	try {
		const { Ticket_history, ticket_master } = await connectToDatabase();

		const {
			ticket_master_id,
			reason,
            status_id,
            createdby,
		} = req.body;

		console.log(req.body);
		//update user
		const data = await ticket_master.findByPk(ticket_master_id);
		if (reason) data.reason = reason;

		if (status_id) data.status_id = status_id;
		if (createdby) data.createdby = createdby;
		await data.save();
		//////////////////////////////////////////////////

		const existingEntry1 = await ticket_history.findOne({
			where: {
				ticket_master_id: ticket_master_id,
			},
		});

		if (existingEntry1) {
			await existingEntry1.update({
				reason: reason,
                status_id: status_id,
                createdby: createdby,
			});

			return res.status(200).json({ message: 'Entry updated successfully' });
		} else {
			const newEntry1 = await ticket_history.create({
				reason: reason,
                status_id: status_id,
                createdby: createdby,
				ticket_master_id: ticket_master_id,
			});

			return res.status(200).json({ message: 'Entry created successfully' });
		}
	} catch (e) {
		console.log(e);
		return res.status(500).json({ error: e.message });
	}
}

module.exports = {
  //getById,
  getAll,
  create,
//updateById,
//deletedById,
  getAllWithJoin,
  save_or_updated_ticket,
};
