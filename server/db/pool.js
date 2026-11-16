// pg = the postgres library for node
const { Pool } = require('pg');
require('dotenv').config(); // pulls db login from .env (environment)

// pool = a bunch of reusable db (database) connections
// so we dont open a new one every request
const pool = new Pool({
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  host: process.env.DB_HOST,
  port: process.env.DB_PORT,
  database: process.env.DB_NAME,
});

// lets other files use the pool, jordon's routes will use this
module.exports = pool;