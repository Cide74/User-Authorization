const { Client } = require("pg");

const client = new Client(process.env.PG_URL); //Configuring PostgresSQL Database

module.exports = client;