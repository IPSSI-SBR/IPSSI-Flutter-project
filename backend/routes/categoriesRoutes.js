const express = require('express')
const router = express.Router()
const Category = require('../models/Category')

//Obtenir toutes les catégories
router.get('/', async (req, res) => {
    try {
        const loisirs = await Category.findAll()
        res.send(loisirs)
    } catch (err) {
        res.status(500).send(err)
    }
})

module.exports = router
