const Sequelize = require('sequelize');
//const NoteModel = require('../models/Note');
const CountryModel = require('../models/country');

const sequelize = new Sequelize('u276789778_polling_survey', 'u276789778_polling_survey', '123@Mango', {
	dialect: 'mysql',
	host: '62.72.28.52',
	port: 3306,
});

//const Note = NoteModel(sequelize, Sequelize);
const Country = CountryModel(sequelize, Sequelize);


const Models = { Country};
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
