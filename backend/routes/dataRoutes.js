const express = require('express');
const router = express.Router();
const { createAllTable } = require('../controllers/databaseController');

// Route pour créer toutes les tables et ajouter des données
router.post('/create-tables', createAllTable);

module.exports = router;
