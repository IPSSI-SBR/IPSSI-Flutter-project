const sequelize = require('../config/database');
const User = require('../models/User');
const Category = require('../models/Category');
const Loisir = require('../models/Loisir');
const Rating = require('../models/Rating');

exports.createAllTable = async (req, res) => {
    try {
        // Synchroniser les modèles et créer les tables
        await sequelize.sync({ force: true });
        console.log('Tables créées avec succès.');

        // Ajouter des données initiales
        await initiateModels();
        res.status(200).json({
            message: 'Toutes les tables sont créées et les données initiales sont ajoutées avec succès.',
        });
    } catch (error) {
        console.error('Erreur lors de la création des tables ou de l\'ajout des données initiales:', error);
        res.status(500).json({
            error: 'Erreur lors de la création des tables ou de l\'ajout des données initiales.',
        });
    }
}

const initiateModels = async () => {
    try {
        // Créer des utilisateurs
        const [user1] = await User.findOrCreate({
            where: { email: 'alice@example.com' },
            defaults: {
                username: 'Alice',
                email: 'alice@example.com',
                password: 'password'
            },
        });
        const [user2] = await User.findOrCreate({
            where: { email: 'bob@example.com' },
            defaults: {
                username: 'Bob',
                email: 'bob@example.com',
                password: 'password'
            },
        });
        const [user3] = await User.findOrCreate({
            where: { email: 'carol@example.com' },
            defaults: {
                username: 'Carol',
                email: 'carol@example.com',
                password: 'password'
            },
        });

        // Créer des catégories
        const [literature] = await Category.findOrCreate({
            where: { name: 'Littérature' },
            defaults: { name: 'Littérature' },
        });
        const [filmsAndSeries] = await Category.findOrCreate({
            where: { name: 'Films et Séries' },
            defaults: { name: 'Films et Séries' },
        });
        const [music] = await Category.findOrCreate({
            where: { name: 'Musique' },
            defaults: { name: 'Musique' },
        });

        // Créer des loisirs
        await Loisir.findOrCreate({
            where: { title: 'Lire "Les Misérables"' },
            defaults: {
                title: 'Lire "Les Misérables"',
                description: 'Un roman de Victor Hugo sur la justice sociale.',
                date: new Date('2023-01-15'),
                rating: 4.7,
                votes: 120,
                user_id: user1.id,
                category_id: literature.id
            },
        });
        await Loisir.findOrCreate({
            where: { title: 'Regarder "Inception"' },
            defaults: {
                title: 'Regarder "Inception"',
                description: 'Un film de science-fiction réalisé par Christopher Nolan.',
                date: new Date('2023-02-10'),
                rating: 4.9,
                votes: 200,
                user_id: user2.id,
                category_id: filmsAndSeries.id
            },
        });
        await Loisir.findOrCreate({
            where: { title: 'Écouter "Thriller"' },
            defaults: {
                title: 'Écouter "Thriller"',
                description: 'Un album iconique de Michael Jackson.',
                date: new Date('2023-03-20'),
                rating: 4.8,
                votes: 150,
                user_id: user3.id,
                category_id: music.id
            },
        });

    } catch (error) {
        console.error('Erreur lors de l\'initiation des modèles :', error);
    }
}
