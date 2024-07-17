const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');
const Loisir = require('./Loisir');
const User = require('./User');

const Rating = sequelize.define('Rating', {
    rating: { type: DataTypes.INTEGER, allowNull: false },
    created_at: { type: DataTypes.DATE, defaultValue: DataTypes.NOW }
}, {
    timestamps: false
});

Rating.belongsTo(Loisir, { foreignKey: 'loisir_id' });
Rating.belongsTo(User, { foreignKey: 'user_id' });

module.exports = Rating;
