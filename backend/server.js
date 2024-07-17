require('dotenv').config()
const express = require('express')
const bodyParser = require('body-parser')
const sequelize = require('./config/database')
const dataRoutes = require('./routes/dataRoutes')
const loisirsRouter = require('./routes/loisirs')

const app = express()
const port = 3000

// Middleware
app.use(bodyParser.json())

// Routes
app.use('/api/loisirs', loisirsRouter)
app.use('/api/data', dataRoutes)

app.get('/', (req, res) => {
    res.send("Bienvenue sur l'API Loisirs!")
})

// Synchronisation des modèles et démarrage du serveur
app.listen(port, async () => {
    try {
        await sequelize.authenticate()
        console.log('Connection has been established successfully.')
        await sequelize.sync() // Synchronise les modèles avec la base de données
        console.log('Database synchronized')
        console.log(`Server running on http://localhost:${port}`)
    } catch (error) {
        console.error('Unable to connect to the database:', error)
    }
})
