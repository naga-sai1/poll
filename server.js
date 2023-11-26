'use strict';
require('./misc/globals');
const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const connectToDatabase = require('./misc/db');
//const noteRouter = require('./routes/note.route.js');
const conyterRouter = require('./routes/country.route.js');
const constituenciesRouter = require('./routes/constituencies.route.js');
const designationRouter = require('./routes/designation.route.js');
const districtsRouter = require('./routes/districts.route.js');
const divisionsRouter = require('./routes/divisions.route.js');
const lookupRouter = require('./routes/lookup.route.js');
const mandalsRouter = require('./routes/mandals.route.js');
const statesRouter = require('./routes/states.route.js');
const boothsRouter = require('./routes/booths.route.js');
const access_permisionRouter = require('./routes/access_permissions.route.js');

const { join } = require('path');

const app = express();
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
console.log('Project path :' + __dirname);
app.use('/', express.static(join(__dirname, 'public')));
app.use(cors());

app.use(function (req, res, next) {
	// var allowedDomains = [
	// 	'http://localhost:3001',
	// 	'http://localhost:3000',
	// 	'https://sp.crowdfundenergy.in',
	// 	'https://consumer.crowdfundenergy.in',
	// 	'https://consumer.crowdfundenergy.com',
	// ];
	// var origin = req.headers.origin;

	// if (allowedDomains.indexOf(origin) > -1) {
	// 	res.setHeader('Access-Control-Allow-Origin', origin);
	// }

	res.setHeader('Access-Control-Allow-Origin', '*');

	res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');
	res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type, Accept');
	res.setHeader('Access-Control-Allow-Credentials', true);
	next();
});

app.use(express.json());

//app.use(noteRouter);
app.use(conyterRouter);
app.use(statesRouter);
app.use(boothsRouter);
app.use(access_permisionRouter);
app.use(constituenciesRouter);
app.use(designationRouter);
app.use(districtsRouter);
app.use(divisionsRouter);
app.use(lookupRouter);
app.use(mandalsRouter);

app.get('/', async (req, res) => {
	try {
		await connectToDatabase();
		console.log('Connection successful. ');
		return res.status(200).json({ message: 'Connection successful.' });
	} catch (err) {
		return res.status(500).send('Could not connect to the database.');
	}
});

app.listen(8080, () => {
	console.log('Server is running on port 8080');
});

 