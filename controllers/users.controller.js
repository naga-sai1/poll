const { query } = require("express");
const connectToDatabase = require("../misc/db");
const { sendSMS } = require("../services/sms");

//create a user
async function create(req, res) {
  try {
    // Create the user using the Sequelize model
    const { Users } = await connectToDatabase();

    const data = await Users.create(req.body);
    console.log(data);
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
    if (!data)
      return res
        .status(404)
        .json({ error: `id: ${req.params.id} was not found` });
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
    if (!data)
      return res
        .status(404)
        .json({ error: `id: ${req.params.id} was not found` });
    // Update users properties
    //if (req.body.title) data.title = req.body.title;
    //if (req.body.description) data.description = req.body.description;
    if (req.body.user_displayname)
      data.user_displayname = req.body.user_displayname;
    //if (req.body.username) data.username = req.body.username;
    if (req.body.password) data.password = req.body.password;

    if (req.body.phone_no) {
      data.phone_no = req.body.phone_no;
      data.username = req.body.phone_no;
    }
    if (req.body.office_phone_no)
      data.office_phone_no = req.body.office_phone_no;
    if (req.body.age) data.age = req.body.age;
    if (req.body.email) data.email = req.body.email;
    if (req.body.designation_id) data.designation_id = req.body.designation_id;
    if (req.body.reporting_manager)
      data.reporting_manager = req.body.reporting_manager;
    if (req.body.state_id) data.state_id = req.body.state_id;
    if (req.body.consistency_id) data.consistency_id = req.body.consistency_id;
    if (req.body.mandal_id) data.mandal_id = req.body.mandal_id;
    if (req.body.division_id) data.division_id = req.body.division_id;
    if (req.body.sachivalayam_id)
      data.sachivalayam_id = req.body.sachivalayam_id;
    if (req.body.village_id) data.village_id = req.body.village_id;
    if (req.body.is_first_login) data.is_first_login = req.body.is_first_login;
    if (req.body.otp) data.otp = req.body.otp;
    if (req.body.district_id) data.district_id = req.body.district_id;
    if (req.body.part_no) data.part_no = req.body.part_no;
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

//login a user
async function login2(req, res) {
  const { phone_no, password } = req.body;

  try {
    const { Users } = await connectToDatabase();
    const data = await Users.findOne({
      where: { phone_no: phone_no, password: password },
    });
    if (!data) {
      return res.status(401).json({ message: "Invalid credentials" });
    }
    return res.status(200).json({ message: data });
  } catch (err) {
    return res.status(500).json({ error: err.message });
  }
}

async function login(req, res) {
  try {
    const { username, password } = req.body;
    const { sequelize } = await connectToDatabase();
    const _query = `
		select 
		GROUP_CONCAT(um.part_no) AS parts_string,
		u.is_first_login,
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
        
		left join user_mapping um
		on 
		u.user_pk = um.user_id

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
		u.username = (:username)
		and
		u.password = (:password)
		GROUP BY u.user_pk
		`;
    const data = await sequelize.query(_query, {
      type: sequelize.QueryTypes.SELECT,
      replacements: {
        username: username,
        password: password,
      },
    });
    if (!data) {
      return res.status(401).json({ message: "Invalid credentials" });
    }

    //let parts = data[0].parts_string.split(',');
    //data[0].parts = parts;

    if (data[0].parts_string == null) {
      data[0].parts = [];
    } else {
      let parts = data[0].parts_string.split(",");
      data[0].parts = parts;
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

    const data = await sequelize.query(query, {
      type: sequelize.QueryTypes.SELECT,
    });

    return res.status(200).json({ message: data });
  } catch (e) {
    return res.status(500).json({ error: e.message });
  }
}

async function getAllWithJoinAndWhere(req, res) {
  try {
    const { sequelize } = await connectToDatabase();

    //dropdownFilters
    const {
      state_id,
      district_id,
      consistency_id,
      mandal_id,
      division_id,
      sachivalayam_id,
      part_no,
      village_id,
	  designation_id,
    } = req.body;

    var query = `
		SELECT 
		
		*,
		GROUP_CONCAT(um.part_no) AS parts,
		u.part_no as part_no,
		l.lookup_pk as designation_id,
		l.lookup_valuename as designation_name,
		u.division_id as division_pkk
		FROM users u
        
		left JOIN user_mapping um ON 
		u.user_pk = um.user_id

        
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

    if (district_id != null && district_id != "") {
      query += `AND
    u.district_id = (:district_id)`;

      if (consistency_id != null && consistency_id != "") {
        query += `AND
      u.consistency_id = (:consistency_id)`;

        if (mandal_id != null && mandal_id != "") {
          query += `AND
        u.mandal_id = (:mandal_id)`;

          if (division_id != null && division_id != "") {
            query += `AND
          u.division_id = (:division_id)`;

            if (sachivalayam_id != null && sachivalayam_id != "") {
              query += `AND
            u.sachivalayam_id = (:sachivalayam_id)`;

              if (part_no != null && part_no != "") {
                query += `AND
              u.part_no = (:part_no)`;

                if (village_id != null && village_id != "") {
                  query += `AND
                u.village_id = (:village_id)`;
                }
              }
            }
          }
        }
      }
    }
	if (designation_id != null && designation_id != "") {
		query += `AND
		u.designation_id = (:designation_id)`;
	}

    query += `GROUP BY u.user_pk`;

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
		designation_id: designation_id,
      },
    });

    return res.status(200).json({ message: data });
  } catch (e) {
    return res.status(500).json({ error: e.message });
  }
}

//get bellow user by designation
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

//volunteer mapping to voters
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

    res.status(200).json({ message: "done" });
  } catch (e) {
    return res.status(500).json({ error: e.message });
  }
}

// async function designationMappingtoUsers(req, res) {
//   try {
//     const { designation_id, usersPkList, part_no } = req.body;

//     const { sequelize } = await connectToDatabase();

//     for (const user_pk of usersPkList) {
//       var _query = `update
// 			 users
// 			 set 
// 			 designation_id = (:designation_id),
// 			 part_no = (:part_no)
// 			 where user_pk = (:user_pk)
// 			`;
//       await sequelize.query(_query, {
//         type: sequelize.QueryTypes.UPDATE,
//         replacements: {
//           // designation_id: designation_id,
//           user_pk: user_pk,
//           part_no: part_no,
//         },
//       });
//     }

//     res.status(200).json({ message: "done" });
//   } catch (e) {
//     return res.status(500).json({ error: e.message });
//   }
// }

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

    res.status(200).json({ message: "done" });
  } catch (e) {
    return res.status(500).json({ error: e.message });
  }
}

// Update a address
async function updateUserPassword(req, res) {
  try {
    const { user_pk, password } = req.body;
    const { Users } = await connectToDatabase();
    //Update the  using the Sequelize model
    const data = await Users.findByPk(user_pk);
    if (!data)
      return res.status(404).json({ error: `id: ${user_pk} was not found` });

    // Update  properties
    if (password) {
      data.password = password;
      data.is_first_login = false;
    }

    await data.save();
    return res.status(200).json({ message: "done" });
  } catch (e) {
    return res.status(500).json({ error: e.message });
  }
}

// async function designationMappingtoUsers2(req, res) {
// 	try {
// 		const { designation_id, usersPkList, part_no } = req.body;

// 		const { sequelize } = await connectToDatabase();

// 		for (const user_pk of usersPkList) {
// 			var _query = `update
// 			 users
// 			 set
// 			 designation_id = (:designation_id),
// 			 part_no = (:part_no)
// 			 where user_pk = (:user_pk)
// 			`;
// 			await sequelize.query(_query, {
// 				type: sequelize.QueryTypes.UPDATE,
// 				replacements: {
// 					designation_id: designation_id,
// 					user_pk: user_pk,
// 					part_no: part_no,
// 				},
// 			});
// 		}

// 		res.status(200).json({ message: 'done' });
// 	} catch (e) {
// 		return res.status(500).json({ error: e.message });
// 	}
// }

async function designationMappingtoUsers(req, res) {
  try {
    const { usersPkList, part_no_List } = req.body;

    const { sequelize } = await connectToDatabase();

    for (const user_pk of usersPkList) {
      // var _query = `
			// UPDATE users
			// SET designation_id = (:designation_id)
			// WHERE user_pk = (:user_pk)`;

      // await sequelize.query(_query, {
      //   type: sequelize.QueryTypes.UPDATE,
      //   replacements: {
      //     designation_id: designation_id,
      //     user_pk: user_pk,
      //   },
      // });

      var _query = `DELETE FROM user_mapping
			WHERE user_id = (:user_pk)`;

      await sequelize.query(_query, {
        type: sequelize.QueryTypes.DELETE,
        replacements: {
          user_pk: user_pk,
        },
      });

      for (const part_no of part_no_List) {
        var _query = `
				INSERT INTO user_mapping (user_id, part_no)
				VALUES (:user_pk, :part_no);
			`;
        await sequelize.query(_query, {
          type: sequelize.QueryTypes.UPDATE,
          replacements: {
            user_pk: user_pk,
            part_no: part_no,
          },
        });
      }
    }

    res.status(200).json({ message: "done" });
  } catch (e) {
    return res.status(500).json({ error: e.message });
  }
}

async function sendCredstoUsers(req, res) {
  function getPassword(length) {
    const charset =
      "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    let password = "";

    for (let i = 0; i < length; i++) {
      const randomIndex = Math.floor(Math.random() * charset.length);
      password += charset[randomIndex];
    }

    return password;
  }

  try {
    console.log(req.body);
    const { usersList } = req.body;

    const { sequelize } = await connectToDatabase();

    for (const user of usersList) {
      console.log(user);
      const password = getPassword(8);
      var _query = `
			 update
			 users
			 set 
			//  password = :password
       password_encrypted = md5(:password)
			 where user_pk = :user_pk AND is_first_login = false;
			`;
      const data = await sequelize.query(_query, {
        type: sequelize.QueryTypes.UPDATE,
        replacements: {
          // password: password,
          password_encrypted : md5(password),
          //password: '87654321',
          user_pk: user.user_pk,
        },
      });
      // console.log(user.phone_no);
      // console.log(user.user_displayname);
      // console.log(password);
      const otpResult = await sendSMS(
        user.phone_no,
        user.user_displayname,
        password
      );
      if (otpResult.success) {
        console.log("Otp sent successfully");
      } else {
        console.log("otp sending failed");
      }
    }

    res.status(200).json({ message: "done" });
  } catch (e) {
    return res.status(500).json({ error: e.message });
  }
}

//get next level user by designation
async function getNextLevelUserByDesignation(req, res) {
  try {
    const { sequelize } = await connectToDatabase();

    const {
      designation_name,
      part_no,
      sachivalayam_id,
      division_id,
      mandal_id,
      consistency_id,
    } = req.body;

    var query = "";

    if (designation_name == "VOLUNTEER") {
      query = `
			SELECT *
			FROM users u
	
			left join lookup l on
			u.designation_id = l.lookup_pk

			left join parts p on
			u.part_no = p.part_no

			WHERE designation_id = 36 AND part_no = (:part_no)`;
    } else if (designation_name == "BOOTH_INCHARGE") {
      query = `
			SELECT *
			FROM users u
	
			left join lookup l on
			u.designation_id = l.lookup_pk

			left join sachivalayam s on
			u.sachivalayam_id = s.sachivalayam_pk

			WHERE designation_id = 35 AND sachivalayam_id = (:sachivalayam_id)`;
    } else if (designation_name == "APRO") {
      query = `
			SELECT *
			FROM users u
	
			left join lookup l on
			u.designation_id = l.lookup_pk

			left join divisions d on
			u.division_id = d.division_pk

			WHERE designation_id = 34 AND division_id = (:division_id)`;
    } else if (designation_name == "PRO") {
      query = `
			SELECT *
			FROM users u
	
			left join lookup l on
			u.designation_id = l.lookup_pk

			left join mandals m on
			u.mandal_id = m.mandal_pk

			WHERE designation_id = 33 AND mandal_id = (:mandal_id)`;
    } else if (designation_name == "MANDAL_CONVENER/CPRO") {
      query = `
			SELECT *
			FROM users u
	
			left join lookup l on
			u.designation_id = l.lookup_pk

			left join constituencies c on
			u.consistency_id = c.consistency_pk

			WHERE designation_id = 32 AND consistency_id = (:consistency_id)`;
    }

    const data = await sequelize.query(query, {
      type: sequelize.QueryTypes.SELECT,
      replacements: {
        designation_name: designation_name,
        part_no: part_no,
        sachivalayam_id: sachivalayam_id,
        division_id: division_id,
        mandal_id: mandal_id,
        consistency_id: consistency_id,
      },
    });

    return res.status(200).json({ message: data });
  } catch (err) {
    return res.status(500).json({ error: err.message });
    console.log(err);
  }
}

async function uservalidationwithphoneno(req, res) {
  try {
    const { Users ,sequelize } = await connectToDatabase();
    const { username } = req.body;
    const data = await Users.findOne({
      where: { username: username },
    });
    if (!data) {
      return res.status(401).json({ message: `user not found in this phone no` });
    }
    const otp = 123456;
    var query = `
    update users
    set
    otp = (:otp)
    where username = (:username)
    `;
    const data1 = await sequelize.query(query, {
      type: sequelize.QueryTypes.UPDATE,
      replacements: {
        otp: otp,
        username: username,
      },
    });
    return res.status(200).json({ message: `OTP sent successfully` });
  }
  catch (err) {
    return res.status(500).json({ error: err.message });
  }
}

async function saveNewPassword(req, res) {
  console.log("hi");
  try {
    const { username, otp, password } = req.body;
    const { Users } = await connectToDatabase();
    //Update the  using the Sequelize model
    const data = await Users.findOne({
      where: { username: username },
    });
    if (!data)
      return res.status(404).json({ error: `phone no: ${username} was not found` });
    const generatedOtp = data.otp;

    if (otp != generatedOtp) {
      console.log("here")
      return res.status(401).json({ message: `OTP is not valid` });
    }
    else{
      // data.password_encrypted = MD5(password);
      data.password = password;
      // data.is_first_login = false;
      await data.save();
      return res.status(200).json({ message: `Password updated successfully` });
    }
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
  updateUserPassword,
  designationMappingtoUsers,
  sendCredstoUsers,
  getNextLevelUserByDesignation,
  uservalidationwithphoneno,
  saveNewPassword
};
