const Sequelize = require('sequelize');
//const NoteModel = require('../models/Note');
const CountryModel = require('../models/country');
const AccessPermissionsModel = require('../models/access_permissions');
const BoothsModel = require('../models/booths');
const StatesModel = require('../models/states');
const ConstituenciesModel = require('../models/constituencies');
const DesignationModel = require('../models/designation');
const DistrictsModel = require('../models/districts');
const DivisionsModel = require('../models/divisions');
const LookupModel = require('../models/lookup');
const MandalsModel = require('../models/mandals');
const NavaratnaluModel = require('../models/navaratnalu');

const sequelize = new Sequelize('u276789778_polling_survey', 'u276789778_polling_survey', '123@Mango', {
	dialect: 'mysql',
	host: '62.72.28.52',
	port: 3306,
});

//const Note = NoteModel(sequelize, Sequelize);
const Country = CountryModel(sequelize, Sequelize);
const Access_permissions = AccessPermissionsModel(sequelize, Sequelize);
const Booths = BoothsModel(sequelize, Sequelize);
const States = StatesModel(sequelize, Sequelize);
const Constituencies = ConstituenciesModel(sequelize, Sequelize);
const Designation = DesignationModel(sequelize, Sequelize);
const Districts = DistrictsModel(sequelize, Sequelize);
const Divisions = DivisionsModel(sequelize, Sequelize);
const Lookup = LookupModel(sequelize, Sequelize);
const Mandals = MandalsModel(sequelize, Sequelize);
const Navaratnalu = NavaratnaluModel(sequelize, Sequelize);


const Models = { Country, Access_permissions, States, Booths, Constituencies, Designation, Districts, Divisions, Lookup, Mandals, Navaratnalu};
const connection = {};

module.exports = async () => {
	if (connection.isConnected) {
		console.log('=> Using existing connection.');
		return Models;
	}

	await sequelize.sync();
	await sequelize.authenticate();
	connection.isConnected = true;
	console.log('=>Created a new connection.');
	return Models;
};
