const express = require('express')
const router = express.Router()
const Loisir = require('../models/Loisir')
const Rating = require('../models/Rating')

// Ajouter un loisir
router.post('/add', async (req, res) => {
    try {
        const loisir = await Loisir.create(req.body)
        res.status(201).send(loisir)
    } catch (err) {
        res.status(400).send(err)
    }
})

// Obtenir tous les loisirs avec filtrage et tri
router.get('/', async (req, res) => {
    const {category, sort, date} = req.query
    let where = {}
    if (category) where.category_id = category
    let order = []
    if (sort) order.push(['title', sort.toUpperCase()])
    if (date) order.push(['date', date.toUpperCase()])
    try {
        const loisirs = await Loisir.findAll({where, order})
        res.send(loisirs)
    } catch (err) {
        res.status(500).send(err)
    }
})

// Obtenir un loisir par ID
router.get('/:id', async (req, res) => {
    try {
        const loisir = await Loisir.findByPk(req.params.id)
        if (!loisir) return res.status(404).send()
        res.send(loisir)
    } catch (err) {
        res.status(500).send(err)
    }
})

// Mettre à jour un loisir par ID
router.put('/:id', async (req, res) => {
    try {
        const loisir = await Loisir.findByPk(req.params.id)
        if (!loisir) return res.status(404).send()
        await loisir.update(req.body)
        res.send(loisir)
    } catch (err) {
        res.status(400).send(err)
    }
})

// Supprimer un loisir par ID
router.delete('/:id', async (req, res) => {
    try {
        const loisir = await Loisir.findByPk(req.params.id)
        if (!loisir) return res.status(404).send()
        await loisir.destroy()
        res.send({message: 'Loisir supprimé'})
    } catch (err) {
        res.status(500).send(err)
    }
})

// Noter un loisir
router.post('/:id/rate', async (req, res) => {
    const {rating, user_id} = req.body
    try {
        const loisir = await Loisir.findByPk(req.params.id)
        if (!loisir) return res.status(404).send()

        await Rating.create({rating, loisir_id: req.params.id, user_id})

        loisir.rating =
            (loisir.rating * loisir.votes + rating) / (loisir.votes + 1)
        loisir.votes += 1
        await loisir.save()

        res.send(loisir)
    } catch (err) {
        res.status(400).send(err)
    }
})

module.exports = router
