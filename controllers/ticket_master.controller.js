const connectToDatabase = require("../misc/db");

//create a ticket_master
async function create(req, res) {
  try {
    // Create the ticket_master using the Sequelize model
    const { Ticket_master } = await connectToDatabase();

    const data = await Ticket_master.create(req.body);
    return res.status(200).json({ message: data });
  } catch (e) {
    return res.status(500).json({ error: e.message });
  }
}

//get all ticket_master
async function getAll(req, res) {
  try {
    // Retrieve all ticket_master using the Sequelize model
    const { Ticket_master } = await connectToDatabase();

    const data = await Ticket_master.findAll();
    return res.status(200).json({ message: data });
  } catch (e) {
    return res.status(500).json({ error: e.message });
  }
}

//get a single ticket_master
async function getById(req, res) {
  try {
    // Retrieve the ticket_master using the Sequelize model and the ID from req.params.id
    const { Ticket_master } = await connectToDatabase();

    const data = await Ticket_master.findByPk(req.params.id);
    if (!data)
      return res
        .status(404)
        .json({ error: `id: ${req.params.id} was not found` });
    return res.status(200).json({ message: data });
  } catch (e) {
    return res.status(500).json({ error: e.message });
  }
}

// Update a ticket_master
async function updateById(req, res) {
  try {
    const { Ticket_master } = await connectToDatabase();
    // Update the ticket_master using the Sequelize model
    const data = await Ticket_master.findByPk(req.params.id);
    if (!data)
      return res
        .status(404)
        .json({ error: `id: ${req.params.id} was not found` });
    // Update ticket_master properties
    if (req.body.voter_pk) data.voter_pk = req.body.voter_pk;
    if (req.body.volunteer_id) data.volunteer_id = req.body.volunteer_id;
    if (req.body.navaratnalu_id) data.navaratnalu_id = req.body.navaratnalu_id;
    if (req.body.reason) data.reason = req.body.reason;
    if (req.body.status_id) data.status_id = req.body.status_id;
    await data.save();
    return res.status(200).json({ message: data });
  } catch (e) {
    return res.status(500).json({ error: e.message });
  }
}

//delete a ticket_master
async function deletedById(req, res) {
  try {
    const { Ticket_master } = await connectToDatabase();
    const data = await Ticket_master.findByPk(req.params.id);
    if (!data)
      return res
        .status(404)
        .json({ error: `id: ${req.params.id} was not found` });
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
		FROM ticket_master tm

    left join voters v on
    tm.voter_pk = v.voter_pk

    left join users u on
    tm.volunteer_id = u.user_pk

    left join navaratnalu n on
    tm.navaratnalu_id = n.navaratnalu_pk

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

//update status
async function updateTicketStatus(req, res) {
  try {
    const { status_id, ticketMasterPKList } = req.body;

    const { sequelize } = await connectToDatabase();

    for (const ticketMastersPK of ticketMasterPKList) {
      var _query = `update
			 ticket_master
			 set status_id = (:status_id)
			 where ticket_master_pk = (:ticketMastersPK)
			`;
      await sequelize.query(_query, {
        type: sequelize.QueryTypes.UPDATE,
        replacements: {
          ticketMastersPK: ticketMastersPK,
          status_id: status_id,
        },
      });
    }

    res.status(200).json({ message: "done" });
  } catch (e) {
    return res.status(500).json({ error: e.message });
  }
}

async function getAllWithJoinAndWhere(req, res) {
  const page = parseInt(req.query.page || 1);
  const limit = parseInt(req.query.limit || 50);
  //const offset = (page - 1) * limit;
  try {
    const { sequelize } = await connectToDatabase();

    //dropdownFilters
    const {
      voter_pk,
      volunteer_id,
      navaratnalu_id,
      status_id,
      reason,
    } = req.body;

    const result = await sequelize.query(
      `CALL GetTicketList(${voter_pk}, ${volunteer_id},${navaratnalu_id},${status_id},${reason}, ${limit}, ${page}, NULL, NULL)
			`
    );

    var count = 0;
    var completed = 0;
    var pending = 0;
    if (result.length != 0) {
      count = result[0].count;
      completed = result[0].completed;
      pending = count - completed;
    }

    return res
      .status(200)
      .json({
        count: count,
        completed: completed,
        pending: pending,
        data: result,
      });

    /*
			var query = `
		WITH FilteredData AS (
			SELECT  
				v.*,
				ps.volunteer_id as poll_survey_volunteer_id,
				ps.intrested_party as opinionparty,
				ps.voted_party,
				ps.createdon as surveydatetime,
				v.phone_no as voter_phone_no,
				v.age as voter_age, 
				v.voter_pk as voter_pkk,
				(SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.caste_id) AS caste_name,
				(SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.religion_id) AS religion_name,
				(SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.guardian) AS guardian_type,
				(SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.gender) AS gender_type
			FROM 
				voters v
				LEFT JOIN poll_survey ps ON v.voter_pk = ps.voter_pk
				LEFT JOIN states s ON v.state_id = s.state_pk
				LEFT JOIN districts d ON v.district_id = d.district_pk
				LEFT JOIN constituencies c ON v.consistency_id = c.consistency_pk
				LEFT JOIN mandals m ON v.mandal_id = m.mandal_pk
				LEFT JOIN divisions dv ON v.division_id = dv.division_pk
				LEFT JOIN sachivalayam sv ON v.sachivalayam_id = sv.sachivalayam_pk
				LEFT JOIN parts p ON v.part_no = p.part_no
				LEFT JOIN villages vl ON v.village_id = vl.village_pk
				LEFT JOIN users u ON v.volunteer_id = u.user_pk  
			WHERE
				v.is_newregistration = false
	AND 
    v.state_id = (:state_id)`;

    if (district_id != null && district_id != "") {
      query += `AND
    v.district_id = (:district_id)`;

      if (consistency_id != null && consistency_id != "") {
        query += `AND
      v.consistency_id = (:consistency_id)`;

        if (mandal_id != null && mandal_id != "") {
          query += `AND
        v.mandal_id = (:mandal_id)`;

          if (division_id != null && division_id != "") {
            query += `AND
          v.division_id = (:division_id)`;

            if (sachivalayam_id != null && sachivalayam_id != "") {
              query += `AND
            v.sachivalayam_id = (:sachivalayam_id)`;

              if (part_no != null && part_no != "") {
                query += `AND
              v.part_no = (:part_no)`;

								if (village_id != null && village_id != '') {
									query += `AND
                v.village_id = (:village_id) `;
								}
							}
						}
					}
				}
			}
		}

		query += `)
		SELECT *,
    (SELECT COUNT(*) FROM FilteredData) AS count,
    (SELECT COUNT(*) FROM FilteredData WHERE opinionparty IS NOT NULL) AS completed
FROM FilteredData
ORDER BY surveydatetime DESC
		LIMIT 10 OFFSET 0
		`;

		const data = await sequelize.query(query, {
			type: sequelize.QueryTypes.SELECT,
			replacements: {
				state_id: state_id,
				district_id: district_id,
				consistency_id: consistency_id,
				mandal_id: mandal_id,
				division_id: division_id,
				sachivalayam_id: sachivalayam_id,
				part_no: part_no,
				village_id: village_id,
				limit: limit,
				offset: offset,
			},
		});

		return res.status(200).json({ message: { count: count, completed: completed, pending: pending, data: data } });
	    */
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
  updateTicketStatus,
  getAllWithJoinAndWhere,
};
