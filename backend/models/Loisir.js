const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');
const User = require('./User');
const Category = require('./Category');

const Loisir = sequelize.define('Loisir', {
    title: { type: DataTypes.STRING, allowNull: false },
    description: { type: DataTypes.TEXT },
    date: { type: DataTypes.DATE },
    rating: { type: DataTypes.FLOAT, defaultValue: 0 },
    votes: { type: DataTypes.INTEGER, defaultValue: 0 },
    created_at: { type: DataTypes.DATE, defaultValue: DataTypes.NOW }
}, {
    timestamps: false
});

Loisir.belongsTo(User, { foreignKey: 'user_id' });
Loisir.belongsTo(Category, { foreignKey: 'category_id' });

module.exports = Loisir;
