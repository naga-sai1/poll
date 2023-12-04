const { query } = require('express');
const connectToDatabase = require('../misc/db');

//create a user
async function create(req, res) {
	try {
		// Create the user using the Sequelize model
		const { Users } = await connectToDatabase();

		const data = await Users.create(req.body);
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

//get all users
async function getAll(req, res) {
	try {
		// Retrieve all users using the Sequelize model
		const { Users } = await connectToDatabase();

		const data = await Users.findAll();
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

//get a single user
async function getById(req, res) {
	try {
		// Retrieve the user using the Sequelize model and the ID from req.params.id
		const { Users } = await connectToDatabase();

		const data = await Users.findByPk(req.params.id);
		if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

// Update a users
async function updateById(req, res) {
	try {
		const { Users } = await connectToDatabase();
		// Update the users using the Sequelize model
		const data = await Users.findByPk(req.params.id);
		if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
		// Update users properties
		if (req.body.title) data.title = req.body.title;
		if (req.body.description) data.description = req.body.description;
		await data.save();
		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

//delete a users
async function deletedById(req, res) {
	try {
		const { Users } = await connectToDatabase();
		const data = await Users.findByPk(req.params.id);
		if (!data) throw new HTTPError(404, `id: ${req.params.id} was not found`);
		await data.destroy();
		return res.status(200).json({ message: data });
	} catch (err) {
		return res.status(500).json({ error: err.message });
	}
}

//login a user
async function login2(req, res) {
	const { phone_no, password } = req.body;

	try {
		const { Users } = await connectToDatabase();
		const data = await Users.findOne({ where: { phone_no: phone_no, password: password } });
		if (!data) {
			return res.status(401).json({ message: 'Invalid credentials' });
		}
		return res.status(200).json({ message: data });
	} catch (err) {
		return res.status(500).json({ error: err.message });
	}
}

async function login(req, res) {
	try {
		const { phone_no, password } = req.body;
		const { sequelize } = await connectToDatabase();
		const _query = `
		select 
		u.user_pk,
		u.user_displayname,
		l.lookup_valuename as desgination_name,
		l.lookup_pk as desgination_id,
		c.consistency_pk,
		c.consistency_name,
		m.mandal_pk,
        m.mandal_name,
		d.division_pk,
		d.division_name,
		s.sachivalayam_pk,
		s.sachivalayam_name,
		p.part_no,
		v.village_pk,
		v.village_name 

		from users u
		left join lookup l
		on 
		u.designation_id = l.lookup_pk
		left join constituencies c
		on u.consistency_id =  c.consistency_pk 
		left join mandals m
		on u.mandal_id =  m.mandal_pk
		left join divisions d
		on u.division_id =  d.division_pk
		left join sachivalayam s
		on u.sachivalayam_id =  s.sachivalayam_pk    
        left join parts p
		on u.part_no = p.part_no
		left join villages v
		on u.village_id = v.village_pk
		where 
		u.phone_no = (:phone_no)
		and
		u.password = (:password)
		`;
		const data = await sequelize.query(_query, {
			type: sequelize.QueryTypes.SELECT,
			replacements: {
				phone_no: phone_no,
				password: password,
			},
		});
		if (!data) {
			return res.status(401).json({ message: 'Invalid credentials' });
		}
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
		FROM users u

    left join states s on
    u.state_id = s.state_pk

    left join districts d on
    u.district_id = d.district_pk

    left join constituencies c on
    u.consistency_id = c.consistency_pk 

    left join mandals m on 
    u.mandal_id = m.mandal_pk
    

    left join divisions dv on
    u.division_id = dv.division_pk

    left join sachivalayam sv on 
    u.sachivalayam_id = sv.sachivalayam_pk

    left join parts p on
    u.part_no = p.part_no

    left join villages v on
    u.village_id = v.village_pk

    left join lookup l on
    u.designation_id = l.lookup_pk
		;`;

		const data = await sequelize.query(query, { type: sequelize.QueryTypes.SELECT });

		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

async function getAllWithJoinAndWhere(req, res) {
	try {
		const { sequelize } = await connectToDatabase();

		//dropdownFilters
		const { state_id, district_id, consistency_id, mandal_id, division_id, sachivalayam_id, part_no, village_id } =
			req.body;

		var query = `
		SELECT 
		*,
		l.lookup_valuename as designation_name,
		u.division_id as division_pkk
		FROM users u

		
        
		left join lookup l on
        l.lookup_pk = u.designation_id
		
		left join states s on
        u.state_id = s.state_pk

		left join districts d on
        u.district_id = d.district_pk

    left join constituencies c on 
       u.consistency_id = c.consistency_pk  
       
    left join mandals m on
        u.mandal_id = m.mandal_pk   
    
    left join divisions dv on
      u.division_id = dv.division_pk

    left join sachivalayam sv on 
      u.sachivalayam_id = sv.sachivalayam_pk
  
    left join parts p on
      u.part_no = p.part_no
  
    left join villages v on
      u.village_id = v.village_pk  
		
		WHERE 
    u.state_id = (:state_id)`;

		if (district_id != null && district_id != '') {
			query += `AND
    u.district_id = (:district_id)`;

			if (consistency_id != null && consistency_id != '') {
				query += `AND
      u.consistency_id = (:consistency_id)`;

				if (mandal_id != null && mandal_id != '') {
					query += `AND
        u.mandal_id = (:mandal_id)`;

					if (division_id != null && division_id != '') {
						query += `AND
          u.division_id = (:division_id)`;

						if (sachivalayam_id != null && sachivalayam_id != '') {
							query += `AND
            u.sachivalayam_id = (:sachivalayam_id)`;

							if (part_no != null && part_no != '') {
								query += `AND
              u.part_no = (:part_no)`;

								if (village_id != null && village_id != '') {
									query += `AND
                u.village_id = (:village_id)`;
								}
							}
						}
					}
				}
			}
		}

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
			},
		});

		return res.status(200).json({ message: data });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

async function getBellowUserByDesignation(req, res) {
	try {
		const { sequelize } = await connectToDatabase();

		const { designation_id } = req.body;

		var query = `
    SELECT *
    FROM users u

    left join lookup l on
    u.designation_id = l.lookup_pk
    WHERE designation_id = (:designation_id)`;

		const data = await sequelize.query(query, {
			type: sequelize.QueryTypes.SELECT,
			replacements: { designation_id: designation_id + 1 },
		});

		return res.status(200).json({ message: data });
	} catch (err) {
		return res.status(500).json({ error: err.message });
	}
}

async function volunteerMappingtoVoters(req, res) {
	try {
		const { user_pk, voterspkList } = req.body;

		const { sequelize } = await connectToDatabase();

		for (const voterspk of voterspkList) {
			var _query = `update
			 voters
			 set volunteer_id = (:user_pk)
			 where voter_pk = (:voterspk)
			`;
			await sequelize.query(_query, {
				type: sequelize.QueryTypes.UPDATE,
				replacements: {
					voterspk: voterspk,
					user_pk: user_pk,
				},
			});
		}

		res.status(200).json({ message: 'done' });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

async function gruhasaradhiMappingtoVoters(req, res) {
	try {
		const { user_pk, voterspkList } = req.body;

		const { sequelize } = await connectToDatabase();

		for (const voterspk of voterspkList) {
			var _query = `update
			 voters
			 set gruhasaradhi_id = (:user_pk)
			 where voter_pk = (:voterspk)
			`;
			await sequelize.query(_query, {
				type: sequelize.QueryTypes.UPDATE,
				replacements: {
					voterspk: voterspk,
					user_pk: user_pk,
				},
			});
		}

		res.status(200).json({ message: 'done' });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

async function designationMappingtoUsers(req, res) {
	try {
		const { designation_pk, usersList } = req.body;

		const { sequelize } = await connectToDatabase();

		for (const userpk of usersList) {
			var _query = `update
			 users
			 set designation_id = (:designation_pk)
			 where user_pk = (:userpk)
			`;
			await sequelize.query(_query, {
				type: sequelize.QueryTypes.UPDATE,
				replacements: {
					designation_pk: designation_pk,
					userpk: userpk,
				},
			});
		}

		res.status(200).json({ message: 'done' });
	} catch (e) {
		return res.status(500).json({ error: e.message });
	}
}

async function managerMappingtoUsers(req, res) {
	try {
		const { reporting_manager, usersList } = req.body;

		const { sequelize } = await connectToDatabase();

		for (const userpk of usersList) {
			var _query = `update
			 users
			 set reporting_manager = (:reporting_manager)
			 where user_pk = (:userpk)
			`;
			await sequelize.query(_query, {
				type: sequelize.QueryTypes.UPDATE,
				replacements: {
					reporting_manager: reporting_manager,
					userpk: userpk,
				},
			});
		}

		res.status(200).json({ message: 'done' });
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
	login,
	getAllWithJoin,
	getAllWithJoinAndWhere,
	getBellowUserByDesignation,
	volunteerMappingtoVoters,
	gruhasaradhiMappingtoVoters,
};
