const express = require('express');  // lets us use express to create a server
const cors = require('cors'); // cors = lets react (:5173) talk to server (:5000)
require('dotenv').config(); // loads .env file, keeps db password out of code
const pool = require('./db/pool'); // NEW - db (database) connection from pool.js

const app = express(); // the server <---
app.use(cors()); // turn on cors for routes, so react can talk to server
app.use(express.json()); // lets server read json

// test route to see if server is up, api

// req=coming in, res = going out
app.get('/api/health', (req, res) => {
  res.json({ status: 'ok' });
});

// NEW - test route, checks if server can talk to the db
app.get('/api/db-test', async (req, res) => {
  try {
    const result = await pool.query('SELECT COUNT(*) FROM books');
    res.json({ books: Number(result.rows[0].count) });
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'db connection failed' });
  }
});

// use :PORT from .env or default to :5000

// starts server

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => console.log(`server running on port ${PORT}`)); 